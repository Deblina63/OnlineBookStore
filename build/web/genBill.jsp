<%@page import="java.sql.ResultSet"%>
<link rel='stylesheet' href='res/Site.css'/>
<br><br><br>
<font size="5" align="right" color="white"><a href="User.jsp">HOME</a></font>
<body background="res1/book-wallpaper-6.jpg"></body>

<form action="getBill.jsp">
    <center>
    <br>
    <font size="6">SELECT QUANTITY</font>
    <hr length="50%">
<%
String user=request.getParameter("n");
String q="select bid from purchase where user='"+user+"'";
ResultSet rs=jdbc.DAOLayer.selectData(q);
if(!rs.next()){
    request.setAttribute("msg", "No books in cart!");
    RequestDispatcher rd=request.getRequestDispatcher("viewStatus.jsp");
    rd.forward(request, response);
}
else{
    rs=jdbc.DAOLayer.selectData(q);
}

while(rs.next()){
    String q2="select * from books where bid="+rs.getString(1);
    ResultSet rs1=jdbc.DAOLayer.selectData(q2);
    while(rs1.next()){
       
%>
<input type="hidden" value="<%=user%>" name="user"/>
<center>   
    <font size="5">Enter quantity of <%=rs1.getString(2)%> : <input type="number" min="1" max="<%=rs1.getString(7)%>" name="q<%=rs1.getString(1)%>" required="true"</font>
<br>
<br>
</center>
<%
    }
}

%>

<input type="submit" value="GET BILL"/>
</form>
