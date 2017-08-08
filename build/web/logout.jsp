<%
HttpSession s = request.getSession(false);
        if(s!=null){
            s.invalidate();
            RequestDispatcher rd;
            rd=request.getRequestDispatcher("login.jsp");
            rd.forward(request, response);
         }
        else{
            request.setAttribute("msg", "YOU ARE ALREADY LOGGED OUT.");
            RequestDispatcher rd;
            rd=request.getRequestDispatcher("login.jsp");
            rd.forward(request, response);
        }
%>