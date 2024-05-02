/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import static java.util.Date.parse;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
import model.bean.ProdutoDTO;
import model.bean.UsuarioDTO;
import model.dao.ProdutoDAO;
import model.dao.UsuarioDAO;

/**
 *
 * @author Senai
 */
public class CadastroProdutosController extends HttpServlet {

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
        String nextPage = "/WEB-INF/jsp/cadastroProdutos.jsp";
        
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
        processRequest(request, response);
        System.out.println("doPost acionado");
        String nextPage = "/WEB-INF/jsp/index.jsp";
        String nome = request.getParameter("nome");
        String categoria = request.getParameter("categoria");
        String descricao = request.getParameter("descricao");
        float preco = Float.parseFloat(request.getParameter("preco"));
        int estoque = Integer.parseInt(request.getParameter("estoque"));

                ProdutoDAO dao = new ProdutoDAO();
                ProdutoDTO produto = new ProdutoDTO();
                produto.setNome(nome);
                produto.setCategoria(categoria);
                produto.setDescricao(descricao);
                produto.setPreco(preco);
                produto.setEstoque(estoque);
                //usuario.setDataNascimento(dataNascimento);
                
                try {
                    if (produto.getNome().trim().equals("") || produto.getCategoria().trim().equals("") ||produto.getDescricao().trim().equals("") || produto.getPreco()==0 || produto.getEstoque()==0) {
                        JOptionPane.showMessageDialog(null, "Algo está incorreto!");
                    } else {
                        dao.create(produto);
                        nextPage ="/WEB-INF/jsp/index.jsp";
                        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
                        dispatcher.forward(request, response);
                        request.setAttribute("successMessage", "cadastro realizado com sucesso");
                    }
                } catch (Exception e) {
                    request.setAttribute("errorMessage", "erro ao cadastrar produto: " + e.getMessage());
                    System.out.println("erro ao cadastrar usuário: " + e.getMessage());
                    nextPage ="/WEB-INF/jsp/cadastroProdutos.jsp";
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
