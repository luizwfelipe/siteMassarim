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
public class PedidoDTO {
    private int idPedido;
    private String nome;
    private int fkIdCategoria;
    private int fkIdTamanho;
    private String descricao;
    private float preco;
    private int estoque;
    private String imagem;
    private int fkIdUsuario;

    public PedidoDTO() {
    }

    public PedidoDTO(int idPedido, String nome, int fkIdCategoria, int fkIdTamanho, String descricao, float preco, int estoque, String imagem, int fkIdUsuario) {
        this.idPedido = idPedido;
        this.nome = nome;
        this.fkIdCategoria = fkIdCategoria;
        this.fkIdTamanho = fkIdTamanho;
        this.descricao = descricao;
        this.preco = preco;
        this.estoque = estoque;
        this.imagem = imagem;
        this.fkIdUsuario = fkIdUsuario;
    }

    public int getIdPedido() {
        return idPedido;
    }

    public void setIdPedido(int idPedido) {
        this.idPedido = idPedido;
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

    public int getFkIdTamanho() {
        return fkIdTamanho;
    }

    public void setFkIdTamanho(int fkIdTamanho) {
        this.fkIdTamanho = fkIdTamanho;
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

    public String getImagem() {
        return imagem;
    }

    public void setImagem(String imagem) {
        this.imagem = imagem;
    }

    public int getFkIdUsuario() {
        return fkIdUsuario;
    }

    public void setFkIdUsuario(int fkIdUsuario) {
        this.fkIdUsuario = fkIdUsuario;
    }

    
}
