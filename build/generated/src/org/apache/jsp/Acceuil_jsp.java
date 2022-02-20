package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Connection.cnx;
import java.sql.ResultSet;

public final class Acceuil_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/Menu.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("         <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css\">\n");
      out.write("        <title>Acceuil</title>\n");
      out.write("    \n");
      out.write("         \n");
      out.write("    </head>\n");
      out.write("    <style>\n");
      out.write("        body{\n");
      out.write("            background-image: linear-gradient(rgba(0,34,76,0.9),#fff);\n");
      out.write("            height: 600px;\n");
      out.write("            background-repeat: no-repeat;\n");
      out.write("        }     \n");
      out.write("\n");
      out.write("\n");
      out.write("       \n");
      out.write("        .log{\n");
      out.write("            position: absolute;\n");
      out.write("            left: 550px;\n");
      out.write("            top: 28px;\n");
      out.write("            font-size:22px;\n");
      out.write("            font-family: \"Times New Roman\", Times, serif;\n");
      out.write("            color: #fff;\n");
      out.write("            transition: 1s;\n");
      out.write("        }\n");
      out.write("        .dec{\n");
      out.write("            transition: 1s;\n");
      out.write("            position: absolute;\n");
      out.write("            left: 1100px;\n");
      out.write("            top: 22px;\n");
      out.write("            color: #fff;\n");
      out.write("            padding: 8px;\n");
      out.write("            background: #006699;\n");
      out.write("            box-shadow: 0 0 10px #2196f3 , 0 0 80px #2196f3;\n");
      out.write("            border-radius: 15px;\n");
      out.write("            border: none;\n");
      out.write("            outline: none;\n");
      out.write("        }\n");
      out.write("        .dec:hover{\n");
      out.write("            background:#006699;\n");
      out.write("            opacity: 0.5;\n");
      out.write("            transition: 0.5s;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("section{\n");
      out.write("  min-height: 100vh;\n");
      out.write("   display: flex;\n");
      out.write("  flex-flow: row wrap;\n");
      out.write("position: absolute;\n");
      out.write("top: 100px;\n");
      out.write("justify-content: center;\n");
      out.write("  \n");
      out.write("}\n");
      out.write(".contact-info{  \n");
      out.write("  display: flex;\n");
      out.write("  position: relative;\n");
      out.write("  max-width: 1200px;\n");
      out.write("  padding: 0px 20px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write(".card {\n");
      out.write("  border-radius: 20px;\n");
      out.write("  background: rgba(0,34,76,0.9);\n");
      out.write("  padding: 0 20px;\n");
      out.write("  margin: 35px;\n");
      out.write("  width: 150px;\n");
      out.write("  height: 200px;\n");
      out.write("  display: flex;\n");
      out.write("  flex-direction: column;\n");
      out.write("  justify-content: center;\n");
      out.write("  align-items: center;\n");
      out.write("  color: #fff;\n");
      out.write("  cursor: pointer;\n");
      out.write("  transition: 0.5s ease;\n");
      out.write("  box-shadow: 5px 5px 15px rgba(0,34,76,0.9);\n");
      out.write("}\n");
      out.write("\n");
      out.write(".card-icon{\n");
      out.write("  font-size: 30px;\n");
      out.write("  background: #006699;\n");
      out.write("  width: 60px;\n");
      out.write("  height: 60px;\n");
      out.write("  text-align: center;\n");
      out.write("  line-height: 60px !important;\n");
      out.write("  border-radius: 50%;\n");
      out.write("  transition: 0.3s linear;\n");
      out.write("}\n");
      out.write(" .card:hover .card-icon{\n");
      out.write("  background: none;\n");
      out.write("  color: #fff;\n");
      out.write("  transition: 1s;\n");
      out.write("  transform: scale(1.6);\n");
      out.write("}\n");
      out.write("\n");
      out.write(".card p {\n");
      out.write("  margin-top: 20px;\n");
      out.write("  letter-spacing: 2px;\n");
      out.write("  border: 2px solid transparent;\n");
      out.write("  border-radius: 10px;\n");
      out.write("  padding:5px;\n");
      out.write("  box-shadow: 5px 5px 15px black;\n");
      out.write("}\n");
      out.write("a{\n");
      out.write("    color: #fff;\n");
      out.write("    text-decoration: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write("@media screen and (max-width:800px) {\n");
      out.write("    *{\n");
      out.write("        transition: 2s;\n");
      out.write("        \n");
      out.write("    }\n");
      out.write("    .haut{\n");
      out.write("        width: 100%;\n");
      out.write("    }\n");
      out.write("    img{\n");
      out.write("       position: absolute;\n");
      out.write("        left: 50px;\n");
      out.write("        top: 20px;\n");
      out.write("        width: 60px;\n");
      out.write("        height: 40px;\n");
      out.write("    }\n");
      out.write("    .log{\n");
      out.write("        position: absolute;\n");
      out.write("        left: 120px;\n");
      out.write("    }\n");
      out.write("    .dec{\n");
      out.write("        position: absolute;\n");
      out.write("        left: 330px;\n");
      out.write("    }\n");
      out.write("  section{\n");
      out.write("  flex-direction: column;\n");
      out.write("   \n");
      out.write("  }\n");
      out.write("  .contact-info{\n");
      out.write("    width: 100%;\n");
      out.write("    margin: -30px 60px;\n");
      out.write("  }\n");
      out.write("\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("    </style>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <script src=\"https://kit.fontawesome.com/a076d05399.js\"></script>\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <style>\n");
      out.write("       \n");
      out.write("    *{\n");
      out.write("      padding: 0;\n");
      out.write("      margin: 0;\n");
      out.write("      list-style: none;\n");
      out.write("      text-decoration: none;\n");
      out.write("    }\n");
      out.write("    body{\n");
      out.write("      font-family: \"montserrat\",sans-serif;\n");
      out.write("    }\n");
      out.write("    nav{\n");
      out.write("      height: 60px;\n");
      out.write("      background: rgba(0,34,76,0.9);\n");
      out.write("    }\n");
      out.write("    .navbar-brand{\n");
      out.write("        margin: 0 40px;\n");
      out.write("        padding: 5px 0;\n");
      out.write("        font-size: 20px;\n");
      out.write("        text-transform: uppercase;\n");
      out.write("        position: absolute;\n");
      out.write("        top:15px;\n");
      out.write("        color: #fff;\n");
      out.write("    }\n");
      out.write("    nav ul{\n");
      out.write("      float: right;\n");
      out.write("      margin-right: 25px;\n");
      out.write("    }\n");
      out.write("    nav ul li{\n");
      out.write("      display: inline-block;\n");
      out.write("      line-height: 60px;\n");
      out.write("      margin: 0 15px;\n");
      out.write("    }\n");
      out.write("    nav ul li a{\n");
      out.write("      position: relative;\n");
      out.write("      padding: 5px 0;\n");
      out.write("      color: white;\n");
      out.write("      font-size: 15px;\n");
      out.write("      text-transform: uppercase;\n");
      out.write("    }\n");
      out.write("    nav ul li a:before{\n");
      out.write("      position: absolute;\n");
      out.write("      content: '';\n");
      out.write("      bottom: 0;\n");
      out.write("      left: 0;\n");
      out.write("      width: 100%;\n");
      out.write("      height: 3px;\n");
      out.write("      background: white;\n");
      out.write("      transform: scaleX(0);\n");
      out.write("      transform-origin: right;\n");
      out.write("      transition: transform .4s linear;\n");
      out.write("    }\n");
      out.write("    nav ul li a:hover:before{\n");
      out.write("      transform: scaleX(1);\n");
      out.write("      transform-origin: left;\n");
      out.write("    }\n");
      out.write("    .fas fa-user-circle{\n");
      out.write("      size: 20px;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    </style>\n");
      out.write("    <body>\n");
      out.write("        ");

            Object n=session.getAttribute("nom");
            Object p=session.getAttribute("prenom");
               if(n!=null){
      out.write("\n");
      out.write("    \n");
      out.write("        <nav>\n");
      out.write("            <b> <span class=\"navbar-brand\" >Espace Formateur</span> </b>\n");
      out.write("          <ul>\n");
      out.write("              <li><a href=\"Page Acceuil.jsp\" id=\"a1\"><i class=\"fas fa-home\"></i>&nbsp;Acceuil</a></li>\n");
      out.write("               <li><a href=\"Acceuil.jsp\" id=\"a1\"><i class=\"fas fa-layer-group\"></i>&nbsp;Groupe</a></li>   \n");
      out.write("              <li>\n");
      out.write("            <a href=\"Decon.jsp\" id=\"a1\"><i class=\"fas fa-user-circle\"></i>&nbsp;<b><i>");
      out.print(n);
      out.write("&nbsp;&nbsp;");
      out.print(p);
      out.write("</i></b></a>\n");
      out.write("            </li>\n");
      out.write("        </ul>\n");
      out.write("      </nav>\n");
      out.write("         ");
}else{
                request.getRequestDispatcher("Pconnection.jsp").forward(request, response);
            }
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        <form action=\"#\"method=\"post\">\n");
      out.write("            <section>\n");
      out.write("                ");

          
            Object m=session.getAttribute("matricule");
            ResultSet rs=cnx.executeSelect("select g.codegrp from groupe g,personnel p,moduleformateurgroupe f where g.codegrp=f.codegrp and p.matricule=f.matricul and p.matricule='"+m+"' and p.fonction='Formateur' group by g.codegrp");
            while(rs.next()){
            
      out.write("\n");
      out.write("           <div class=\"contact-info\">\n");
      out.write("               <div class=\"card\">\n");
      out.write("        <i class=\"card-icon fas fa-laptop-code\"></i>\n");
      out.write("        <p><a href=\"moduleEtat.jsp?code=");
      out.print(rs.getString(1));
      out.write('"');
      out.write('>');
      out.print(rs.getString(1));
      out.write("</a></p>\n");
      out.write("\n");
      out.write("      </div>\n");
      out.write("           </div> ");
}
      out.write("\n");
      out.write("          </section>    \n");
      out.write("           </form>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
