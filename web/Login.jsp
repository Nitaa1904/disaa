<%-- 
    Document   : Login
    Created on : Jan 5, 2024, 2:16:29 PM
    Author     : Nita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Login</title>
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
    }

    label {
      margin-bottom: 5px;
    }

    input[type="email"],
    input[type="password"] {
      width: 100%;
      padding: 10px;
      margin-bottom: 15px;
      border-radius: 5px;
      border: 1px solid #ccc;
    }

    input[type="email"]:focus,
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
            <div class="col-lg-4">
                <img src="img-login-register.png" alt="Gambar Anda">
            </div>
            <div class="col-lg-6">
              <h3>Nikmati Petualangan Wisata Pelosok</h3>
              <form id="loginForm" class="login-form">
                <label for="email">Email Anda:</label>
                <input type="email" id="email" name="email">

                <label for="password">Kata Sandi Anda:</label>
                <input type="password" id="password" name="password">

                <button type="submit">Kirim</button>
              </form>
              <p>Belum punya akun? <a href="register.html" id="registerLink">Daftar</a></p>
            </div>
      </div>
  </div>

  <script>
    document.getElementById("loginForm").addEventListener("submit", function(event) {
      event.preventDefault(); // prevent default form submission

      // Get input values
      var email = document.getElementById("email").value;
      var password = document.getElementById("password").value;

      // Check if email and password match the criteria
      if (email === "wisata@pelosok.com" && password === "petualangan") {
        alert("Login berhasil!");
        // Redirect or perform other actions upon successful login
      } else {
        alert("Email atau kata sandi salah. Silakan coba lagi.");
      }
    });

    document.getElementById("registerLink").addEventListener("click", function(event) {
      event.preventDefault(); // prevent default link behavior

      // Redirect to registration page
      window.location.href = "registrasi.jsp";
    });
  </script>
</body>
</html>
