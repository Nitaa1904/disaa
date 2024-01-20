<%-- 
    Document   : editwisata
    Created on : Jan 8, 2024, 1:27:10 AM
    Author     : Nita
--%>

<%@page import="com.javatpoint.dao.WisataDao"%>  
<jsp:useBean id="u" class="com.javatpoint.bean.Wisata"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
int i=WisataDao.update(u);  
response.sendRedirect("viewwisata.jsp");  
%>
