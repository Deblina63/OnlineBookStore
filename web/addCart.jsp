<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/sql" %>
<s:setDataSource driver="com.mysql.jdbc.Driver"
                 url="jdbc:mysql://localhost:3306/hpstp16"
                 user="root"
                 password="deblina"/>

<s:update var="ur" sql="insert into cart values('${param.n}',${param.id},'F')"/>

<c:set var="msg" scope="request" value="ADDED TO CART SUCCESSFULLY"/>
<jsp:forward page="viewAllUser.jsp?nn=${param.n}"/>