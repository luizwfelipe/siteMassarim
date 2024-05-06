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
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.bean.UsuarioDTO;
import model.dao.UsuarioDAO;

/**
 *
 * @author Admin
 */
@WebServlet(name = "UsuarioController", urlPatterns = {"/cadastrar", "/cadastro", "/login", "/logar"})
public class UsuarioController extends HttpServlet {

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
        String url = request.getServletPath();
        if (url.equals("/cadastrar")) {
            String nextPage = "/WEB-INF/jsp/cadastro.jsp";
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
            dispatcher.forward(request, response);
        } else if (url.equals("/login")) {
            String nextPage = "/WEB-INF/jsp/login.jsp";
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
            dispatcher.forward(request, response);
        }
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
        String url = request.getServletPath();
        if (url.equals("/cadastrar")) {
            System.out.println("Está no dopost");
            UsuarioDTO user = new UsuarioDTO();
            user.setNome(request.getParameter("nome").equals("") ? "" : request.getParameter("nome"));
            user.setSenha(request.getParameter("senha"));
            user.setEmail(request.getParameter("email"));
            user.setCpf(request.getParameter("cpf"));
            user.setTelefone(request.getParameter("telefone"));
            user.setDataNascimento(Date.valueOf(request.getParameter("dataNascimento")));


            UsuarioDAO userCreate = new UsuarioDAO();
            userCreate.cadastrarUsuario(user);

            response.sendRedirect("./login");
        } else if (url.equals("/logar")) {
            
            UsuarioDTO user = new UsuarioDTO();
            user.setEmail(request.getParameter("email"));
            user.setSenha(request.getParameter("senha"));

            UsuarioDAO userLogin = new UsuarioDAO();
            user = userLogin.login(user);
            if (user.getIdUsuario() > 0) {
                if (user.getAdmin() == 1) {
                    response.sendRedirect("./cadastrar-produto");
                } else {
                    response.sendRedirect("./home");
                }
            } else {
                
                //mudar para uma notificação!!!
                request.setAttribute("erroMensagem", "Erro ao realizar Login");
                String nextPage = "/WEB-INF/jsp/problemaLogin.jsp";
                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
                dispatcher.forward(request, response);
            }

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