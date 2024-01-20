<%-- 
    Document   : addinformasi
    Created on : Jan 7, 2024, 11:51:45 AM
    Author     : Nita
--%>

<%@page import="com.javatpoint.dao.InformasiDAO"%>  
<jsp:useBean id="u" class="com.javatpoint.bean.Informasi"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
  
<%  
int i=InformasiDAO.save(u);  
if(i>0){  
response.sendRedirect("addinformasi-success.jsp");  
}else{  
response.sendRedirect("addinformasi-error.jsp");  
}  
%>
