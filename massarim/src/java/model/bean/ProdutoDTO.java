/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.bean;

/**
 *
 * @author Senai
 */
public class ProdutoDTO {
    private int idProduto;
    private String nome;
    private int fkIdCategoria;
    private String descricao;
    private float preco;
    private int estoque;
    private byte[] imagem;

    public ProdutoDTO() {
    }

    public ProdutoDTO(int idProduto, String nome, int fkIdCategoria, String descricao, float preco, int estoque, byte[] imagem) {
        this.idProduto = idProduto;
        this.nome = nome;
        this.fkIdCategoria = fkIdCategoria;
        this.descricao = descricao;
        this.preco = preco;
        this.estoque = estoque;
        this.imagem = imagem;
    }

    public int getIdProduto() {
        return idProduto;
    }

    public void setIdProduto(int idProduto) {
        this.idProduto = idProduto;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getFkIdCategoria() {
        return fkIdCategoria;
    }

    public void setFkIdCategoria(int fkIdCategoria) {
        this.fkIdCategoria = fkIdCategoria;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public float getPreco() {
        return preco;
    }

    public void setPreco(float preco) {
        this.preco = preco;
    }

    public int getEstoque() {
        return estoque;
    }

    public void setEstoque(int estoque) {
        this.estoque = estoque;
    }

    public byte[] getImagem() {
        return imagem;
    }

    public void setImagem(byte[] imagem) {
        this.imagem = imagem;
    }

    
}
