<%@page import="java.sql.ResultSet"%>
<link rel='stylesheet' href='res/Site.css'/>
<br><br><br>
<font size="5" align="right" color="white"><a href="User.jsp">HOME</a></font>
<body background="res1/book-wallpaper-6.jpg"></body>


<center>
<h1>GENERATED BILL</h1>
</center>
<hr>
<%

String u=request.getParameter("user");
String q="select * from bill where user='"+u+"'";
ResultSet rs=jdbc.DAOLayer.selectData(q);
double sum=0;
%>
<br><br><br>
<center>
<table border="1" class="table">
        <tr class="gridheader">
            
            <th>NAME</th>
            <th>PRICE</th>
            <th>QUANTITY</th>
            <th>TOTAL PRICE</th>
            <th>STATUS</th>
        </tr>


<%
while(rs.next()){
    String q2="select * from books where bid="+rs.getString(2);
    ResultSet rs1=jdbc.DAOLayer.selectData(q2);
    
    while(rs1.next())
    {
        String qt="q"+rs1.getString(1);
        
        double p=Double.parseDouble(request.getParameter(qt))*Double.parseDouble(rs1.getString(6));
        sum+=p;
        %>
        
        <!--%=request.getParameter(qt)%> x <!%=rs1.getString(6)%> = <!%=p%> <br>-->
        <tr class="gridrow">
            
            <td><%=rs1.getString(1)%> </td>
            <td><%=rs1.getString(6)%> </td>
            <th><%=request.getParameter(qt)%> </th>
            <th><%=p%></th>
            <th><%=rs.getString(4)%></th>
        </tr>

        <%
        String q3="delete from purchase where bid="+rs.getString(2);
        int ur=jdbc.DAOLayer.updateData(q3);
    }
}
    %>
    </table>
</center>
    <br>
    <br>
    <br><br>
    <center>
        <font size="6">Total amount due=<%=sum%><br>
        Payment mode: Cash on Delivery
        </font>
        
    </center>
        </body>