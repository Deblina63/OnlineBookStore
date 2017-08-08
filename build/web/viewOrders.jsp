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
    <br><font size='6' color='red'>ORDER DETAILS</font><hr>
    
 
<%
    String q="select * from bill";
    ResultSet rs=jdbc.DAOLayer.selectData(q);
    %>
        <table border="1" class="table">
        <tr class="gridheader">
            <th>BOOK ID</th>
            <th>QUANTITY</th>
            <th>USER</th>
            <th>STATUS</th>
            
        </tr>
     <%   while(rs.next()){
         String q1="select price from books where bid="+rs.getString(2);
         ResultSet rs1=jdbc.DAOLayer.selectData(q1);
         rs1.next();
         double qnt=rs.getDouble(3)/rs1.getDouble(1);
     %>
        <tr class="gridrow">   <!--row to be repeated-->
            <td><%=rs.getString(2)%></td>
            <td><%=qnt%></td>
            <td><%=rs.getString(1)%></td>
            <td><%=rs.getString(4)%></td>
        </tr>
        
        <%}%> 
        
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