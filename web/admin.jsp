<link rel="stylesheet" href="res/Site.css"/>
<link rel="stylesheet" href="res/style.css"/>
<style>
div.transbox {
	
    opacity: 1;
    filter: alpha(opacity=80); 
	height:85px;
}

</style>
<pre>
<%
    String n=(String)session.getAttribute("lid");
    String r=(String)session.getAttribute("role");
    HttpSession sess = request.getSession(false);
 if(n!=null && sess!=null)  {
            if(r.equalsIgnoreCase("admin")){
                out.print("<body background='res1/books1-wide.jpg'>");
                out.print("<link rel='stylesheet' href='res/style.css'/>");
                out.print("<center>");
                out.println("");
                
                out.println("<div class='tb'>");
                out.println("<br><font size='6' color='orange'>WELCOME "+n.toUpperCase()+"</font>");
                out.println("  <font size='7' color='red'>ADMIN HOME PAGE</font><hr>");
                
                out.println("<br><br> <font size='6' color='blue'>Choose an action of your choice : </font>");
                out.println("<br><br><br> <a href='updateBooks.jsp'><font size='5' color='blue'>UPDATE BOOKS</font></a>");
                out.println("<br><br><br> <a href='viewAll.jsp'><font size='5' color='blue'>VIEW BOOKS </font></a>");
                out.println("<br><br><br> <a href='viewOrders.jsp'><font size='5' color='blue'>VIEW ORDERS </font></a>");
                out.println("<br><br><br> <a href='logout.jsp'><font size='5' color='blue'>LOGOUT </font></a>");
                out.print("</div>");
                out.print("</center>");
                out.print("</body>");
            }
            else{
              request.setAttribute("msg", "ACCESS DENIED!!");
              RequestDispatcher rd;
              rd=request.getRequestDispatcher("login.jsp");
              rd.forward(request,response);
            }
        }
        else{
              request.setAttribute("msg", "PLEASE LOGIN TO CONTINUE!!");
              RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
              rd.forward(request,response); 
        }
%>
