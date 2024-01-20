<%-- 
    Document   : ulasan
    Created on : Jan 5, 2024, 11:06:39 AM
    Author     : Nita
--%>
<%@page import="java.sql.*" %>
<%
/* koneksi database */
Connection koneksi = null;
Statement stmt = null;
ResultSet rs = null;
 
try {
Class.forName("com.mysql.jdbc.Driver");
koneksi = DriverManager.getConnection("jdbc:mysql://localhost:3306/disaa", "root", "");
stmt = koneksi.createStatement();
rs = stmt.executeQuery("SELECT * FROM ulasan");

}catch(Exception e){
e.printStackTrace();
}
%>
 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ulasan Pengguna</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <style>
    /* CSS untuk navigasi (navbar) */
         .navbar-custom {
            background-color: #439A97; /* Menetapkan warna latar belakang navbar */
            color: white; /* Menetapkan warna teks navbar */
        }
        /* CSS untuk meratakan teks sejajar dalam satu baris */
        .aligned-text {
            display: flex;
            justify-content: space-between;
            text-align: center;
        }
        .navbar {
    position: fixed; /* Menjadikan navbar tetap di bagian atas */
    width: 100%; /* Menentukan lebar navbar */
    z-index: 1000; /* Menentukan urutan tumpukan, memastikan navbar ada di atas elemen lain */
    top: 0; /* Menempatkan navbar di bagian atas layar */
}


</style>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #439A97;">
        <a class="navbar-brand" href="#">
            <img src="logo.png" alt="Logo Digital Pariwisata" width="114" height="54" class="d-inline-block align-text-top">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="index.html">Beranda <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
        <a class="nav-link" href="Informasi.html">Informasi</a>
    </li>
                <li class="nav-item">
                    <a class="nav-link" href="destinasi.html">Destinasi</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="berbagi.html">Berbagi</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Login.html">Mulai</a>
                </li>
            </ul>
        </div>
    </nav>
            <div class="col-md-12">
                <div class="aligned-text">
<%
while (rs.next()){
String nama = rs.getString("nama");
String tempat = rs.getString("ulasan");
String desk = rs.getString("tempat");
%>


                    <p>
                        <div class="event-box">
                        <span style="display: inline-block; border: 2px solid white; padding: 45px; border-radius: 10px; margin-right: 20px; width: 354px; height: 463px; background-color: white;">
                        
                        <br><br><b><% out.println(nama); %></b><br><br>
                        <% out.println(tempat); %><br><br>
                        

                        </span>
                            </div>
<%
    }
%>
                   
                   
                </div>
                
            </div>
        <!-- Your page content goes here -->
        
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    </body>
</html>

