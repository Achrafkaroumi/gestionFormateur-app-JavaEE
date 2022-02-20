<%-- 
    Document   : Acceuil
    Created on : 22 mars 2020, 22:22:38
    Author     : pc expert
--%>

<%@page import="Connection.cnx"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css">
        <title>Acceuil</title>
    
         
    </head>
    <style>
        body{
            background-image: linear-gradient(rgba(0,34,76,0.9),#fff);
            height: 600px;
            background-repeat: no-repeat;
        }     


       
        .log{
            position: absolute;
            left: 550px;
            top: 28px;
            font-size:22px;
            font-family: "Times New Roman", Times, serif;
            color: #fff;
            transition: 1s;
        }
        .dec{
            transition: 1s;
            position: absolute;
            left: 1100px;
            top: 22px;
            color: #fff;
            padding: 8px;
            background: #006699;
            box-shadow: 0 0 10px #2196f3 , 0 0 80px #2196f3;
            border-radius: 15px;
            border: none;
            outline: none;
        }
        .dec:hover{
            background:#006699;
            opacity: 0.5;
            transition: 0.5s;
        }
        
section{
  min-height: 100vh;
   display: flex;
  flex-flow: row wrap;
position: absolute;
top: 100px;
justify-content: center;
  
}
.contact-info{  
  display: flex;
  position: relative;
  max-width: 1200px;
  padding: 0px 20px;
}


.card {
  border-radius: 20px;
  background: rgba(0,34,76,0.9);
  padding: 0 20px;
  margin: 35px;
  width: 150px;
  height: 200px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  color: #fff;
  cursor: pointer;
  transition: 0.5s ease;
  box-shadow: 5px 5px 15px rgba(0,34,76,0.9);
}

.card-icon{
  font-size: 30px;
  background: #006699;
  width: 60px;
  height: 60px;
  text-align: center;
  line-height: 60px !important;
  border-radius: 50%;
  transition: 0.3s linear;
}
 .card:hover .card-icon{
  background: none;
  color: #fff;
  transition: 1s;
  transform: scale(1.6);
}

.card p {
  margin-top: 20px;
  letter-spacing: 2px;
  border: 2px solid transparent;
  border-radius: 10px;
  padding:5px;
  box-shadow: 5px 5px 15px black;
}
a{
    color: #fff;
    text-decoration: none;
}

@media screen and (max-width:800px) {
    *{
        transition: 2s;
        
    }
    .haut{
        width: 100%;
    }
    img{
       position: absolute;
        left: 50px;
        top: 20px;
        width: 60px;
        height: 40px;
    }
    .log{
        position: absolute;
        left: 120px;
    }
    .dec{
        position: absolute;
        left: 330px;
    }
  section{
  flex-direction: column;
   
  }
  .contact-info{
    width: 100%;
    margin: -30px 60px;
  }

}


    </style>
    <body>
        <%@include file="Menu.jsp" %>
        <form action="#"method="post">
            <section>
                <%
          
            Object m=session.getAttribute("matricule");
            ResultSet rs=cnx.executeSelect("select g.codegrp from groupe g,personnel p,moduleformateurgroupe f where g.codegrp=f.codegrp and p.matricule=f.matricul and p.matricule='"+m+"' and p.fonction='Formateur' group by g.codegrp");
            while(rs.next()){
            %>
           <div class="contact-info">
               <div class="card">
        <i class="card-icon fas fa-laptop-code"></i>
        <p><a href="moduleEtat.jsp?code=<%=rs.getString(1)%>"><%=rs.getString(1)%></a></p>

      </div>
           </div> <%}%>
          </section>    
           </form>

    </body>
</html>
