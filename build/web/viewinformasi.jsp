<%-- 
    Document   : viewinformasi
    Created on : Jan 7, 2024, 12:07:49 PM
    Author     : Nita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>  
  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>View Users</title>  
</head>  
<body>  
  
<%@page import="com.javatpoint.dao.InformasiDAO,com.javatpoint.bean.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<h1>Informasi List</h1>  
  
<%  
List<Informasi> list=InformasiDAO.getAllRecords();  
request.setAttribute("list",list);  
%>  
  
<table border="1" width="90%">  
<tr><th>Id</th><th>Nama</th><th>Tanggal</th><th>Tempat</th>  
<th>Deskripsi</th><th>Gambar</th><th>Edit</th><th>Delete</th></tr>  
<c:forEach items="${list}" var="u">  
<tr><td>${u.getId()}</td><td>${u.getNama()}</td><td>${u.getTanggal()}</td>  
<td>${u.getTempat()}</td><td>${u.getDeskripsi()}</td><td>${u.getGambar()}</td>  
<td><a href="editform-informasi.jsp?id=${u.getId()}">Edit</a></td>  
<td><a href="deleteinformasi.jsp?id=${u.getId()}">Delete</a></td></tr>  
</c:forEach>  
</table>  
<br/><a href="addinformasiform.jsp">Add New Informasi</a>  
  
</body>  
</html>
