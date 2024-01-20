<%-- 
    Document   : editinformasi
    Created on : Jan 7, 2024, 12:06:06 PM
    Author     : Nita
--%>

<%@page import="com.javatpoint.dao.InformasiDAO"%>  
<jsp:useBean id="u" class="com.javatpoint.bean.Informasi"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
int i=InformasiDAO.update(u);  
response.sendRedirect("viewusers.jsp");  
%>
