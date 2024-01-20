<%-- 
    Document   : deleteinformasi
    Created on : Jan 7, 2024, 11:54:20 AM
    Author     : Nita
--%>

<%@page import="com.javatpoint.dao.InformasiDAO"%>  
<jsp:useBean id="u" class="com.javatpoint.bean.Informasi"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
InformasiDAO.delete(u);  
response.sendRedirect("viewinformasi.jsp");  
%>