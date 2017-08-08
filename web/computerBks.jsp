<%@page import="java.sql.ResultSet"%>

<link rel='stylesheet' href='res/Site.css'/>
<body background="res/emp2.jpg">
<pre>
                                                                                                                                            <font size='6' color='red'><a href='start.jsp#services'>BACK</a></font>
    <center>
<div class="tb">
    <br><font size='6' color='red'>COMPUTER BOOKS</font><hr>
    <marquee><font size='4' color='red'>BOOK DETAILS</font></marquee>
 
<%
    String q="select * from books where type='Computer'";
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
            
        </tr>
        <%}%> 
 