<%-- 
    Document   : Decon
    Created on : 23 mars 2020, 11:40:03
    Author     : pc expert
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>JSP Page</title>
    </head>
    <body>
        

     <%
         session.invalidate();
         response.sendRedirect("Pconnection.jsp");
      %>
    </body>
</html>
