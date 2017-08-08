
<%@page import="java.sql.ResultSet"%>
<link rel='stylesheet' href='res/Site.css'/>
<body background="res1/books4.jpg">
<pre>
                                                                                                                                            <font size='6' color='red'><a href='User.jsp'>HOME</a></font>
    <center>
<div class="tb">
    <br><font size='6' color='red'>BOOK DETAILS</font><hr>
    <marquee><font size='4' color='red'>BOOK DETAILS</font></marquee>
 
<%
    HttpSession sess = request.getSession(false);
    if(sess!=null && sess.getAttribute("lid")!=null){
        String q="select * from books";
        ResultSet rs=jdbc.DAOLayer.selectData(q);
    %>
        <table border="1" class="table">
        <tr class="gridheader">
            <th></th>
            <th>NAME</th>
            <th>TYPE</th>
            <th>PUBLISHER</th>
            <th>WRITER</th>
            <th>PRICE</th>
            <th></th>
        </tr>
     <%   while(rs.next()){
         String n=rs.getString(2);
         
     %>
        <tr class="gridrow">   <!--row to be repeated-->
            <td><image src="pics/<%=rs.getString(1)%>.jpg" height="100px" width="70px"/></td>
            <td><%=n%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%></td>
            <td>
                <%=rs.getString(5)%>
            </td>
            <td><%=rs.getString(6)%></td>
            <td><a onclick="return confirm('Are you sure to add this book to your cart?');"
                   href="addCart.jsp?id=<%=rs.getString(1)%>&n=<%=request.getParameter("nn")%>">ADD TO CART</a></td>
        </tr>
        
        <%}%> 
        </table>
        <font size="5" color="red"><span class="err">${requestScope.msg}</span></font>
        <%
    }
    else{
        request.setAttribute("msg","PLEASE LOGIN TO CONTINUE");
              RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
              rd.forward(request,response);
    }%>
 