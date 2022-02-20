<%-- 
    Document   : Tableseance
    Created on : 4 avr. 2020, 18:58:58
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
    <style>
    

    </style>
    <body>
        <table>
        <tr>
            <th>Num Séance</th>
            <th>Date Réalisation</th>
            <th>Heure Début</th>
            <th>Heure Fin</th>
            <th>Durée</th>
            <th>Contenue</th>
            
        </tr>
    <%
            
            String module=request.getParameter("Module");
            Object t=session.getAttribute("matricule");
            Object o=session.getAttribute("fonction");
            ResultSet ms=cnx.executeSelect("select s.numseance,to_char(s.DATEREALisation,'dd/mm/yyyy'),s.nummodule,s.HEURDEBUT,s.HEUREFIN,s.CODEGRP,(s.HEUREFIN-s.HEURDEBUT) as duree,m.intitule from seance s,module m,moduleformateurgroupe g,personnel p where s.nummodule=m.nummodule and g.matricul=p.matricule and p.matricule='"+t+"' and s.nummodule="+module+" group by s.nummodule,s.DATEREALisation,s.numseance,s.HEURDEBUT,s.HEUREFIN,s.CODEGRP,m.MasseHoraire,m.intitule order by s.DATEREALisation desc");
            while(ms.next()){
    %>
    <tr>
    <td><%=ms.getString(1)%></td>
    <td><%=ms.getString(2)%></td>
    <td><%=ms.getString(4)%> H</td>
    <td><%=ms.getString(5)%> H</td>
    <td><%=ms.getString(7)%> H</td>
    <td><%=ms.getString(8)%></td>
    </tr><%}%>   
        
        
    </table>
    </body>
</html>
