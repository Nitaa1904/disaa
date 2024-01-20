<%-- 
    Document   : registrasi
    Created on : Jan 5, 2024, 9:46:03 PM
    Author     : Nita
--%>

<%@ page import="java.sql.*" %>
<%
Connection koneksi = null;
PreparedStatement pstmt = null;

try {
    // Melakukan koneksi ke database
    Class.forName("com.mysql.jdbc.Driver");
    koneksi = DriverManager.getConnection("jdbc:mysql://localhost:3306/disaa", "root", "");

    // Mengambil data dari formulir pendaftaran
    String name = request.getParameter("nama");
    String email = request.getParameter("alamat_email");
    String phone = request.getParameter("ponsel");
    String password = request.getParameter("password");

    // Memasukkan data pengguna baru ke dalam tabel pengguna
    String query = "INSERT INTO pengguna (nama, alamat_email, ponsel, password) VALUES (?, ?, ?, ?)";
    pstmt = koneksi.prepareStatement(query);
    pstmt.setString(1, nama);
    pstmt.setString(2, alamat_email);
    pstmt.setString(3, ponsel);
    pstmt.setString(4, password);

    int rowsAffected = pstmt.executeUpdate();

    if (rowsAffected > 0) {
        out.println("Registrasi berhasil!");
    } else {
        out.println("Registrasi gagal. Silakan coba lagi.");
    }
} catch (Exception e) {
    e.printStackTrace();
} finally {
    // Menutup semua sumber daya (Connection, PreparedStatement, ResultSet)
    try {
        if (pstmt != null) {
            pstmt.close();
        }
        if (koneksi != null) {
            koneksi.close();
        }
    } catch (SQLException se) {
        se.printStackTrace();
    }
}
%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Register</title>
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
      width: 450px;
      height: 450px;
      margin-bottom: 20px;
    }

    .login-form {
      width: 100%;
      display: flex;
      flex-direction: column;
    }

    label {
      margin-bottom: 5px;
    }

    input[type="text"],
    input[type="email"],
    input[type="tel"],
    input[type="password"] {
      width: 100%;
      padding: 10px;
      margin-bottom: 15px;
      border-radius: 5px;
      border: 1px solid #ccc;
    }

    input[type="text"]:focus,
    input[type="email"]:focus,
    input[type="tel"]:focus,
    input[type="password"]:focus {
      outline: none;
      border-color: #6B6B6B;
    }

    button {
      padding: 10px 15px;
      border: none;
      border-radius: 5px;
      background-color: #439A97; /* Warna latar belakang tombol Kirim */
      color: white;
      cursor: pointer;
    }

    button:hover {
      background-color: #357e76; /* Warna latar belakang tombol Kirim saat dihover */
    }
  </style>
</head>
<body>

  <div class="container">
    <div class="row">
      <h3>Nikmati Petualangan Wisata Pelosok</h3>
      <img src="img-login-register.png" alt="Gambar Anda">
      <form id="loginForm" class="login-form">
        <label for="name">Nama:</label>
        <input type="text" id="name" name="name">

        <label for="email">Alamat Email:</label>
        <input type="email" id="email" name="email">

        <label for="phone">Tidak. Ponsel:</label>
        <input type="tel" id="phone" name="phone">

        <label for="password">Kata Sandi:</label>
        <input type="password" id="password" name="password">

        <button type="submit">Kirim</button>
      </form>
      <p>Sudah punya akun? <a href="Login.jsp" id="registerLink">Gabung</a></p>
    </div>
  </div>

  <script>
  document.getElementById("registerForm").addEventListener("submit", function(event) {
    event.preventDefault(); // prevent default form submission

    // Get input values
    var name = document.getElementById("nama").value;
    var email = document.getElementById("alamat_email").value;
    var phone = document.getElementById("ponsel").value;
    var password = document.getElementById("password").value;

    // Minimal validation
    if (name.trim() === "" || email.trim() === "" || phone.trim() === "" || password.trim() === "") {
      alert("Isi semua kolom dengan benar.");
      return;
    }

    // Additional validation can be added here

    // Send registration data to server (simulated)
    var registrationData = {
      nama: nama,
      alamat_email: alamat_email,
      ponsel: ponsel,
      password: password
    };

    // Simulated server response (you will replace this with actual server-side code)
    alert("Registrasi berhasil! Data yang dikirim: " + JSON.stringify(registrationData));
  });

  document.getElementById("loginLink").addEventListener("click", function(event) {
    event.preventDefault(); // prevent default link behavior

    // Redirect to login page
    window.location.href = "Login.jsp";
  });
</script>
</body>
</html>
