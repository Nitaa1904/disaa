<%-- 
    Document   : addinfo
    Created on : Jan 7, 2024, 1:21:47 PM
    Author     : Nita
--%>

<%@page import="com.javatpoint.dao.InfoDao"%>  
<jsp:useBean id="u" class="com.javatpoint.bean.Info"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  
int i=InfoDao.save(u);  
if(i>0){  
response.sendRedirect("addinfo-success.jsp");  
}else{  
response.sendRedirect("addinfo-error.jsp");  
}  
%>
