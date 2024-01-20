<%-- 
    Document   : deleteinfo
    Created on : Jan 7, 2024, 1:24:11 PM
    Author     : Nita
--%>

<%@page import="com.javatpoint.dao.InfoDao"%>  
<jsp:useBean id="u" class="com.javatpoint.bean.Info"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
InfoDao.delete(u);  
response.sendRedirect("viewinfo.jsp");  
%>
