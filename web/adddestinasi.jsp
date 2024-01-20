<%-- 
    Document   : adddestinasi
    Created on : Jan 6, 2024, 9:15:00 PM
    Author     : Nita
--%>

<%@ page import="com.javatpoint.dao.DestinasiDAO" %>
<jsp:useBean id="u" class="com.javatpoint.bean.Destinasi"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
    int i = DestinasiDAO.save(u);
    if (i > 0) {
        response.sendRedirect("adddestinasi-success.jsp");
    } else {
        response.sendRedirect("adddestinasi-error.jsp");
    }
%>
