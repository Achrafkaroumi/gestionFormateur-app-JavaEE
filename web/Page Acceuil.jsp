<%-- 
    Document   : Page Acceuil
    Created on : 12 avr. 2020, 13:47:08
    Author     : pc expert
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="style.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
    </head>
    <style>
*{
  margin: 0;
  padding: 0;
  font-family: "montserrat",sans-serif;
  box-sizing: border-box;
}

.services-section{
  background: url(bg.jpg);
  background-size: cover;
  padding: 60px 0;
}
.inner-width{
  width: 100%;
  max-width: 1200px;
  margin: auto;
  padding: 0 20px;
  overflow: hidden;
}
.section-title{
  text-align: center;
  color: #ddd;
  text-transform: uppercase;
  font-size: 30px;
}
.border{
  width: 160px;
  height: 2px;
  background: #82ccdd;
  margin: 40px auto;
}
.services-container{
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
}

.service-box{
  max-width: 33.33%;
  padding: 10px;
  text-align: center;
  color: #ddd;
  cursor: pointer;
}

.service-icon{
  display: inline-block;
  width: 70px;
  height: 70px;
  border: 3px solid #82ccdd;
  color: #82ccdd;
  transform: rotate(45deg);
  margin-bottom: 30px;
  margin-top: 16px;
  transition: 0.3s linear;
}
.service-icon i{
  line-height: 70px;
  transform: rotate(-45deg);
  font-size: 26px;
}
.service-box:hover .service-icon{
  background: #82ccdd;
  color: #ddd;
}
.service-title{
  font-size: 18px;
  text-transform: uppercase;
  margin-bottom: 10px;
}
.service-desc{
  font-size: 14px;
}

@media screen and (max-width:960px) {
  .service-box{
    max-width: 45%;
  }
}

@media screen and (max-width:768px) {
  .service-box{
    max-width: 50%;
  }
}

@media screen and (max-width:480px) {
  .service-box{
    max-width: 100%;
  }
}

 </style>
 
    <body>
        <%@include file="Menu.jsp" %>
        <div class="services-section">
      <div class="inner-width">
        <h1 class="section-title"> Institut Spécialisé de Technologie Appliquée NTIC Rabat</h1>
        <div class="border"></div>
        <div class="services-container">

          <div class="service-box">
            <div class="service-icon">
              <i class="fas fa-paint-brush"></i>
            </div>
            <div class="service-title">Technicien spécialiste en développement multimédia</div>
            <div class="service-desc">
              Principalement pour mission de réaliser des applications multimédia et de développer des solutions web
            </div>
          </div>

          <div class="service-box">
            <div class="service-icon">
              <i class="fas fa-code"></i>
            </div>
            <div class="service-title">Technicien Spécialisé en Développement Informatique</div>
            <div class="service-desc">
              Un professionnel en charge du développement et de la maintenance des applications informatiques
            </div>
          </div>

          <div class="service-box">
            <div class="service-icon">
              <i class="fas fa-brush"></i>
            </div>
            <div class="service-title">Technicien Spécialisé en Réseaux Informatiques</div>
            <div class="service-desc">
              Un professionnel chargé d’exploiter, sécuriser, optimiser et faire évoluer les ressources informatiques de l’entreprise
            </div>
          </div>

            
            <div class="service-box">
            <div class="service-icon">
              <i class="fas fa-database"></i>
            </div>
            <div class="service-title">Technicien Spécialisé en Gestion d’Entreprise</div>
            <div class="service-desc">
              Se voit posséder un certain niveau de pratique des techniques en gestion et plus particulièrement, en marketing et en finances
            </div>
          </div>
            
          <div class="service-box">
            <div class="service-icon">
              <i class="fas fa-paint-brush"></i>
            </div>
            <div class="service-title">Technicien Spécialisé en Infographie</div>
            <div class="service-desc">
               Un professionnel chargé de réaliser des produits de prépresse destinés à l’impression et à l’édition.
            </div>
          </div>

          

          <div class="service-box">
            <div class="service-icon">
              <i class="fas fa-database"></i>
            </div>
            <div class="service-title">Technicien Spécialisé en Finance et Comptabilité</div>
            <div class="service-desc">
              Agit dans des contextes de travail variés et évolutifs qui dépendent de plusieurs paramètres, à savoir :
la structure juridique, la taille, les choix organisationnels et technologiques des entreprises.
            </div>
          </div>
            
            
          </div>
        </div>
      </div>
    </div>
    </body>
</html>
