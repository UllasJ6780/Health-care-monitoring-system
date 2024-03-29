/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.68
 * Generated at: 2023-06-30 04:55:08 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.DB;
import java.sql.*;

public final class del_005femployee_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <meta name=\"author\" content=\"\">\n");
      out.write("    <title>Admin | Health Record</title>\n");
      out.write("\t\n");
      out.write("\t<!-- core CSS -->\n");
      out.write("    <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"css/font-awesome.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"css/prettyPhoto.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"css/animate.min.css\" rel=\"stylesheet\">\n");
      out.write("\t<link href=\"css/main.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"css/responsive.css\" rel=\"stylesheet\">\n");
      out.write("\t\n");
      out.write("    <!--[if lt IE 9]>\n");
      out.write("    <script src=\"js/html5shiv.js\"></script>\n");
      out.write("    <script src=\"js/respond.min.js\"></script>\n");
      out.write("    <![endif]-->       \n");
      out.write("    <link rel=\"shortcut icon\" href=\"images/ico/favicon.ico\">\n");
      out.write("    <link rel=\"apple-touch-icon-precomposed\" sizes=\"144x144\" href=\"images/ico/apple-touch-icon-144-precomposed.png\">\n");
      out.write("    <link rel=\"apple-touch-icon-precomposed\" sizes=\"114x114\" href=\"images/ico/apple-touch-icon-114-precomposed.png\">\n");
      out.write("    <link rel=\"apple-touch-icon-precomposed\" sizes=\"72x72\" href=\"images/ico/apple-touch-icon-72-precomposed.png\">\n");
      out.write("    <link rel=\"apple-touch-icon-precomposed\" href=\"images/ico/apple-touch-icon-57-precomposed.png\">\n");
      out.write("  <script>\n");
      out.write("        function myfunction(){\n");
      out.write("            if((window.document.form1.id.value==\"\")){\n");
      out.write("                alert(\"Please Enter ID !!!\");\n");
      out.write("                return false;\n");
      out.write("            }\n");
      out.write("            else{\n");
      out.write("                return true;\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("    </script>\n");
      out.write("</head><!--/head-->\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("    <header id=\"header\">\n");
      out.write("        <div class=\"top-bar\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-sm-6 col-xs-4\">\n");
      out.write("                        <div class=\"top-number\"><p><i class=\"fa fa-phone-square\"></i>  +0123 456 70 90</p></div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-sm-6 col-xs-8\">\n");
      out.write("                       <div class=\"social\">\n");
      out.write("                            <ul class=\"social-share\">\n");
      out.write("                                <li><a href=\"#\"><i class=\"fa fa-facebook\"></i></a></li>\n");
      out.write("                                <li><a href=\"#\"><i class=\"fa fa-twitter\"></i></a></li>\n");
      out.write("                                <li><a href=\"#\"><i class=\"fa fa-linkedin\"></i></a></li> \n");
      out.write("                                <li><a href=\"#\"><i class=\"fa fa-dribbble\"></i></a></li>\n");
      out.write("                                <li><a href=\"#\"><i class=\"fa fa-skype\"></i></a></li>\n");
      out.write("                            </ul>\n");
      out.write("                            <div class=\"search\">\n");
      out.write("                                <form role=\"form\">\n");
      out.write("                                    <input type=\"text\" class=\"search-form\" autocomplete=\"off\" placeholder=\"Search\">\n");
      out.write("                                    <i class=\"fa fa-search\"></i>\n");
      out.write("                                </form>\n");
      out.write("                           </div>\n");
      out.write("                       </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div><!--/.container-->\n");
      out.write("        </div><!--/.top-bar-->\n");
      out.write("\n");
      out.write("        <nav class=\"navbar navbar-inverse\" role=\"banner\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"navbar-header\">\n");
      out.write("                    <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">\n");
      out.write("                        <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                    </button>\n");
      out.write("                    <a class=\"navbar-brand\" href=\"index.html\"><img src=\"images/logo.jpg\" alt=\"logo\"></a>\n");
      out.write("                </div>\n");
      out.write("\t\t\t\t\n");
      out.write("                <div class=\"collapse navbar-collapse navbar-right\">\n");
      out.write("                    <ul class=\"nav navbar-nav\">\n");
      out.write("                        \n");
      out.write("                       \n");
      out.write("                         <li><a href=\"doctor.jsp\">Doctor</a></li>\n");
      out.write("                        <li><a href=\"patient.jsp\">Patient</a></li>\n");
      out.write("                         \n");
      out.write("                        <li><a href=\"employee.jsp\">Employee</a></li>\n");
      out.write("                        <li class=\"active\"><a href=\"del_employee.jsp\">Delete Staff</a></li>\n");
      out.write("                        <li><a href=\"index.html\">Logout</a></li>\n");
      out.write("                                                    \n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div><!--/.container-->\n");
      out.write("        </nav><!--/nav-->\n");
      out.write("\t</header><!--/header-->\n");

String msg =(String) request.getAttribute("msg");
try{
    if(!msg.equals("")){

      out.write("\n");
      out.write("<center><h2 style=\"color:red;font-weight: bold\">");
      out.print(msg);
      out.write("</h2></center>\n");

    }
}
catch(Exception e){
    
}

      out.write("\n");
      out.write("    <section id=\"about-us\">\n");
      out.write("       \n");
      out.write("  <form name=\"form1\"  method=\"post\" action=\"del_employee\" onSubmit=\"return valid(this)\"  >\n");
      out.write("  <p align=\"center\"><strong><font color=\"#003399\" size=\"5\" face=\"Times New Roman\">Staff Deletion </font></strong></p>\n");
      out.write("  \n");
      out.write("  <p align=\"center\">&nbsp;</p>\n");
      out.write("  <table width=\"381\" border=\"0\" align=\"center\" cellpadding=\"2\" cellspacing=\"2\">\n");
      out.write("   <tr> \n");
      out.write("      <td width=\"165\"><div align=\"center\"><font size=\"4\" face=\"Times New Roman\"><em><strong>User</strong></em></font></div></td>\n");
      out.write("      <td width=\"192\"><font size=\"5\"> \n");
      out.write("     <select name=\"type\" size=\"1\" id=\"type\">\n");
      out.write("       \n");
      out.write("          <option value=\"doctor\">Doctor</option>\n");
      out.write("          <option value=\"patient\">Patient</option>\n");
      out.write("          <option value=\"employee\">Employee</option>\n");
      out.write("        </select>\n");
      out.write("        </font></td>\n");
      out.write("    </tr>\n");
      out.write("    <tr> \n");
      out.write("      <td width=\"165\"><div align=\"center\"><font size=\"4\" face=\"Times New Roman\"><em><strong>ID</strong></em></font></div></td>\n");
      out.write("      <td width=\"192\"><font size=\"5\"> \n");
      out.write("        <input  type=\"text\"  name=\"did\" id=\"id\"/>\n");
      out.write("        </font></td>\n");
      out.write("    </tr>\n");
      out.write("      \n");
      out.write("  </table>\n");
      out.write("  <p>&nbsp;</p>\n");
      out.write("  <table width=\"347\" border=\"0\" align=\"center\" cellpadding=\"2\" cellspacing=\"2\">\n");
      out.write("    <tr> \n");
      out.write("      <td height=\"31\"> <div align=\"center\"><font size=\"5\" face=\"Times New Roman, Times, serif\"><em><strong> \n");
      out.write("          <input type=\"submit\" name=\"Submit\" value=\"    Submit    \" onclick=\"return myfunction()\" />\n");
      out.write("          </strong></em></font></div></td>\n");
      out.write("      \n");
      out.write("    </tr>\n");
      out.write("  </table>\n");
      out.write("  <p>&nbsp;</p>\n");
      out.write("  <p>&nbsp;</p>\n");
      out.write("</form>\n");
      out.write("      \n");
      out.write("\n");
      out.write("        </section><!--/about-us-->\n");
      out.write("\t\n");
      out.write("    \n");
      out.write("\n");
      out.write("    <footer id=\"footer\" class=\"midnight-blue\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                \n");
      out.write("                <div class=\"col-sm-6\">\n");
      out.write("                    <ul class=\"pull-right\">\n");
      out.write("                        <li><a href=\"#\">Home</a></li>\n");
      out.write("                        <li><a href=\"#\">About Us</a></li>\n");
      out.write("                        <li><a href=\"#\">Faq</a></li>\n");
      out.write("                        <li><a href=\"#\">Contact Us</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </footer><!--/#footer-->\n");
      out.write("    \n");
      out.write("\n");
      out.write("    <script src=\"js/jquery.js\"></script>\n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("        $('.carousel').carousel()\n");
      out.write("    </script>\n");
      out.write("    <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"js/jquery.prettyPhoto.js\"></script>\n");
      out.write("    <script src=\"js/jquery.isotope.min.js\"></script>\n");
      out.write("    <script src=\"js/main.js\"></script>\n");
      out.write("    <script src=\"js/wow.min.js\"></script>\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
