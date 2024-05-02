/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
import model.bean.UsuarioDTO;
import model.dao.UsuarioDAO;

/**
 *
 * @author Senai
 */
public class CadastroController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String nextPage = "/WEB-INF/jsp/cadastro.jsp";
        
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
        dispatcher.forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("doPost acionado");
        String nextPage = "/WEB-INF/jsp/index.jsp";
        String nome = request.getParameter("nome");
        String senha = request.getParameter("senha");
        String email = request.getParameter("email");
        String cpf = request.getParameter("cpf");
        String telefone = request.getParameter("telefone");
                UsuarioDAO dao = new UsuarioDAO();
                UsuarioDTO usuario = new UsuarioDTO();
                usuario.setNome(nome);
                usuario.setSenha(senha);
                usuario.setEmail(email);
                usuario.setCpf(cpf);
                usuario.setTelefone(telefone);
                usuario.setDataNascimento(Date.valueOf(request.getParameter("dataNascimento")));
                
                try {
                    if (usuario.getNome().trim().equals("") || usuario.getSenha().trim().equals("") ||usuario.getEmail().trim().equals("") || usuario.getCpf().trim().equals("") || usuario.getTelefone().trim().equals("")) {
                        JOptionPane.showMessageDialog(null, "Algo está incorreto!");
                    }else if(dao.existe(usuario.getEmail())) {
                        request.setAttribute("errorMessage","email já está em uso");
                        System.out.println("email já está em uso");
                        nextPage ="/WEB-INF/jsp/cadastro.jsp";
                        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
                        dispatcher.forward(request, response);
                    } else {
                        dao.create(usuario);
                        nextPage ="/WEB-INF/jsp/index.jsp";
                        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
                        dispatcher.forward(request, response);
                        request.setAttribute("successMessage", "cadastro realizado com sucesso");
                    }
                } catch (Exception e) {
                    request.setAttribute("errorMessage", "erro ao cadastrar usuário: " + e.getMessage());
                    System.out.println("erro ao cadastrar usuário: " + e.getMessage());
                    nextPage ="/WEB-INF/jsp/cadastro.jsp";
                    RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
                    dispatcher.forward(request, response);
                }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
