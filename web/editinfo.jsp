<%-- 
    Document   : editinfo
    Created on : Jan 7, 2024, 1:31:34 PM
    Author     : Nita
--%>

<%@page import="com.javatpoint.dao.InfoDao"%>  
<jsp:useBean id="u" class="com.javatpoint.bean.Info"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
int i=InfoDao.update(u);  
response.sendRedirect("viewinfo.jsp");  
%>
