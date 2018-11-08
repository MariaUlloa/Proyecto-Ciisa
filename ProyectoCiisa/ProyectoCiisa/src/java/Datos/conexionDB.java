/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.LinkedList;

/**
 *
 * @author marco
 */
public class conexionDB {
    
    String db = "bd_proyecto_ciisa";
    String url = "jdbc:mysql://localhost/"+db;
    String user = "root";
    String pass = "";
    PreparedStatement ps = null;
    ResultSet rs = null;


   public Connection conectar(){

       Connection conexion = null;

       try{
           Class.forName("org.gjt.mm.mysql.Driver");
           conexion = (Connection) DriverManager.getConnection(this.url, this.user, this.pass);
           System.out.println("Conectado");
       }catch(Exception ex){
           System.out.println("ERROR: "+ex.getMessage());
       }

       return conexion;
   }
   
   public LinkedList<producto> consultaProducto(String conSQL){
       LinkedList <producto> lProducto = new LinkedList<producto>();
       try{
           ps = conectar().prepareStatement(conSQL);
           rs = ps.executeQuery();
           
           while(rs.next()){
               producto prod = new producto();
               prod.setPrdc_codigo(rs.getString("prdc_codigo"));
               prod.setPrdc_nombre(rs.getString("prdc_nombre"));
               prod.setPrdc_cantidad(rs.getInt("prdc_cantidad"));
               prod.setPrdc_precio(rs.getInt("prdc_precio"));
               prod.setFmls_nombre(rs.getString("fmls_nombre"));
               
               lProducto.add(prod);
           }
           ps.close();
           rs.close();
       }catch(Exception ex){
           System.out.println("ERROR"+ex.getMessage());
       }
       return lProducto;
   }
   
   /*
    * Metodo para realizar las pruebas de conexion a la DB
    * Cuando descomentes este metodo tienes que ejecutar este arhivo .java
    * Y te imprimira el mensaje de error o de exito
   
   public static void main(String args[]){
       conexionDB c = new conexionDB();
       System.out.println(""+c.conectar());
       
   }*/
    
}
