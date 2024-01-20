<%-- 
    Document   : berbagi
    Created on : Jan 6, 2024, 12:13:02 PM
    Author     : Nita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Berbagi Destinasi</title>
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
.center-text {
            text-align: center;
        }
     /* CSS yang diperlukan untuk menengahkan tulisan di dalam kotak */
.col-md-12 {
    text-align: center;
}

/* Untuk memastikan tulisan berada di tengah vertikal kotak */
.col-md-12 p {
    display: flex;
    justify-content: center;
    align-items: center;
    margin: 0; /* Menghilangkan margin agar tepi teks bertepatan dengan tepi kotak */
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
        <br>
        <br>
        <br>
        <br>
<div class="row kelas-berbagi-destinasi margin-teks">
     <div class="col-md-6 d-flex justify-content-center align-items-center">
            <img src="sharedestinasi.png" style="width: 639px; height: 556px;">
        </div>
     <div class="col-md-6 d-flex flex-column justify-content-center">
            <h3 class="display">Berbagi Destinasi</h3>
            <h2><b>Daftarkan pariwisata yang belum ada</b></h2>
            <div class="d-flex flex-column">
            <div class="d-flex align-items-center mb-3">
                <img src="upload.png" alt="Unggah Destinasi" width="61" height="49" class="mr-2">
                <div>
                    <h3>Unggah Destinasi</h3>
                    <p>Mengunggah gambar dan informasi terkait destinasi</p>
                </div>
            </div>
            <div class="d-flex align-items-center">
                <img src="sharelokasi.png" alt="Lokasi Destinasi" width="61" height="49" class="mr-2">
                <div>
                    <h3>Lokasi Destinasi</h3>
                    <p>Membagikan lokasi tempat pariwisata yang belum terdaftar</p>
                </div>
            </div>
        </div>
    </div>
    <!-- Bagian terkait Daftarkan Wisata -->
<div class="col-md-12 d-flex justify-content-center align-items-center">
    <p style="border: 2px solid white; padding: 15px; border-radius: 10px; width: 302px; height: 50px; background-color: #439A97;">
        <a href="addinfoform.jsp" style="text-decoration: none; color: white;">Daftarkan Wisata</a>
    </p>
</div>

        </div>
       <br>
        <br>
        <br> 
        <!-- Your page content goes here -->
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
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    </body>
</html>
