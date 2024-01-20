<%-- 
    Document   : addinfoform
    Created on : Jan 7, 2024, 1:23:34 PM
    Author     : Nita
--%>

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
    
</br></br></br></br>

    <div class="container">
        <jsp:include page="infoform.html"></jsp:include> 
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
