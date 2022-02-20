<%-- 
    Document   : auhentification
    Created on : 22 mars 2020, 22:22:25
    Author     : pc expert
--%>

<%@page import="Connection.cnx"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String user=request.getParameter("user");
            String mdp=request.getParameter("pass");
   ResultSet rs=cnx.executeSelect("select * from personnel where matricule ='"+user+"' and mot_passe='"+mdp+"'");
            if(rs.next()){
                session.setAttribute("matricule",rs.getString(1));
                session.setAttribute("nom",rs.getString(2));
                session.setAttribute("prenom",rs.getString(3));
                session.setAttribute("fonction",rs.getString(5));
                request.getRequestDispatcher("Page Acceuil.jsp").forward(request, response);
            }
            else{
                request.setAttribute("erreur", "Information Invalide !");
                request.getRequestDispatcher("Pconnection.jsp").forward(request, response);
            }
        %>
    </body>
</html>
