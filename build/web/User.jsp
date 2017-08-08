<%
HttpSession sess = request.getSession(false);
        if(sess!=null && sess.getAttribute("lid")!=null){
            String r=(String)sess.getAttribute("role");
            String n=(String)sess.getAttribute("lid");
            if(r.equalsIgnoreCase("user")){
                out.print("<body background='res1/books4.jpg'>");
                out.print("<link rel='stylesheet' href='res/style.css'/>");
                out.print("<center>");
                out.println("<br><br>");
                out.println("<div class='tb'>");
                out.println("                    <font size='8' color='red'>USER HOME PAGE</font><hr>");
                out.println("<br><font size='6' color='orange'>WELCOME "+n.toUpperCase()+"</font>");
                out.println("<br><br>            <font size='6' color='blue'>Choose an action of your choice : </font>");
                %>
                <br><br><br>  <br><br>           
                                    <a href='viewAllUser.jsp?nn=<%=n%>'><font size='5' color='blue'>VIEW BOOKS </font></a>
                              <br><br><br>     <a href='viewCartUser.jsp?nn=<%=n%>'><font size='5' color='blue'>VIEW CART </font></a>
           <%     out.println("<br><br><br>                                    <a href='logout.jsp'><font size='5' color='blue'>LOGOUT </font></a>");
                out.print("</div>");
                out.print("</center>");
                out.print("</body>");
            }
            else{
                request.setAttribute("msg","ACCESS DENIED");
              RequestDispatcher rd;
              rd=request.getRequestDispatcher("login.jsp");
              rd.include(request,response);
            }
        }
        else{
            request.setAttribute("msg","PLEASE LOGIN TO CONTINUE");
              RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
              rd.forward(request,response); 
              
        }
        %>