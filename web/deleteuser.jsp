<%-- 
    Document   : deleteuser
    Created on : Jan 6, 2024, 5:48:20 PM
    Author     : Nita
--%>

<%@page import="com.javatpoint.dao.UserDao"%>  
<jsp:useBean id="u" class="com.javatpoint.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
UserDao.delete(u);  
response.sendRedirect("viewusers.jsp");  
%>
