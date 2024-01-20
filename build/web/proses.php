<?php
$servername = "localhost"; // Lokasi server database, bisa juga menggunakan alamat IP jika perlu
$username = "Nita@DESKTOP-GK4HEDK"; // Ganti dengan username MySQL Anda
$password = "nita1904"; // Ganti dengan password MySQL Anda
$dbname = "disaa"; // Ganti dengan nama database Anda yang ingin diakses

// Membuat koneksi
$conn = new mysqli($servername, $username, $password, $dbname);

// Memeriksa koneksi
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}

// Penanganan login
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST["email"];
    $password = $_POST["password"];

    // Melakukan query untuk memeriksa kecocokan data login di dalam tabel pengguna (contoh dengan tabel 'users')
    $sql = "SELECT * FROM users WHERE email='$email' AND password='$password'";
    $result = $conn->query($sql);

    if ($result->num_rows == 1) {
        echo "<p>Login berhasil! Redirect ke halaman lain...</p>";
        // Tambahkan logika untuk mengarahkan pengguna ke halaman setelah login berhasil
        // Misalnya, menggunakan header("Location: halaman_berikutnya.php");
    } else {
        echo "<p>Login gagal! Silakan coba lagi.</p>";
    }
}

// Menutup koneksi
$conn->close();
?>
