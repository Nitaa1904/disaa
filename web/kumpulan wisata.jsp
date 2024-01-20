<%-- 
    Document   : kumpulan informasi
    Created on : Jan 5, 2024, 2:38:28 AM
    Author     : Nita
--%>
<%@page import="java.sql.*" %>
<%
/* koneksi database */
Connection koneksi = null;
Statement stmt1 = null;
ResultSet rs1 = null;
 
try {
Class.forName("com.mysql.jdbc.Driver");
koneksi = DriverManager.getConnection("jdbc:mysql://localhost:3306/disaa", "root", "");
stmt1 = koneksi.createStatement();
rs1 = stmt1.executeQuery("SELECT * FROM wisata");
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
    <title>Destinasii</title>
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

footer {
    background-color: #439A97;
    color: white;
    padding: 30px;
    display: flex;
    flex-direction: column;
    align-items: center;
    text-align: center;
}

.footer-content {
    display: flex;
    justify-content: space-between;
    align-items: flex-start;
}

.left-content {
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    justify-content: flex-start; /* Untuk membuat konten rata kiri */
}

.right-content {
    display: flex;
    justify-content: space-between;
    align-items: flex-start;
}
.logo-text {
    display: flex;
    align-items: center;
    margin-bottom: 10px; /* Atur margin bawah pada logo-text */
}
.logo-text img {
    width: 200px; /* Sesuaikan ukuran logo FlowBite */
    height: auto; /* Sesuaikan ukuran logo FlowBite */
    margin-bottom: 5px;
}
.left-content p {
    margin-top: -20px; /* Sesuaikan nilai negatif untuk mengubah posisi teks */
    
.company-logos {
    display: flex;
    align-items: center;
    justify-content: flex-start; /* Untuk membuat konten rata kiri */
}

.company-logos img {
    width: 100px; /* Sesuaikan ukuran logo media sosial */
    height: auto; /* Sesuaikan ukuran logo media sosial */
    margin-right: 10px; /* Atur margin kanan pada logo media sosial */
}
.about,
.destinations {
    margin-bottom: 20px;
}
.about,
.perusahaan {
    margin-bottom: 15px;
}

.about h3,
.destinations h3 {
    margin-bottom: 10px;
}

/* CSS untuk kotak acara di bawah tulisan "Lihat Detail" */
.event-box {
    margin-top: 30px; /* Atur margin atas agar terpisah dari tulisan "Lihat Detail" */
    display: flex;
    justify-content: space-between;
    align-items: flex-start;
}

.event-box span {
    border: 2px solid white;
    padding: 45px;
    border-radius: 10px;
    width: 354px;
    height: 463px;
    background-color: white;
    margin-bottom: 20px; /* Atur margin bawah untuk setiap kotak acara */
    flex: 1; /* Untuk agar kotak acara dapat menyesuaikan ukuran */
    box-sizing: border-box; /* Agar padding tidak menambah lebar kotak */
}

.event-box span img {
    width: 253px;
    height: 207px;
}

.event-box span b {
    display: block;
    margin-bottom: 10px;
}

.event-box span a {
    color: black; /* Ubah warna teks agar terlihat lebih jelas */
    text-decoration: none;
    font-weight: bold;
    display: block; /* Agar tautan terlihat lebih jelas */
    margin-top: 15px; /* Atur margin atas untuk tautan */
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
                    <a class="nav-link" href="index.jsp">Beranda <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                 <a class="nav-link" href="informasi.jsp">Informasi</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="kumpulan wisata.jsp">Destinasi</a>
                </li>
            </ul>
        </div>
    </nav>
        
        
        
  <!-- Destinasi Terkini -->
  <div class="container">
    <div class="row kelas-informasi-terkini mt-5">
        <div class="col-md-6 mt-5">
            <h2 class="mt-5">
                <span style="padding: 70px;">
                    <b class="" style="color: #439A97;">Destinasi</b>
                </span>
            </h2>
        </div>
        <div class="col-md-6 text-right mt-5">
            <h5 class="text-white text-end mt-5">
                <span style="color: #439A97;">
                    Dapatkan event terbaru dari pariwisata </br> jarak jauh dengan mudah
                </span>
            </h5>
        </div>
    </div>

    <div class="container">
     <a href="addwisataform.jsp" class="mb-4 mt-4" style="display: inline-block; padding: 10px 20px; 
        background-color: #439A97; color: #ffffff; text-decoration: none; text-align: center; 
        border-radius: 5px;">Tambah Destinasi</a>
     <a href="viewwisata.jsp" style="display: inline-block; padding: 10px 20px; background-color: #439A97; 
        color: #ffffff; text-decoration: none; text-align: center; border-radius: 5px;">Modifikasi Data</a><br/>
    </div>
    <div class="col-md-12 mt-4">
        <div class="col-md-12">
            <div class="aligned-text row mb-4">
                <%
                while (rs1.next()) {
                    String nama = rs1.getString("nama");
                    String tempat = rs1.getString("tempat");
                    String deskripsi = rs1.getString("deskripsi");
                    int id = rs1.getInt("id");
                %>
                <div class="card mb-5 ">
                    <div class="card-body" style="display: inline-block; border: 2px solid white; padding: 45px; 
                         border-radius: 10px; margin-right: 20px; width: 254px; background-color: white;">                               
                        <b><h4><% out.println(nama); %></h4></b>
                        <% out.println(tempat); %><br><br>
                        <% out.println(deskripsi); %><br><br>
                        <a href="lihatdetail-wisata.jsp?id=<%= rs1.getInt("id") %>" class="btn btn-info lihat-detail">Lihat Detail</a>
                    </div>
                </div>
                <%
                }
                %>
            </div>
        </div>
    </div>
    
    <br> 
    <br>      
</div>       
<p class="mt-5"></br></br>
    
    <footer>
    <div class="footer-content ">
        <div class="left-content">
            <div class="logo-text">
                <img src="logo.png" alt="FlowBite Logo">
            </div>
                <br><p>Jelajahi keajaiban destinasi menakjubkan dan mulailah petualangan yang belum pernah ada sebelumnya</p>
            <div class="company-logos">
                <a href="link_ke_halaman_WhatsApp"><img src="WhatsApp.png" alt="WhatsApp"></a>
                <a href="link_ke_halaman_Facebook"><img src="Facebook.png" alt="Facebook"></a>
                <a href="link_ke_halaman_Instagram"><img src="Instagram.png" alt="Instagram"></a>
                <a href="link_ke_halaman_Twitter"><img src="Twitter.png" alt="Twitter"></a>
                <a href="link_ke_halaman_Email"><img src="Email.png" alt="Email"></a>
            </div>
        </div>
        <div class="right-content">
            <div class="about">
                <p><b>TENTANG</b></p>
                <ul>
                    <li><a href="#">Tentang Kami</a></li>
                    <li><a href="#">Hubungi Kami</a></li>
                </ul>
            </div>
            <div class="about">
                <p><b>PERUSAHAAN</b></p>
                <ul>
                    <li><a href="#">Syarat Penggunaan</a></li>
                    <li><a href="#">Partnership</a></li>
                </ul>
            </div>    
            <div class="destinations">
                <p><b>JELAJAH</b></p>
                <ul>
                    <li><a href="#">Banjarnegara</a></li>
                    <li><a href="#">Purbalingga</a></li>
                    <li><a href="#">Banyumas</a></li>
                    <li><a href="#">Cilacap</a></li>
                    <li><a href="#">Kebumen</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="bottom-content">
        <p>© 2023 Disa. All Rights Reserved.</p>
    </div>
</footer>

<script>
document.addEventListener('DOMContentLoaded', function() {
    var links = document.querySelectorAll('.lihat-detail');
    
    links.forEach(function(link) {
        link.addEventListener('click', function(event) {
            event.preventDefault();

            var infoId = link.getAttribute('data-info-id');
            
            // Redirect ke halaman detail menggunakan JSP/servlet
            window.location.href = 'lihatdetail-info?id=' + infoId;
        });
    });
});

                

        <!-- Your page content goes here -->
        
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    
        
    </body>
</html>
