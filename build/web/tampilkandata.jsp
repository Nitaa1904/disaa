<%--
Document : tampil_akun
Created on : Dec 6, 2016, 2:54:19 PM
Author : kutuonline
--%>
 
<%@page import="java.sql.*" %>
<%
/* koneksi database */
Connection koneksi = null;
Statement stmt = null;
ResultSet rs = null;
 
try {
Class.forName("com.mysql.jdbc.Driver");
koneksi = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_kasir", "root", "");
stmt = koneksi.createStatement();
rs = stmt.executeQuery("SELECT * FROM produk ORDER BY idproduk");

}catch(Exception e){
e.printStackTrace();
}
%>
 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Daftar Akun</title>
 
<style>
table {
border-collapse: collapse;
width: 680px;
}
 
th, td {
text-align: left;
padding: 8px;
}
 
tr:nth-child(even){background-color: #f2f2f2}
 
th {
background-color: #4CAF50;
color: white;
}
</style>
</head>
<body>
<h1>Daftar Rekening [Akun]</h1>
<table border="1">
<tr>
<th>Kode *</th>
<th>Nama Akun</th>
<th>Jenis Akun</th>
<th>Saldo Normal</th>
<th>Aksi</th>
</tr>
 
<%
while (rs.next()){
out.println("<tr>"
+ "<td>" + rs.getString("kodeProduk") + "</td>"
+ "<td>" + rs.getString("namaProduk") + "</td>"
+ "<td>" + rs.getString("kodeProduk") + "</td>"
+ "<td>" + rs.getString("kodeProduk") + "</td>"
+ "<td><a href=edit_akun.jsp?kode="
+ rs.getString("kodeProduk") + ">Edit</a> | "
+ "<a href=akunServlet?aksi=delete&kode="
+ rs.getString("kodeProduk") + ">Hapus</a></td>"
+ "</tr>");
 
}
%>
 
</table>
</body>
</html>