<%@page import="java.sql.ResultSet"%>
<%
    String n=(String)session.getAttribute("lid");
    String r=(String)session.getAttribute("role");
    HttpSession sess = request.getSession(false);
 if(n!=null && sess!=null)  {
  if(r.equalsIgnoreCase("admin")){
    String q="select * from bill";
    ResultSet rs=jdbc.DAOLayer.selectData(q);
    if(!rs.next()){
        request.setAttribute("msg", "NO PENDING BOOKS TO BE DELIVERED.");
        RequestDispatcher rd;
        rd=request.getRequestDispatcher("viewOrders.jsp");
        rd.forward(request,response);
    }
    else{
        rs=jdbc.DAOLayer.selectData(q);
    }
    while(rs.next()){
        if(rs.getString(4).equals("PENDING"))
        {
            String id=rs.getString(2);
            double pr=rs.getDouble(3);
            String q1="select * from books where bid="+id;
            ResultSet rs1=jdbc.DAOLayer.selectData(q1);
            rs1.next();
            double qty=(pr/rs1.getDouble(6));
            if(qty-rs1.getInt(7)==0){
                String q2="delete from books where bid="+id;
                int x=jdbc.DAOLayer.updateData(q2);
            }
            else{
                double qnt=rs1.getInt(7)-qty;
                String q2="update books set quantity="+qnt+" where bid="+id;
                int x=jdbc.DAOLayer.updateData(q2);
            }
        String qq="update bill set status='DELIVERED' where bid="+id;
        int p=jdbc.DAOLayer.updateData(qq);
        request.setAttribute("msg", "UPDATED BOOKS!!");
              RequestDispatcher rd;
              rd=request.getRequestDispatcher("viewAll.jsp");
              rd.forward(request,response);
        }
    }
  }
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
