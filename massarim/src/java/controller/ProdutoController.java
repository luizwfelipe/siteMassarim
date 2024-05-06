/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import model.bean.CategoriaDTO;
import model.bean.ProdutoDTO;
import model.dao.CategoriaDAO;
import model.dao.ProdutoDAO;

/**
 *
 * @author Admin
 */
@WebServlet(name = "ProdutoController", urlPatterns = {"/produtos","/cadastrar-produto","/home","/cadastrarProduto","/buscar-produtos"})
@MultipartConfig
public class ProdutoController extends HttpServlet {

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
        ProdutoDAO produtosDAO = new ProdutoDAO();
        CategoriaDAO categoriasDAO = new CategoriaDAO();
        List<CategoriaDTO> categorias = categoriasDAO.read();
        request.setAttribute("categorias", categorias);
        String url = request.getServletPath();
        if(url.equals("/cadastrar-produto")) {
            String nextPage = "/WEB-INF/jsp/cadastroProdutos.jsp";
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
            dispatcher.forward(request, response);
        } else if(url.equals("/home")){
            List<ProdutoDTO> produto = produtosDAO.readProdutos();
            request.setAttribute("produto", produto);
            String nextPage = "/WEB-INF/jsp/index.jsp";
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
            dispatcher.forward(request, response);
        
        } else if (url.equals("/buscar-produtos")) {
            String busca = request.getParameter("busca") != null ? request.getParameter("busca") : "";
                if (busca.equals("")) {
                    String categoria = request.getParameter("cat");
                    List<ProdutoDTO> produto = produtosDAO.buscaCategoria(Integer.parseInt(categoria));
                    request.setAttribute("produto", produto);
                } else {
                    busca = "%" + busca + "%";
                    List<ProdutoDTO> produto = produtosDAO.buscaProdutos(busca);
                    request.setAttribute("produto", produto);
                }

            String nextPage = "/WEB-INF/jsp/produtos.jsp";
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
    if (url.equals("/cadastrarProduto")) {
        ProdutoDTO newProduto = new ProdutoDTO();
        newProduto.setNome(request.getParameter("nome"));
        
        newProduto.setDescricao(request.getParameter("descricao"));
        newProduto.setFkIdCategoria(Integer.parseInt(request.getParameter("fkIdCategoria")));
        newProduto.setPreco(Float.parseFloat(request.getParameter("preco")));
        Part filePart = request.getPart("imagem");
        InputStream istream = filePart.getInputStream();
        ByteArrayOutputStream byteA = new ByteArrayOutputStream();
        byte[] img = new byte[4096];
        int byteRead = -1;
        while((byteRead = istream.read(img)) != -1 ) {
            byteA.write(img, 0, byteRead);
        }
        byte[] imgBytes = byteA.toByteArray();
        newProduto.setImagem(imgBytes);
        ProdutoDAO produtosD = new ProdutoDAO();
        produtosD.create(newProduto);
        response.sendRedirect("./home");
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