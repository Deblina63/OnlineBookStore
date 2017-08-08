<%@page import="jdbc.DAOLayer"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="table.Login" %>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Criteria"%>

<%
String u=request.getParameter("user");
        String p=request.getParameter("password");
        u=u.trim();
        p=p.trim();
        u=u.replace("'", "'\\'");
        p=p.replace("'", "'\\'");
            
             
        String q="select * from login where lid='"+u+"' and pass='"+p+"'";
        ResultSet rs=DAOLayer.selectData(q);
        try{
        if(rs.next())//valid login
        {
           HttpSession sess = request.getSession();
           sess.setAttribute("lid", u);
           String r=rs.getString(3);
           sess.setAttribute("role", r);
           RequestDispatcher rd;
           if(r.equalsIgnoreCase("User")){
              rd=request.getRequestDispatcher("User.jsp");
              rd.forward(request,response);
           }
           else{
              rd=request.getRequestDispatcher("admin.jsp");
              rd.forward(request, response);
           }
        }
        
        else//invalid login
        {
            request.setAttribute("msg", "INVALID USERID OR PASSWORD!");
            RequestDispatcher rd;
            rd = request.getRequestDispatcher("login.jsp");
            rd.forward(request, response);
        }
        }catch(Exception e){
            out.print("ERROR : "+e.getMessage());
        }
%>