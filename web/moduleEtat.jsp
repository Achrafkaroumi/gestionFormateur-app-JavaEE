<%-- 
    Document   : moduleEtat
    Created on : 1 avr. 2020, 14:55:39
    Author     : pc expert
--%>

<%@page import="java.sql.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Connection.cnx"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="jquery.min.js" type="text/javascript"></script>
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <title>Module</title>
    </head>
    <style>

section
{
         background-image: linear-gradient(rgba(0,34,76,0.9),#fff);
         height: 100%;
         background-repeat: no-repeat;
       	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 60vh;
	
}
.container
{       

        font-family: 'Roboto' , sans-serif;
	position: relative;
	width: 900px;
	display: flex;
	justify-content: space-around;
        
}


.container .card
{
	position: relative;
	width: 200px;
	background-image: linear-gradient(rgba(0,34,76,0.9),#fff);       
	display: flex;
	justify-content: center;
	align-items: center;
	height: 250px;
	border-radius: 15px;
	text-align: center;
	overflow: hidden;
	transition: 0.5s;
        opacity: 0.9;
        transform: translateY(-10px);
	box-shadow: 0 15px 35px rgba(0,0,0,.5);
}


.percent
{
	position: relative;
	width: 150px;
	height: 150px;
	border-radius: 50%;
	box-shadow: inset 0 0 50px #000;
	z-index: 1000;
}

.percent .number
{
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	border-radius: 50%;
}
.percent .number h2
{
	color: #fff;
	font-weight: 700;
	font-size: 40px;
	transition: 0.5s;
}
.card:hover .percent .number h2
{
	color: #fff;
	font-size: 42px;
}
.percent .number h2 span
{
	font-size: 24px;
	color: #fff;
	transition: 0.5s;
}
.card:hover .percent .number h2 span
{
	color: #fff;
}
.text
{
	position: relative;
	color: #fff;
        text-shadow:5px 5px 5px black;
	font-size: 13px;
        margin-top: 3px;
	text-transform: uppercase;
}
.card:hover .text
{
	color: #fff;
        transition: 1s;
        transform: scale(1.1);
        cursor: default;
}
svg
{
	position: relative;
	width: 150px;
	height: 150px;
	z-index: 1000;
}
svg circle
{
	width: 100%;
	height: 100%;
	fill: none;
	stroke: #191919;
	stroke-width: 10;
	stroke-linecap: round;
	transform: translate(5px,5px);
}
svg circle:nth-child(2)
{
	stroke-dasharray: 440;
	stroke-dashoffset: 440;
}
input[type="button"]{
    border:1px solid white;
    border-radius: 10px;
    padding: 6px;
    background: #fff;
    color: black;
    font-family: 'Roboto' , sans-serif;
   
     
}
input[type="button"]:hover{
background:rgba(0,34,76,0.9); 
color: #fff;
}

    table {
    width:100%;
    position: absolute;
    left: 0px;
    top: 370px;
}
table, th, td {
    
    border: 1px solid gray;
    border-collapse: collapse;
}
th{
    background:rgba(0,34,76,0.9);
 opacity: 0.8;
 color: #fff;
}
td{
    color: #1b1b1b;
}
th, td {
    text-align: center;
    padding: 4px;

}        

@media screen and (max-width:880px){
 
 table{
    width:100%; 
 
 }    
}
@media screen and (max-width:500px){
    table{
    width:100%; 
    padding: 0px;
 }  
 th,td{
     font-size: 14px;
      padding: 0px;
 }
}

    </style>
    <body>
        <%@include file="Menu.jsp" %>
        <section>
        <form>
       
           <%   String code=request.getParameter("code");
                Object mt=session.getAttribute("matricule");
                Object fo=session.getAttribute("fonction");
                String module=request.getParameter("module");
               ResultSet rl=cnx.executeSelect("select m.nummodule,m.codemod,p.matricule,g.cumul,m.massehoraire,g.dateefm from module m, personnel p, moduleformateurgroupe g, seance s where m.nummodule=g.nummod and p.matricule=g.matricul and m.nummodule=s.nummodule and p.matricule='"+mt+"' and p.fonction='"+fo+"' and s.codeGrp='"+code+"'   group by m.nummodule,g.cumul,m.massehoraire,s.codeGrp,m.codemod,g.dateefm,p.matricule  order by m.nummodule");
               int num=0; 
               int total=0;
                int i=0;
           %>
       <div class="container">
    	<%while(rl.next()){
        num=rl.getInt(1);
        total=(rl.getInt(4)*100)/rl.getInt(5);%>
        
      <div class="card" >
        <div class="box">
          <div class="percent" <%if(total >= 90 && rl.getDate(6)==null){%>
            style="background:red;"  
            <%}else if(total >= 90 && rl.getDate(6)!=null){%>style="background:#33ff33;"
            <%}else if(total <90){%>style="background:#666666;"
            <%}%>   
               
               
          >
            <svg>
              <circle cx="70" cy="70" r="70"></circle>
              <circle <% if(total >= 90 && rl.getDate(6)==null ){%>
                                style="stroke: #fff;stroke-dashoffset: calc(440 - (440 * <%=total%>) / 100);"
                                <%}else if(total >= 90 && rl.getDate(6)!=null){%>style="stroke: #fff; stroke-dashoffset: calc(440 - (440 * <%=total%>) / 100);"
                                <%}else if(total <90){%>style="stroke: #fff ;stroke-dashoffset: calc(440 - (440 * <%=total%>) / 100);"
                                <%}%> 
                                cx="70" cy="70" r="70">
                                    
            </circle>
            </svg>
            <div class="number">
                <h2><%=total%><span>%</span></h2>
            </div>
          </div>
                <h2 class="text"><i class="fas fa-passport"></i>&nbsp;ID module:<%=rl.getString(2)%></h2>
                <h2 class="text"><i class="fas fa-hourglass-start"></i>&nbsp;Cumul:<%=rl.getString(4)%>H</h2>
                <h2 class="text"><i class="fas fa-clock"></i>&nbsp;Masse Horaire:<%=rl.getString(5)%>H</h2>
          <input type="text" name="module" id="md-<%=i%>" value="<%=num%>" style="display: none;">
          <input type="button" id="bt1" value="Détail" onclick="myF('md-'+<%=i%>)" style="cursor: pointer;">
        
        </div>
    
      </div><%i++; }%>
      
    </div>
    <script>
    function myF(id){
    var mod=document.getElementById(id).value;    
    var request = new XMLHttpRequest(); // Creating the XMLHttpRequest object
    request.open("GET", "Tableseance.jsp?Module="+mod); // Instantiating the request object
    request.onreadystatechange = function() {   // Defining event listener for readystatechange event
        
    if(this.readyState === 4 && this.status === 200) {  // Check if the request is compete and was successful
      document.getElementById("tab").innerHTML = this.responseText;  // Inserting the response from server into an HTML element
     }
    };
        request.send(); // Sending the request to the server
    }
    </script>
    </form>
       </section>
    <div id="tab"></div>
    </body>
</html>
