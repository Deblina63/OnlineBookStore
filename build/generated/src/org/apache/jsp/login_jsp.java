package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<link rel=\"stylesheet\" href=\"res1/Site.css\"/>\n");
      out.write("<link rel=\"stylesheet\" href=\"res1/style.css\"/>\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <title>Bookberries Login Form</title>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("        <style>\n");
      out.write("      \n");
      out.write("body{\n");
      out.write("\tmargin: 0;\n");
      out.write("\tpadding: 0;\n");
      out.write("\tbackground: #fff;\n");
      out.write("\n");
      out.write("\tcolor: #fff;\n");
      out.write("\tfont-family: Arial;\n");
      out.write("\tfont-size: 12px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".body{\n");
      out.write("\tposition: absolute;\n");
      out.write("\ttop: -20px;\n");
      out.write("\tleft: -20px;\n");
      out.write("\tright: -40px;\n");
      out.write("\tbottom: -40px;\n");
      out.write("\twidth: auto;\n");
      out.write("\theight: auto;\n");
      out.write("\tbackground-image: url(\"res1/book-wallpaper-6.jpg\");\n");
      out.write("\tbackground-size: cover;\n");
      out.write("\t-webkit-filter: blur(5px);\n");
      out.write("\tz-index: 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".grad{\n");
      out.write("\tposition: absolute;\n");
      out.write("\ttop: -20px;\n");
      out.write("\tleft: -20px;\n");
      out.write("\tright: -40px;\n");
      out.write("\tbottom: -40px;\n");
      out.write("\twidth: auto;\n");
      out.write("\theight: auto;\n");
      out.write("\tbackground: -webkit-gradient(linear, left top, left bottom, color-stop(0%,rgba(0,0,0,0)), color-stop(100%,rgba(0,0,0,0.65))); /* Chrome,Safari4+ */\n");
      out.write("\tz-index: 1;\n");
      out.write("\topacity: 0.7;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".header{\n");
      out.write("\tposition: absolute;\n");
      out.write("\ttop: calc(50% - 35px);\n");
      out.write("\tleft: calc(50% - 255px);\n");
      out.write("\tz-index: 2;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".header div{\n");
      out.write("\tfloat: left;\n");
      out.write("\tcolor: #fff;\n");
      out.write("\tfont-family: 'Exo', sans-serif;\n");
      out.write("\tfont-size: 35px;\n");
      out.write("\tfont-weight: 200;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".header div span{\n");
      out.write("\tcolor: #5379fa !important;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".login{\n");
      out.write("\tposition: absolute;\n");
      out.write("\ttop: calc(50% - 75px);\n");
      out.write("\tleft: calc(50% - 50px);\n");
      out.write("\theight: 150px;\n");
      out.write("\twidth: 350px;\n");
      out.write("\tpadding: 10px;\n");
      out.write("\tz-index: 2;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".login input[type=text]{\n");
      out.write("\twidth: 250px;\n");
      out.write("\theight: 30px;\n");
      out.write("\tbackground: transparent;\n");
      out.write("\tborder: 1px solid rgba(255,255,255,0.6);\n");
      out.write("\tborder-radius: 2px;\n");
      out.write("\tcolor: #fff;\n");
      out.write("\tfont-family: 'Exo', sans-serif;\n");
      out.write("\tfont-size: 16px;\n");
      out.write("\tfont-weight: 400;\n");
      out.write("\tpadding: 4px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".login input[type=password]{\n");
      out.write("\twidth: 250px;\n");
      out.write("\theight: 30px;\n");
      out.write("\tbackground: transparent;\n");
      out.write("\tborder: 1px solid rgba(255,255,255,0.6);\n");
      out.write("\tborder-radius: 2px;\n");
      out.write("\tcolor: #fff;\n");
      out.write("\tfont-family: 'Exo', sans-serif;\n");
      out.write("\tfont-size: 16px;\n");
      out.write("\tfont-weight: 400;\n");
      out.write("\tpadding: 4px;\n");
      out.write("\tmargin-top: 10px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".login input[type=button]{\n");
      out.write("\twidth: 260px;\n");
      out.write("\theight: 35px;\n");
      out.write("\tbackground: #fff;\n");
      out.write("\tborder: 1px solid #fff;\n");
      out.write("\tcursor: pointer;\n");
      out.write("\tborder-radius: 2px;\n");
      out.write("\tcolor: #a18d6c;\n");
      out.write("\tfont-family: 'Exo', sans-serif;\n");
      out.write("\tfont-size: 16px;\n");
      out.write("\tfont-weight: 400;\n");
      out.write("\tpadding: 6px;\n");
      out.write("\tmargin-top: 10px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".login input[type=button]:hover{\n");
      out.write("\topacity: 0.8;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".login input[type=button]:active{\n");
      out.write("\topacity: 0.6;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".login input[type=text]:focus{\n");
      out.write("\toutline: none;\n");
      out.write("\tborder: 1px solid rgba(255,255,255,0.9);\n");
      out.write("}\n");
      out.write("\n");
      out.write(".login input[type=password]:focus{\n");
      out.write("\toutline: none;\n");
      out.write("\tborder: 1px solid rgba(255,255,255,0.9);\n");
      out.write("}\n");
      out.write("\n");
      out.write(".login input[type=button]:focus{\n");
      out.write("\toutline: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write("::-webkit-input-placeholder{\n");
      out.write("   color: rgba(255,255,255,0.6);\n");
      out.write("}\n");
      out.write("\n");
      out.write("::-moz-input-placeholder{\n");
      out.write("   color: rgba(255,255,255,0.6);\n");
      out.write("}\n");
      out.write("    </style>\n");
      out.write("  <div class=\"head\"> \n");
      out.write("  <font size=\"5\" color=\"white\">\n");
      out.write("     \n");
      out.write("     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"start.jsp\"><font size=\"5\" color=\"white\">HOME</font></a>\n");
      out.write("\n");
      out.write("  </div> \n");
      out.write(" \n");
      out.write("</font>      \n");
      out.write("  \n");
      out.write("  \n");
      out.write("  </head>\n");
      out.write("                                                                                                                                          \n");
      out.write("  <body>\n");
      out.write("      <form action=\"loginVerify.jsp\" method=\"POST\">\n");
      out.write("    <div class=\"body\"></div>\n");
      out.write("\t\t\n");
      out.write("\t\t<div class=\"header\">\n");
      out.write("\t\t\t<div>BOOK<span>Berries</span></div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<br>\n");
      out.write("\t\t<div class=\"login\">\n");
      out.write("\t\t\t\t<input type=\"text\" placeholder=\"username\" name=\"user\"><br>\n");
      out.write("                                <input type=\"password\" placeholder=\"password\" name=\"password\"><br><br>\n");
      out.write("                                <input type=\"submit\" value=\"Login\" class=\"button blue\">&nbsp;&nbsp; |&nbsp;&nbsp; <a href=\"register.jsp\"><font size=\"4\" color=\"black\">Register</font></a> \n");
      out.write("                                <br><br>\n");
      out.write("                                <font size=\"4\" color=\"red\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.msg}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</font>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                </form>\n");
      out.write(" </body>\n");
      out.write("\n");
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
