package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class viewAllUser_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("<link rel='stylesheet' href='res/Site.css'/>\n");
      out.write("<body background=\"res/emp4.jpg\">\n");
      out.write("<pre>\n");
      out.write("                                                                                                                                            <font size='6' color='red'><a href='User.jsp'>HOME</a></font>\n");
      out.write("    <center>\n");
      out.write("<div class=\"tb\">\n");
      out.write("    <br><font size='6' color='red'>BOOK DETAILS</font><hr>\n");
      out.write("    <marquee><font size='4' color='red'>BOOK DETAILS</font></marquee>\n");
      out.write(" \n");

    HttpSession sess = request.getSession(false);
    
    String q="select * from books";
    ResultSet rs=jdbc.DAOLayer.selectData(q);
    
      out.write("\n");
      out.write("        <table border=\"1\" class=\"table\">\n");
      out.write("        <tr class=\"gridheader\">\n");
      out.write("            <th></th>\n");
      out.write("            <th>NAME</th>\n");
      out.write("            <th>TYPE</th>\n");
      out.write("            <th>PUBLISHER</th>\n");
      out.write("            <th>WRITER</th>\n");
      out.write("            <th>PRICE</th>\n");
      out.write("            <th></th>\n");
      out.write("        </tr>\n");
      out.write("     ");
   while(rs.next()){
         String n=rs.getString(2);
         
     
      out.write("\n");
      out.write("        <tr class=\"gridrow\">   <!--row to be repeated-->\n");
      out.write("            <td><image src=\"pics/");
      out.print(rs.getString(1));
      out.write(".jpg\" height=\"100px\" width=\"70px\"/></td>\n");
      out.write("            <td>");
      out.print(n);
      out.write("</td>\n");
      out.write("            <td>");
      out.print(rs.getString(3));
      out.write("</td>\n");
      out.write("            <td>");
      out.print(rs.getString(4));
      out.write("</td>\n");
      out.write("            <td>\n");
      out.write("                ");
      out.print(rs.getString(5));
      out.write("\n");
      out.write("            </td>\n");
      out.write("            <td>");
      out.print(rs.getString(6));
      out.write("</td>\n");
      out.write("            <td><a onclick=\"return confirm('Are you sure to add this book to your cart?');\"\n");
      out.write("                   href=\"addCart.jsp?id=");
      out.print(rs.getString(1));
      out.write("&n=");
      out.print(request.getParameter("nn"));
      out.write("\">ADD TO CART</a></td>\n");
      out.write("        </tr>\n");
      out.write("        \n");
      out.write("        ");
}
      out.write(" \n");
      out.write("        </table>\n");
      out.write(" ");
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
