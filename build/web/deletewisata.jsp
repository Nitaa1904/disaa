<%-- 
    Document   : deleteinfo
    Created on : Jan 7, 2024, 1:24:11 PM
    Author     : Nita
--%>

<%@page import="com.javatpoint.dao.WisataDao"%>  
<jsp:useBean id="u" class="com.javatpoint.bean.Wisata"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
WisataDao.delete(u);  
response.sendRedirect("viewwisata.jsp");  
%>
