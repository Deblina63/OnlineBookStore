<%@page import="java.sql.ResultSet"%>
<%
    String nm=(String)session.getAttribute("lid");
    String r=(String)session.getAttribute("role");
    HttpSession sess = request.getSession(false);
 if(nm!=null && sess!=null)  {
       if(r.equalsIgnoreCase("admin")){%>
<link rel='stylesheet' href='res/Site.css'/>
<body background="res1/books3.jpg">
<pre>
                                                                                                                                            <font size='6' color='red'><a href='admin.jsp'>HOME</a></font>
    <center>
<div class="tb">
    <br><font size='6' color='red'>BOOK DETAILS</font><hr>
    <marquee><font size='4' color='red'>BOOK DETAILS</font></marquee>
 
<%
    String q="select * from books";
    ResultSet rs=jdbc.DAOLayer.selectData(q);
    %>
        <table border="1" class="table">
        <tr class="gridheader">
            <th>BOOK ID</th>
            <th>NAME</th>
            <th>TYPE</th>
            <th>PUBLISHER</th>
            <th>WRITER</th>
            <th>PRICE</th>
            <th>QUANTITY</th>
        </tr>
     <%   while(rs.next()){
         String n=rs.getString(2);
         
     %>
        <tr class="gridrow">   <!--row to be repeated-->
            <td><%=rs.getString(1)%></td>
            <td><%=n%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%></td>
            <td>
                <%=rs.getString(5)%>
            </td>
            <td><%=rs.getString(6)%></td>
            <td><%=rs.getString(7)%></td>
        </tr>
        
        <%}%> 
        <tr class="gridfooter">
            <th colspan="7">
                <a href="addBook.jsp" style="color: white">ADD NEW BOOK</a>
            </th>
        </tr>
        </table>
        <font size="5" color="red"><span class="err">${requestScope.msg}</span></font>
        <%}
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
 