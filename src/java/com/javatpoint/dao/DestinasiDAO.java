/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.javatpoint.dao;

/**
 *
 * @author Nita
 */

import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;  
import com.javatpoint.bean.Destinasi;


public class DestinasiDAO {
public static Connection getConnection(){  
        Connection con=null;  
        try{  
            Class.forName("com.mysql.jdbc.Driver");  
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/disaa","root","");  
        }catch(Exception e){System.out.println(e);}  
        return con;  
    }  
    public static int save(Destinasi u){  
        int status=0;  
        try{  
            Connection con=getConnection();  
            PreparedStatement ps=con.prepareStatement(  
        "insert into destinasi (nama,tempat,deskripsi) values(?,?,?,)");  
            ps.setString(1,u.getNama());  
            ps.setString(2,u.getTempat());  
            ps.setString(3,u.getDeskripsi());  
//            ps.setBytes(4, u.getGambar());  
            status=ps.executeUpdate();  
        }catch(Exception e){System.out.println(e);}  
        return status;  
    }  
    public static int update(Destinasi u){  
        int status=0;  
        try{  
            Connection con=getConnection();  
            PreparedStatement ps=con.prepareStatement(  
    "update destinasi set nama=?,tempat=?,deskripsi=?where id=?");  
            ps.setString(1,u.getNama());  
            ps.setString(2,u.getTempat());  
            ps.setString(3,u.getDeskripsi());  
            ps.setBytes(4, u.getGambar()); 
            ps.setInt(5,u.getId());  
            status=ps.executeUpdate();  
        }catch(Exception e){System.out.println(e);}  
        return status;  
    }  
    public static int delete(Destinasi u){  
        int status=0;  
        try{  
            Connection con=getConnection();  
            PreparedStatement ps=con.prepareStatement("delete from destinasi where id=?");  
            ps.setInt(1,u.getId());  
            status=ps.executeUpdate();  
        }catch(Exception e){System.out.println(e);}  

        return status;  
    }  
    public static List<Destinasi> getAllRecords(){  
        List<Destinasi> list=new ArrayList<Destinasi>();  

        try{  
            Connection con=getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from destinasi");  
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                Destinasi u=new Destinasi();  
                u.setId(rs.getInt("id"));  
                u.setNama(rs.getString("nama"));   
                u.setTempat(rs.getString("tempat"));  
                u.setDeskripsi(rs.getString("deskripsi"));  
                u.setGambar(rs.getBytes("gambar"));  
                list.add(u);  
            }  
        }catch(Exception e){System.out.println(e);}  
        return list;  
    }  
    public static Destinasi getRecordById(int id){  
        Destinasi u=null;  
        try{  
            Connection con=getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from destinasi where id=?");  
            ps.setInt(1,id);  
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                u=new Destinasi();  
                u.setId(rs.getInt("id"));  
                u.setNama(rs.getString("nama"));    
                u.setTempat(rs.getString("tempat"));  
                u.setDeskripsi(rs.getString("deskripsi"));  
//                u.setGambar(rs.getBytes("gambar"));  
            }  
        }catch(Exception e){System.out.println(e);}  
        return u;  
    }  
}
