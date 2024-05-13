/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.bean.PedidoDTO;

/**
 *
 * @author Senai
 */
public class PedidoDAO {
    public List<PedidoDTO> readPedido() {
        List<PedidoDTO> listaPedido = new ArrayList<>();
        Connection conexao = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            conexao = Conexao.conectar();
            stmt = conexao.prepareStatement("SELECT * FROM pedido");
            rs = stmt.executeQuery();
            while (rs.next()) {
                PedidoDTO pedidos = new PedidoDTO();
                pedidos.setIdPedido(rs.getInt("idProduto"));
                pedidos.setNome(rs.getString("nome"));
                pedidos.setFkIdCategoria(rs.getInt("fkIdCategoria"));
                pedidos.setDescricao(rs.getString("descricao"));
                pedidos.setPreco(rs.getFloat("preco"));
                pedidos.setEstoque(rs.getInt("estoque"));
                pedidos.setImagem(rs.getString("imagem"));
                listaPedido.add(pedidos);
            }
            rs.close();
            stmt.close();
            conexao.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return listaPedido;
    }
}
