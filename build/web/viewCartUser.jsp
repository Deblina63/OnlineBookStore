<%@page import="java.sql.ResultSet"%>
<link rel='stylesheet' href='res/Site.css'/>
<body background="res1/books4.jpg">
<pre>
                                                                                                                                            <font size='6' color='red'><a href='User.jsp'>HOME</a></font>
    <center>
<div class="tb">
    <br><font size='6' color='red'>BOOK(S) IN YOUR CART</font><hr>
     
<%
    HttpSession sess = request.getSession(false);
    if(sess!=null && sess.getAttribute("lid")!=null){
        String u=request.getParameter("nn");
        String q="select * from cart where user='"+u+"'";
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
         String q1="select * from books where bid="+rs.getString(2);
         ResultSet rs1=jdbc.DAOLayer.selectData(q1);
         while(rs1.next()){
         String n=rs1.getString(2);
         
     %>
     <tr class="gridrow">   <!--row to be repeated-->
            <td><image src="pics/<%=rs1.getString(1)%>.jpg" height="100px" width="70px"/></td>
            <td><%=n%></td>
            <td><%=rs1.getString(3)%></td>
            <td><%=rs1.getString(4)%></td>
            <td>
                <%=rs1.getString(5)%>
            </td>
            <td><%=rs1.getString(6)%></td>
            <td><a onclick="return confirm('Are you sure to purchase this book?');"
                   href="purchase.jsp?id=<%=rs1.getString(1)%>&n=<%=u%>&p=<%=rs1.getString(6)%>">PURCHASE</a></td>
        </tr>
      
        <%}
     }%> 
        </table>
        <font size="5" color="red"><span class="err">${requestScope.msg}</span></font>
        
        <form action="genBill.jsp">
         <input type="hidden" value="<%=u%>" name="n"/>
        <input type="submit" value="GENERATE BILL"/>
        </form>
        
        <%
    }
    else{
        request.setAttribute("msg","PLEASE LOGIN TO CONTINUE");
              RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
              rd.forward(request,response);
    }%>