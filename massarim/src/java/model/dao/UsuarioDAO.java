/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import conexao.Conexao;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;
import model.bean.UsuarioDTO;

/**
 *
 * @author Senai
 */
public class UsuarioDAO {
     public List<UsuarioDTO> readUsuarios() {
        List<UsuarioDTO> listaUsuarios = new ArrayList<>();
        Connection conexao = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            conexao = Conexao.conectar();
            stmt = conexao.prepareStatement("SELECT idUsuario, nome, senha, email, cpf, telefone, dataNascimento, admin FROM usuario");
            rs = stmt.executeQuery();
            while (rs.next()) {
                UsuarioDTO usuario = new UsuarioDTO();
                usuario.setIdUsuario(rs.getInt("idUsuario"));
                usuario.setNome(rs.getString("nome"));
                usuario.setSenha(rs.getString("senha"));
                usuario.setEmail(rs.getString("email"));
                usuario.setCpf(rs.getString("cpf"));
                usuario.setTelefone(rs.getString("telefone"));
                usuario.setDataNascimento(rs.getDate("dataNascimento"));
                usuario.setAdmin(rs.getInt("admin"));
                listaUsuarios.add(usuario);
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
        return listaUsuarios;
    }
    
    public void create(UsuarioDTO usuario) {
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            stmt = conexao.prepareStatement("INSERT INTO usuario (nome, senha, email, cpf, telefone, dataNascimento, admin) VALUES (?, ?, ?, ?, ?, ?, 1)");
            stmt.setString(1, usuario.getNome());
            stmt.setString(2, usuario.getSenha());
            stmt.setString(3, usuario.getEmail());
            stmt.setString(4, usuario.getCpf());
            stmt.setString(5, usuario.getTelefone());
            stmt.setDate(6, usuario.getDataNascimento());
            stmt.executeUpdate();
            stmt.close();
            conexao.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public UsuarioDTO login(UsuarioDTO user) {
        UsuarioDTO loginUser = new UsuarioDTO();
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;
            
            stmt = conexao.prepareStatement("SELECT idUsuario, admin FROM usuario WHERE email = ? AND senha = ?");
            stmt.setString(1, user.getEmail());
            stmt.setString(2, user.getSenha());
            rs = stmt.executeQuery();
            
            if(rs.next()) {
                loginUser.setIdUsuario(rs.getInt("idUsuario"));
                loginUser.setEmail(rs.getString("email"));
                loginUser.setSenha(rs.getString("senha"));
            }
            
            rs.close();
            stmt.close();
            conexao.close();
        } catch (SQLException e) {
            e.printStackTrace();
            loginUser.setIdUsuario(0);
            loginUser.setEmail("");
            loginUser.setSenha("");
        }
        return loginUser;
    }

    
    public void update(UsuarioDTO u) {
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;

            stmt = conexao.prepareStatement("UPDATE usuario SET nome = ?, login = ?, senha = ?, telefone = ? WHERE idUsuario = ? ");

            stmt.setString(1, u.getNome());
            stmt.setString(2, u.getSenha());
            stmt.setString(3, u.getEmail());
            stmt.setString(4, u.getCpf());
            stmt.setString(5, u.getTelefone());
            
            stmt.executeUpdate();
            JOptionPane.showMessageDialog(null, "informações atualizadas com sucesso!");

            stmt.close();
            conexao.close();
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
    public void delete(int idProduto) {
    try {
        Connection conexao = Conexao.conectar();
        PreparedStatement stmt = conexao.prepareStatement("DELETE FROM usuario WHERE idUsuario = ?");
        stmt.setInt(1, idProduto);
        stmt.executeUpdate();
        
        JOptionPane.showMessageDialog(null, "Conta deletada");
    } catch (SQLException e) {
        e.printStackTrace();
    }
    }
    
    public boolean existe(String email) throws SQLException {
    Connection conexao = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;
    boolean existe = false;
   
    try {
        conexao = Conexao.conectar();
        stmt = conexao.prepareStatement("SELECT * FROM usuario WHERE email = ?");
        stmt.setString(1, email);
        rs = stmt.executeQuery();
        if (rs.next()) {
            int count = rs.getInt(1);
            existe = true;
        }
        rs.close();
        stmt.close();
        conexao.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }
   
    return existe;
}
}

