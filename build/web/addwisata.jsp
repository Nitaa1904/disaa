<%-- 
    Document   : addwisata
    Created on : Jan 7, 2024, 1:21:47 PM
    Author     : Nita
--%>

<%@page import="com.javatpoint.dao.WisataDao"%>  
<jsp:useBean id="u" class="com.javatpoint.bean.Wisata"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  
int i=WisataDao.save(u);  
if(i>0){  
response.sendRedirect("addwisata-success.jsp");  
}else{  
response.sendRedirect("addwisata-error.jsp");  
}  
%>
