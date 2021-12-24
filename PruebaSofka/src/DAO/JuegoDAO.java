/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Conexion.Conexion;
import POJO.CategoriasPOJO;
import POJO.PreguntasPOJO;
import POJO.RespuestasPOJO;
import POJO.UsuariosPOJO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author JEAR
 */
public class JuegoDAO {
      public static Connection conn;
    public ArrayList<PreguntasPOJO> listaPreguntas(int nivel) throws Exception {
        ArrayList<PreguntasPOJO> listaPreguntas = null;
         Conexion co= new Conexion();
        conn=co.conectar();
        try{
            
            PreparedStatement st = conn.prepareStatement("SELECT * FROM preguntas WHERE id_categoria = "+nivel);
            listaPreguntas = new ArrayList();
            ResultSet rs = st.executeQuery();
            while (rs.next()){
                PreguntasPOJO pregunta = new PreguntasPOJO();
                pregunta.setId(rs.getInt("id"));
                pregunta.setPregunta(rs.getString("pregunta"));
                pregunta.setId_categoria(rs.getInt("id_categoria"));
                listaPreguntas.add(pregunta);
            }
            rs.close();
            st.close();
        }catch(Exception e){
            throw e;
        }finally{
           conn.close();
        }            
        return listaPreguntas;
    }
    
    public ArrayList<CategoriasPOJO> listaCategorias() throws Exception {
        ArrayList<CategoriasPOJO> listaCategorias = null;
         Conexion co= new Conexion();
        conn=co.conectar();
        try{
            
            PreparedStatement st = conn.prepareStatement("SELECT * FROM categorias");
            listaCategorias = new ArrayList();
            ResultSet rs = st.executeQuery();
            while (rs.next()){
                CategoriasPOJO categoria = new CategoriasPOJO();
                categoria.setId(rs.getInt("id"));
                categoria.setCategoria(rs.getString("categoria"));
                categoria.setNivel(rs.getString("dificultad"));
                listaCategorias.add(categoria);
            }
            rs.close();
            st.close();
        }catch(Exception e){
            throw e;
        }finally{
           conn.close();
        }            
        return listaCategorias;
    }
    
     public ArrayList<RespuestasPOJO> listaRespuestas(int pregunta) throws Exception {
        ArrayList<RespuestasPOJO> listaRespuestas = null;
        Conexion co= new Conexion();
        conn=co.conectar();
        try{         
            PreparedStatement st = conn.prepareStatement("SELECT * FROM respuestas WHERE id_pregunta = "+pregunta);
            listaRespuestas = new ArrayList();
            ResultSet rs = st.executeQuery();
            while (rs.next()){
                RespuestasPOJO respuesta = new RespuestasPOJO();
                respuesta.setRespuesta(rs.getString("respuesta"));
                respuesta.setValor(rs.getInt("valor"));
                respuesta.setId_pregunta(rs.getInt("id_pregunta"));
                listaRespuestas.add(respuesta);
            }
            rs.close();
            st.close();
        }catch(Exception e){
            throw e;
        }finally{
            conn.close();
        }            
        return listaRespuestas;
    }
     
      public void historico(UsuariosPOJO usuario) throws Exception {
          Conexion co= new Conexion();
        conn=co.conectar();
        try{
            PreparedStatement st = conn.prepareStatement("INSERT INTO usuarios (nombre, "
                    + "puntaje, estado, nivel) VALUES (?,?,?,?)");
            st.setString(1, usuario.getNombre());
            st.setInt(2, usuario.getPuntaje());
            st.setString(3, usuario.getEstado());
            st.setInt(4, usuario.getNivel());
            st.executeUpdate();
        }catch(Exception ex){
            throw ex; 
        }finally{
           conn.close();
        }
    }
}
