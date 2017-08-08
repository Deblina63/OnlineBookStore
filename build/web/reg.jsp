<%@page import="jdbc.DAOLayer"%>
<%@page import="java.sql.ResultSet"%>
<%
        String l=request.getParameter("lid");
        String p=request.getParameter("pass");
        String cp=request.getParameter("cpass");
        p=p.trim();
        cp=cp.trim();
        p=p.replace("'", "'\\'");
        cp=cp.replace("'", "'\\'");
        l=l.trim();
        l=l.replace("'","'\\'");
        
        String q1="select * from login where lid='"+l+"'";
        ResultSet rs=DAOLayer.selectData(q1);
        
            if(rs.next()){
                request.setAttribute("msg", "ID ALREADY EXISTS! Try again...");
                RequestDispatcher rd=request.getRequestDispatcher("register.jsp");
                rd.forward(request,response); 
            }
        else
        {
            if(p.length()<5){
                request.setAttribute("msg", "PASSWORD MUST BE OF AT LEAST 5 CHARACTERS! Try again...");
                RequestDispatcher rd=request.getRequestDispatcher("register.jsp");
                rd.forward(request,response); 
                }
            else{
                if(p.equals(cp)==false){
                request.setAttribute("msg", "CONFIRM PASSWORD DOESNOT MATCH! Try again...");
                RequestDispatcher rd=request.getRequestDispatcher("register.jsp");
                rd.forward(request,response); 
                }
                else{
                    String q="insert into login values('"+l+"','"+p+"','USER',now())";
                    int i=DAOLayer.updateData(q);
                    if(i>0){
                        request.setAttribute("msg", "SIGNUP SUCCESSFUL.. PLEASE LOGIN TO CONTINUE..");
                        RequestDispatcher rd=request.getRequestDispatcher("register.jsp");
                        rd.forward(request,response); 
                        }
                    
                }
                    
                
            }
            
            }
            %>