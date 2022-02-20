<%-- 
    Document   : Menu
    Created on : 12 avr. 2020, 13:38:13
    Author     : pc expert
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        
    </head>
    <style>
       
    *{
      padding: 0;
      margin: 0;
      list-style: none;
      text-decoration: none;
    }
    body{
      font-family: "montserrat",sans-serif;
    }
    nav{
      height: 60px;
      background: rgba(0,34,76,0.9);
    }
    .navbar-brand{
        margin: 0 40px;
        padding: 5px 0;
        font-size: 20px;
        text-transform: uppercase;
        position: absolute;
        top:15px;
        color: #fff;
    }
    nav ul{
      float: right;
      margin-right: 25px;
    }
    nav ul li{
      display: inline-block;
      line-height: 60px;
      margin: 0 15px;
    }
    nav ul li a{
      position: relative;
      padding: 5px 0;
      color: white;
      font-size: 15px;
      text-transform: uppercase;
    }
    nav ul li a:before{
      position: absolute;
      content: '';
      bottom: 0;
      left: 0;
      width: 100%;
      height: 3px;
      background: white;
      transform: scaleX(0);
      transform-origin: right;
      transition: transform .4s linear;
    }
    nav ul li a:hover:before{
      transform: scaleX(1);
      transform-origin: left;
    }
    .fas fa-user-circle{
      size: 20px;
    }
    
    </style>
    <body>
        <%
            Object n=session.getAttribute("nom");
            Object p=session.getAttribute("prenom");
               if(n!=null){%>
    
        <nav>
            <b> <span class="navbar-brand" >Espace Formateur</span> </b>
          <ul>
              <li><a href="Page Acceuil.jsp" id="a1"><i class="fas fa-home"></i>&nbsp;Acceuil</a></li>
               <li><a href="Acceuil.jsp" id="a1"><i class="fas fa-layer-group"></i>&nbsp;Groupe</a></li>   
              <li>
            <a href="Decon.jsp" id="a1"><i class="fas fa-user-circle"></i>&nbsp;<b><i><%=n%>&nbsp;&nbsp;<%=p%></i></b></a>
            </li>
        </ul>
      </nav>
         <%}else{
                request.getRequestDispatcher("Pconnection.jsp").forward(request, response);
            }%>

    </body>
</html>
