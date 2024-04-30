package model.dao;

import conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;
import model.bean.ProdutoDTO;

public class ProdutoDAO {
    public List<ProdutoDTO> readProdutos() {
        List<ProdutoDTO> listaProduto = new ArrayList<>();
        Connection conexao = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            conexao = Conexao.conectar();
            stmt = conexao.prepareStatement("SELECT idProduto, nome, categoria, descricao, preco, estoque FROM produto");
            rs = stmt.executeQuery();
            while (rs.next()) {
                ProdutoDTO produtos = new ProdutoDTO();
                produtos.setIdProduto(rs.getInt("idProduto"));
                produtos.setNome(rs.getString("nome"));
                produtos.setCategoria(rs.getString("categoria"));
                produtos.setDescricao(rs.getString("descricao"));
                produtos.setPreco(rs.getFloat("preco"));
                produtos.setEstoque(rs.getInt("estoque"));
                listaProduto.add(produtos);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conexao != null) conexao.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        return listaProduto;
    }
    
    public void create(ProdutoDTO p) {

        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            stmt = conexao.prepareStatement("INSERT INTO produto (nome, categoria, descricao, preco, estoque) VALUES (?, ?, ? ,? ,?)");
            stmt.setString(1, p.getNome());
            stmt.setString(2, p.getCategoria());
            stmt.setString(3, p.getDescricao());
            stmt.setFloat(4, p.getPreco());
            stmt.setInt(5, p.getEstoque());
            
            
            stmt.executeUpdate();

            stmt.close();
            conexao.close();
            
            JOptionPane.showMessageDialog(null, "Produto criado com sucesso!");
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public void delete(int idProduto) {
    try {
        Connection conexao = Conexao.conectar();
        PreparedStatement stmt = conexao.prepareStatement("DELETE FROM produto WHERE idProduto = ?");
        stmt.setInt(1, idProduto);
        stmt.executeUpdate();
        stmt.close();
        conexao.close();
        JOptionPane.showMessageDialog(null, "Deletado com sucesso!");
    } catch (SQLException e) {
        e.printStackTrace();
    }
}
    
    public void update(ProdutoDTO p) {
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;

            stmt = conexao.prepareStatement("UPDATE produto SET nome = ?, descricao = ?, preco = ?, estoque = ?, categoria = ? WHERE idProduto = ? ");

            stmt.setString(1, p.getNome());
            stmt.setString(2, p.getCategoria());
            stmt.setString(3, p.getDescricao());
            stmt.setFloat(4, p.getPreco());
            stmt.setInt(5, p.getEstoque());
            
            stmt.setInt(6, p.getIdProduto());
            
            stmt.executeUpdate();
            JOptionPane.showMessageDialog(null, "Informações atualizadas com sucesso!");

            stmt.close();
            conexao.close();

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    public int consultarEstoque(int idProduto) {
        Connection conexao = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        int estoque = 0;

        try {
            conexao = Conexao.conectar();
            stmt = conexao.prepareStatement("SELECT estoque FROM produto WHERE idProduto = ?");
            stmt.setInt(1, idProduto);
            rs = stmt.executeQuery();
            if (rs.next()) {
                estoque = rs.getInt("estoque");
            }
        } catch (SQLException ex) {
            System.err.println("Erro na consulta de estoque " + ex);
        } finally {
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conexao != null) conexao.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        return estoque;
    }

 
   public void diminuirEstoque(int idProduto, int quantidadeVendida) {
        Connection conexao = null;
        PreparedStatement stmt = null;

        try {
            conexao = Conexao.conectar();
            stmt = conexao.prepareStatement("UPDATE produto SET estoque = estoque - ? WHERE idProduto = ?");
            stmt.setInt(1, quantidadeVendida);
            stmt.setInt(2, idProduto);
            stmt.executeUpdate();
            System.out.println("Estoque atualizado");
        } catch (SQLException ex) {
            System.err.println("Estoque com erro " + ex);
        } finally {
            try {
                if (stmt != null) stmt.close();
                if (conexao != null) conexao.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
    }
  
}



