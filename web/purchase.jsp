<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/sql" %>
<s:setDataSource driver="com.mysql.jdbc.Driver"
                 url="jdbc:mysql://localhost:3306/hpstp16"
                 user="root"
                 password="deblina"/>
<%
    String user=request.getParameter("n");
    String bid=request.getParameter("id");
   String price=request.getParameter("p");
   String q="insert into purchase values('"+user+"',"+bid+","+price+",'Pending')";
   String q1="delete from cart where bid="+bid;
    %>

    <s:update var="ur" sql="<%=q%>"/>
    <s:update var="dr" sql="<%=q1%>"/>

<c:set var="msg" scope="request" value="ADDED TO YOUR PURCHASE LIST"/>
<jsp:forward page="viewCartUser.jsp?nn=${param.n}"/>