/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;
import configuracion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author dkred
 */
public class Pedidos {
    Conexion conexion=Conexion.Obtener_Conexion();
    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    private int id_pedido;
    private String nombre_cliente;
    private String producto;
    private int cantidad;
    public Pedidos() {
    }

    // Constructor con todos los atributos
    public Pedidos(String nombre_cliente, String producto, int cantidad) {
        
        this.nombre_cliente = nombre_cliente;
        this.producto = producto;
        this.cantidad = cantidad;
    }
    public int getId_pedido() {
        return id_pedido;
    }

    public void setId_pedido(int id_pedido) {
        this.id_pedido = id_pedido;
    }

    // Getter y Setter para nombre_cliente
    public String getNombre_cliente() {
        return nombre_cliente;
    }

    public void setNombre_cliente(String nombre_cliente) {
        this.nombre_cliente = nombre_cliente;
    }

    // Getter y Setter para producto
    public String getProducto() {
        return producto;
    }

    public void setProducto(String producto) {
        this.producto = producto;
    }

    // Getter y Setter para cantidad
    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }
    public boolean guardarPedido() {
     String sql = "INSERT INTO pedidos (nombre_cliente, producto, cantidad) VALUES (?, ?, ?)";
     Connection con = null;
     PreparedStatement ps = null;
     ResultSet rs = null;

     try {
         con = conexion.Iniciar_Conexion();
         ps = con.prepareStatement(sql);
         ps.setString(1, this.nombre_cliente);
         ps.setString(2, this.producto);
         ps.setInt(3, this.cantidad);

         int rowsAffected = ps.executeUpdate();

         if (rowsAffected > 0) {
             rs = ps.getGeneratedKeys();
             if (rs.next()) {
                 this.id_pedido = rs.getInt(1); // guarda el ID generado si quieres
                 return true;
             }
         }
         return false;

     } catch (Exception e) {
         e.printStackTrace();
         return false;
     } finally {
         try {
             if (rs != null) rs.close();
             if (ps != null) ps.close();
             if (con != null) con.close();
         } catch (Exception ex) {
             ex.printStackTrace();
         }
     }
    }
}
