<%-- 
    Document   : index
    Created on : Jan 4, 2024, 2:46:35 PM
    Author     : Nita
--%>

 
<%@page import="java.sql.*" %>
<%
    /* koneksi database */
    Connection koneksi = null;
    Statement stmt1 = null;
    ResultSet rs1 = null;
 
    Statement stmt2 = null;
    ResultSet rs2 = null;
try {
    Class.forName("com.mysql.jdbc.Driver");
    koneksi = DriverManager.getConnection("jdbc:mysql://localhost:3306/disaa", "root", "");
    
    stmt1 = koneksi.createStatement();
    rs1 = stmt1.executeQuery("SELECT * FROM wisata");
    
    stmt2 = koneksi.createStatement();
    rs2 = stmt2.executeQuery("SELECT * FROM info");
    
    
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
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DISA</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <style>
        /* Aturan untuk mengubah ukuran font h3 menjadi 30 */
        h1 {
        font-size: 60px;  
        }
        h2 {
        font-size: 35px;
        }
        h3 {
        font-size: 29px;
        }
        p {
        font-size: 20px;
        }
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
   

        /* CSS untuk meratakan teks secara horizontal di tengah halaman */
        .center-text {
            text-align: center;
            margin-top: 30px; /* Atur margin atas sesuai kebutuhan untuk menjaga jarak antara navbar dan teks */
        }
        .center-search {
             display: flex;
            justify-content: center;
            align-items: center;
            height: 10vh; /* Set tinggi agar terletak di tengah halaman */
        }
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

    /* Penambahan warna latar belakang sesuai kelas yang disebutkan */
.kelas-selamat-datang {
    position: relative;
    overflow: hidden;
    color: white; /* Menetapkan warna teks pada kelas 'kelas-selamat-datang' */
    padding: 150px; /* Atur ruang tambahan pada bagian dalam elemen 'kelas-selamat-datang' */

}

/* Gaya untuk latar belakang gambar */
.bg-image {
    position: absolute;
    top: 0;
    left: 30%; /* Mulai dari tepi kiri halaman */
    transform: translateX(-30%); /* Geser gambar ke kiri agar mulai dari tepi halaman */
    width: 100%; /* Menyebarkan gambar untuk mengisi keseluruhan lebar halaman */
    height: 150%;
    z-index: -1;
    background-image: url('bg-banner.png'); /* Ganti 'bg-banner.jpg' dengan nama file gambar yang ingin Anda gunakan sebagai latar belakang */
    background-size: cover;
    background-position: center;
    background-repeat: repeat;
}
    .kelas-fitur-teratas,
    .kelas-scan-qr,
    .kelas-ulasan,
    .kelas-berbagi-destinasi
    {
        background-color: #FFFFFF; /* Warna putih untuk kelas fitur teratas */
        padding: 50px;
    }

    .kelas-informasi-terkini,
    .kelas-populer-destinasi
    {
        background-color: #439A97; /* Warna #439A97 untuk kelas informasi terkini */
        padding: 50px;
    }
/* Penyesuaian untuk memberikan margin pada teks dan gambar */
.margin-gambar {
    margin-right: 70px; /* Menambahkan margin kanan pada gambar */
    margin-left: 70px; /* Menambahkan margin kiri pada gambar */
}

.margin-teks {
    margin-right: 70px; /* Menambahkan margin kanan pada teks */
    margin-left: 70px; /* Menambahkan margin kiri pada teks */
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
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #439A97;">
        <a class="navbar-brand" href="#">
            <img src="logo.png" alt="Logo Digital Pariwisata" width="114" height="54" class="d-inline-block align-text-top">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" 
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
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

    <!-- Your page content goes here -->
    <div class="row kelas-selamat-datang position-relative ">
    <div class="col-md-12 center-text margin-teks">
        <!-- Menerapkan kelas 'center-text' untuk meratakan teks di tengah halaman -->
        <h1><b>Selamat Datang di Pariwisata Kami</b></h1>
        <p>Jelajahi keajaiban destinasi menakjubkan kami dan<br>mulailah perjalanan penemuan dan 
            petualangan yang belum pernah ada sebelumnya</p>
    </div>
    <!-- Latar belakang gambar -->
    <div class="bg-image"></div>
        
        <!-- Search bar -->
        <div class="row center-search-container">
        <div class="col-md-12 d-flex justify-content-center align-items-center">
        </div>
    </div>
</div>
        <!-- Fitur Teratas -->
        <div class="row kelas-fitur-teratas margin-teks">
    <div class="col-md-12">
        <div class="center-text mb-4">
            <h5>Fitur teratas</h3>
            <h3 class="mt-4"><b>Nikmati petualangan pariwisata<br> terpencil epik ini!</b></h2>
        </div>
        <div class="center-text mt-6">
            <div class="row">
                <div class="col-md-4 text-center">
                    <img src="fiturinfo.png" alt="Informasi Kawasan Wisata" width="120" height="107">
                    <p class="mt-4">Dapatkan informasi kawasan </br> wisata</p>
                </div>
                <div class="col-md-4 text-center">
                    <img src="fiturlokasi.png" alt="Cari Lokasi Wisata" width="120" height="107">
                    <p class="mt-4">Dapatkan lokasi wisata di </br> daerah terpencil</p>
                </div>
                <div class="col-md-4 text-center">
                    <img src="fiturrute.png" alt="Dapatkan Rute Kawasan Wisata" width="120" height="107">
                    <p class="mt-4">Dapatkan event wisata</p>
                </div>
            </div>
        </div>
    </div>
</div>
 
        <div class="row kelas-berbagi-destinasi margin-teks">
                <div class="col-md-6 d-flex justify-content-center align-items-center">
                       <img src="sharedestinasi.png" style="width: 639px; height: 556px;">
                   </div>
                <div class="col-md-6 d-flex flex-column justify-content-center">
                       <h3 class="display">Berbagi Informasi</h3>
                       <h2><b>Daftarkan Informasi yang belum ada</b></h2>
                       <div class="d-flex flex-column">
                       <div class="d-flex align-items-center mb-3">
                           <img src="upload.png" alt="Unggah Destinasi" width="61" height="49" class="mr-2">
                           <div>
                               <h3>Unggah Informasi</h3>
                               <p>Mengunggah gambar dan informasi terkait destinasi</p>
                           </div>
                       </div>
                       <div class="d-flex align-items-center">
                           <img src="sharelokasi.png" alt="Lokasi Destinasi" width="61" height="49" class="mr-2">
                           <div>
                               <h3>Lokasi Informasi</h3>
                               <p>Membagikan Informasi yang belum terdaftar</p>
                           </div>
                       </div>
                   </div>
               </div>
               <!-- Bagian terkait Daftarkan Wisata -->
           <div class="col-md-12 d-flex justify-content-center align-items-center">
               <p style="border: 2px solid white; padding: 15px; border-radius: 10px; width: 302px; height: 50px; 
                  background-color: #439A97;">
                   <a href="addinfoform.jsp" style="text-decoration: none; color: white;">Daftarkan Wisata</a>
               </p>
           </div>

        </div>
       
        <!-- Informasi Terkini -->
 <div class="row kelas-informasi-terkini mt-5">
    <div class="col-md-6">
        <h2>
            <span style="padding: 70px;">
                <b class="text-white">Informasi Terkini</b>
            </span>
        </h2>
    </div>
    <div class="col-md-6 text-right">
        <p class="text-white text-end">
            <span>
                Dapatkan event terbaru dari pariwisata </br> jarak jauh dengan mudah
            </span>
        </p>
    </div>
    <div class="col-md-12 mt-5">
        <div class="col-md-12">
            <div class="aligned-text">
                <%
                int counter = 0; // Tambahkan variabel counter
                while (rs2.next() && counter < 4) { // Tambahkan kondisi counter < 4
                    String nama = rs2.getString("nama");
                    String tanggal = rs2.getString("tanggal");
                    String tempat = rs2.getString("tempat");
                    String deskripsi = rs2.getString("deskripsi");
                    int id = rs2.getInt("id");
                %>
                <p>
                    <div class="card">
                        <div class="card-body" style="display: inline-block; border: 2px 
                             solid white; padding: 45px; border-radius: 10px; margin-right: 20px; 
                             width: 254px; background-color: white;">
                            <b><h4><%= nama %></h4></b>
                            <%= tanggal %> </br></br>
                            <%= tempat %><br><br>
                            <a href="lihatdetail-info.jsp?id=<%= id %>" class="btn btn-info lihat-detail">Lihat Detail</a>
                        </div>
                    </div>
                </p>
                <%
                    counter++;
                }
                %>
            </div>
        </div>
    </div>
    <div class="text-center ml-5">
        </br></br> <a href="informasi.jsp" class="stretched-link text-white text-center">Lihat Detail</a>
        </div>
 </div> 
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
        <a href="addwisataform.jsp" style="text-decoration: none; color: white;">Daftarkan Wisata</a>
    </p>
</div>

        </div>

<!-- Informasi Terkini -->
        <div class="row kelas-informasi-terkini mt-5">
            <div class="col-md-6 ">
                <h2>
                <span style= "padding: 70px;">
                <b class="text-white">Destinasi Populer</b>
                </span>
            </div>
            <div class="col-md-6 text-right">
                <p class="text-white text-end">
                    <span>
                        Temukan tujuan yang menakjubkan di situs web pariwisata kami yang </br> 
                        memberdayakan, menginspirasi perjalanan Anda yang tak terlupakan.
                    </span></p>
            </div>
            <br>
            <br>
            
            <div class="col-md-12 mt-5">
    <div class="col-md-12">
        <div class="aligned-text">
            <%
            int list = 0; // Inisialisasi counter
            while (rs1.next() && list < 4) { // Tampilkan maksimal 4 entri
                String nama = rs1.getString("nama");
                String tempat = rs1.getString("tempat");
                String deskripsi = rs1.getString("deskripsi");
                int id = rs1.getInt("id");
            %>

            <p>
                <div class="card">
                    <div class="card-body" style="display: inline-block; border: 2px solid white; padding: 45px; border-radius: 10px; margin-right: 20px; width: 254px; background-color: white;">
                        <b><h4><%= nama %></h4></b>
                        <%= tempat %><br><br>
                        <a href="lihatdetail-wisata.jsp?id=<%= id %>" class="btn btn-info lihat-detail">Lihat Detail</a>
                    </div>
                </div>
            </p>
            <%
                list++; // Increment counter setiap kali entri ditampilkan
            }
            %>
        </div>
    </div>
</div>
<div class="center-text">
            <a href="kumpulan wisata.jsp" class="stretched-link text-white text-center">Lihat Detail</a>
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


    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

</body>
</html> 