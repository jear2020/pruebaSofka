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
public class PreguntasPOJO {
    private int id;
    private String pregunta;
    private int id_categoria;

    public PreguntasPOJO() {
    }

    public PreguntasPOJO(int id, String pregunta, int id_categoria) {
        this.id = id;
        this.pregunta = pregunta;
        this.id_categoria = id_categoria;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPregunta() {
        return pregunta;
    }

    public void setPregunta(String pregunta) {
        this.pregunta = pregunta;
    }

    public int getId_categoria() {
        return id_categoria;
    }

    public void setId_categoria(int id_categoria) {
        this.id_categoria = id_categoria;
    }

    

}
