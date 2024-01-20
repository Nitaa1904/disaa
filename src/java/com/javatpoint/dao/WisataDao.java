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
import com.javatpoint.bean.Wisata;

public class WisataDao {
     public static Connection getConnection(){  
        Connection con=null;  
        try{  
            Class.forName("com.mysql.jdbc.Driver");  
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/disaa","root","");  
        }catch(Exception e){System.out.println(e);}  
        return con;  
    }  
    public static int save(Wisata u){  
        int status=0;  
        try{  
            Connection con=getConnection();  
            PreparedStatement ps=con.prepareStatement(  
    "insert into wisata (nama,tempat,deskripsi) values(?,?,?)");  
            ps.setString(1,u.getNama());    
            ps.setString(2,u.getTempat());  
            ps.setString(3,u.getDeskripsi());
            status=ps.executeUpdate();  
        }catch(Exception e){System.out.println(e);}  
        return status;  
    }  
    public static int update(Wisata u){  
        int status=0;  
        try{  
            Connection con=getConnection();  
            PreparedStatement ps=con.prepareStatement(  
    "update wisata set nama=?,tempat=?,deskripsi=? where id=?");  
            ps.setString(1,u.getNama());    
            ps.setString(2,u.getTempat());  
            ps.setString(3,u.getDeskripsi());
            ps.setInt(4,u.getId());  
            status=ps.executeUpdate();  
        }catch(Exception e){System.out.println(e);}  
        return status;  
    }  
    public static int delete(Wisata u){  
        int status=0;  
        try{  
            Connection con=getConnection();  
            PreparedStatement ps=con.prepareStatement("delete from wisata where id=?");  
            ps.setInt(1,u.getId());  
            status=ps.executeUpdate();  
        }catch(Exception e){System.out.println(e);}  

        return status;  
    }  
    public static List<Wisata> getAllRecords(){  
        List<Wisata> list=new ArrayList<Wisata>();  

        try{  
            Connection con=getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from wisata");  
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                Wisata u=new Wisata();  
                u.setId(rs.getInt("id"));  
                u.setNama(rs.getString("nama"));   
                u.setTempat(rs.getString("tempat"));  
                u.setDeskripsi(rs.getString("deskripsi"));
                list.add(u);  
            }  
        }catch(Exception e){System.out.println(e);}  
        return list;  
    }  
    public static Wisata getRecordById(int id){  
        Wisata u=null;  
        try{  
            Connection con=getConnection();  
            PreparedStatement ps=con.prepareStatement("select * from wisata where id=?");  
            ps.setInt(1,id);  
            ResultSet rs=ps.executeQuery();  
            while(rs.next()){  
                u=new Wisata();  
                u.setId(rs.getInt("id"));  
                u.setNama(rs.getString("nama"));    
                u.setTempat(rs.getString("tempat"));
                u.setDeskripsi(rs.getString("deskripsi"));
            }  
        }catch(Exception e){System.out.println(e);}  
        return u;  
    } 
}
