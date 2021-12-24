/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package POJO;

/**
 *
 * @author JEAR
 */
public class CategoriasPOJO {
    private int id;
    private String categoria;
    private String nivel;

    public CategoriasPOJO() {
    }

    public CategoriasPOJO(int id, String categoria, String nivel) {
        this.id = id;
        this.categoria = categoria;
        this.nivel = nivel;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getNivel() {
        return nivel;
    }

    public void setNivel(String nivel) {
        this.nivel = nivel;
    }

    
    
}
