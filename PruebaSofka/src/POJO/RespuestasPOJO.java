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
public class RespuestasPOJO {
    private String respuesta;
    private int valor;
    private int id_pregunta;

    public RespuestasPOJO() {
    }

    public RespuestasPOJO(String respuesta, int valor, int id_pregunta) {
        this.respuesta = respuesta;
        this.valor = valor;
        this.id_pregunta = id_pregunta;
    }

    public String getRespuesta() {
        return respuesta;
    }

    public void setRespuesta(String respuesta) {
        this.respuesta = respuesta;
    }

    public int getValor() {
        return valor;
    }

    public void setValor(int valor) {
        this.valor = valor;
    }

    public int getId_pregunta() {
        return id_pregunta;
    }

    public void setId_pregunta(int id_pregunta) {
        this.id_pregunta = id_pregunta;
    }
    
    
}
