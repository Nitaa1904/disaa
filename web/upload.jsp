<%-- 
    Document   : upload
    Created on : Jan 6, 2024, 12:17:47 PM
    Author     : Nita
--%>

<%@page import="java.sql.*" %>
<%@ page import="java.io.File" %>
<%@ page import="java.io.InputStream" %>
<%@ page import="java.io.OutputStream" %>
<%@ page import="java.io.FileOutputStream" %>


<%
    // Proses upload file
    String uploadDir = "uploads/"; // Direktori untuk menyimpan file
    String uploadFile = uploadDir + new java.io.File(request.getPart("gambar").getSubmittedFileName()).getName();

    try (InputStream fileContent = request.getPart("gambar").getInputStream();
         FileOutputStream fileOutputStream = new FileOutputStream(new java.io.File(uploadFile))) {

        int read;
        final byte[] bytes = new byte[1024];
        while ((read = fileContent.read(bytes)) != -1) {
            fileOutputStream.write(bytes, 0, read);
        }
    }

    // File berhasil diunggah, sekarang simpan informasi ke database
    String nama = request.getParameter("nama");
    String tempat = request.getParameter("tempat");
    String alamat = request.getParameter("deskripsi");
    String deskripsi = request.getParameter("gambar");

    // Lakukan koneksi ke database
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/disaa", "root", "");

        // Query untuk menyimpan informasi ke database
        String query = "INSERT INTO destinasi (nama, tempat, deskripsi, gambar) VALUES (?, ?, ?, ?)";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, uploadFile);
            preparedStatement.setString(2, nama);
            preparedStatement.setString(3, tempat);
            preparedStatement.setString(4, deskripsi);

            int rowsAffected = preparedStatement.executeUpdate();

            if (rowsAffected > 0) {
                out.println("Informasi destinasi berhasil disimpan.");
            } else {
                out.println("Gagal menyimpan informasi destinasi.");
            }
        }

        connection.close();
    } catch (Exception e) {
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
    <title>Upload Destinasi</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <style>
    /* Gaya CSS dari tampilan login */
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

        .container {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 150vh;
            flex-direction: column;
        }

        .login-container {
            display: flex;
            align-items: center;
            width: 400px;
            background-color: #f9f9f9;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            flex-direction: column;
        }

        img {
            max-width: 100%;
            height: auto;
            margin-bottom: 20px;
        }

        .login-form {
            width: 100%;
        }

        label {
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="file"],
        input[type="submit"],
        textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        input[type="text"]:focus,
        input[type="file"]:focus,
        input[type="submit"]:focus,
        textarea:focus {
            outline: none;
            border-color: #6B6B6B;
        }

        input[type="submit"] {
            background-color: #439A97;
            color: white;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #357e76;
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
        
<div class="container form-container">
        <h2>Berbagi Destinasi</h2>
        <h1>Daftarkan Pariwisata yang belum ada</h1>
        <form action="" method="POST" enctype="multipart/form-data">
            <div class="form-group">
                <label for="gambar">Unggah Foto:</label>
                <input type="file" id="gambar" name="gambar" accept="image/*" required>
            </div>
            <div class="form-group">
                <label for="nama">Nama Wisata:</label>
                <input type="text" id="nama" name="nama" required>
            </div>
            <div class="form-group">
                <label for="tempat">Alamat:</label>
                <textarea id="tempat" name="tempat" rows="3" required></textarea>
            </div>
            <div class="form-group">
                <label for="deskripsi">Deskripsi:</label>
                <textarea id="deskripsi" name="deskripsi" rows="5" required></textarea>
            </div>
            <input type="submit" value="Daftarkan Wisata">
        </form>
    </div>
        <!-- Your page content goes here -->
        
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    </body>
</html>
