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
import com.javatpoint.bean.Informasi;

public class InformasiDAO {
    public static Connection getConnection(){  
        Connection con=null;  
        try{  
            Class.forName("com.mysql.jdbc.Driver");  
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/disaa","root","");  
        }catch(Exception e){System.out.println(e);}  
        return con;  
    }  
    public static int save(Informasi u){  
        int status=0;  
        try{  
            Connection con=getConnection();  
            PreparedStatement ps=con.prepareStatement(  
    "insert into informasi (nama,tanggal,tempat,deskripsi) values(?,?,?,?)");  
            ps.setString(1,u.getNama());  
            ps.setString(2,u.getTanggal());  
            ps.setString(3,u.getTempat());  
            ps.setString(4,u.getDeskripsi()); 
            status=ps.executeUpdate();  
        }catch(Exception e){System.out.println(e);}  
        return status;  
    }  
    public static int update(Informasi u){  
        int status=0;  
        try{  
            Connection con=getConnection();  
            PreparedStatement ps=con.prepareStatement(  
    "update informasi set nama=?,tanggal=?,tempat=?,deskripsi=? where id=?");  
            ps.setString(1,u.getNama());  
            ps.setString(2,u.getTanggal());  
            ps.setString(3,u.getTempat());  
            ps.setString(4,u.getDeskripsi());  
            ps.setInt(6,u.getId());  
            status=ps.executeUpdate();  
        }catch(Exception e){System.out.println(e);}  
        return status;  
    }  
    public static int delete(Informasi u){  
        int status=0;  
        try{  
            Connection con=getConnection();  
            PreparedStatement ps=con.prepareStatement("delete from informasi where id=?");  
            ps.setInt(1,u.getId());  
            status=ps.executeUpdate();  
        }catch(Exception e){System.out.println(e);}  

        return status;  
    }  
    public static List<Informasi> getAllRecords(){  
        List<Informasi> list=new ArrayList<Informasi>();  

        try{  
            Connection con=getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from informasi");  
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                Informasi u=new Informasi();  
                u.setId(rs.getInt("id"));  
                u.setNama(rs.getString("nama"));  
                u.setTanggal(rs.getString("tanggal"));  
                u.setTempat(rs.getString("tempat"));  
                u.setDeskripsi(rs.getString("deskripsi"));  
 
                list.add(u);  
            }  
        }catch(Exception e){System.out.println(e);}  
        return list;  
    }  
    public static Informasi getRecordById(int id){  
        Informasi u=null;  
        try{  
            Connection con=getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from informasi where id=?");  
            ps.setInt(1,id);  
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                u=new Informasi();  
                u.setId(rs.getInt("id"));  
                u.setNama(rs.getString("nama"));  
                u.setTanggal(rs.getString("tanggal"));  
                u.setTempat(rs.getString("tempat"));  
                u.setDeskripsi(rs.getString("deskripsi"));  
 
            }  
        }catch(Exception e){System.out.println(e);}  
        return u;  
    }  
}
