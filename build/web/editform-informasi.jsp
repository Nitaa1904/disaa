<%-- 
    Document   : editinformasi
    Created on : Jan 7, 2024, 11:58:00 AM
    Author     : Nita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>Edit Form</title>  
</head>  
<body>  
<%@page import="com.javatpoint.dao.UserDao,com.javatpoint.bean.Informasi"%>  
  
<%  
String id=request.getParameter("id");  
Informasi u=InformasiDAO.getRecordById(Integer.parseInt(id));  
%>  
  
<h1>Edit Form</h1>  
<form action="editinformasi.jsp" method="post">  
<input type="hidden" name="id" value="<%=u.getId() %>"/>  
<table>  
<tr><td>Nama : </td><td>  
<input type="text" name="nama" value="<%= u.getNama()%>"/></td></tr>  
<tr><td>Tanggal:</td><td>  
<input type="text" name="tanggal" value="<%= u.getTanggal()%>"/></td></tr>  
<tr><td>Tempat : </td><td>  
<input type="text" name="tempat" value="<%= u.getTempat()%>"/></td></tr>  
<tr><td>Deskripsi : </td><td>  
<input type="text" name="deskripsi" value="<%= u.getDeskripsi()%>"/></td></tr>   
<tr>
<td>Image:</td>
<td><input type="file" name="gambar" accept="image/*" required/></td>
</tr>
        
<tr><td colspan="2"><input type="submit" value="Edit User"/></td></tr>  
</table>  
</form>  
  
</body>  
</html>