<%
HttpSession sess = request.getSession(false);
        if(sess!=null && sess.getAttribute("lid")!=null){
            String r=(String)sess.getAttribute("role");
            if(r.equalsIgnoreCase("admin")){
            String n = request.getParameter("name");
            String t = request.getParameter("type");
            String p = request.getParameter("publisher");
            String w=request.getParameter("writer");
            String q=request.getParameter("qty");
            String pr=request.getParameter("price");
            n=n.trim();
            t=t.trim();
            p=p.trim();
            n=n.replace("'", "'\\'");
            t=t.replace("'", "'\\'");
            p=p.replace("'", "'\\'");
            w=w.trim();
            q=q.trim();
            pr=pr.trim();
            w=w.replace("'", "'\\'");
            q=q.replace("'", "'\\'");
            pr=pr.replace("'", "'\\'");
            String query="insert into books(name,type,publisher,writer,price,quantity) values('"+n+"','"+t+"','"+p+"','"+w+"',"+pr+","+q+")";
            
                int i=jdbc.DAOLayer.updateData(query);
                
                RequestDispatcher rd;
                
                if(i>0){
                    request.setAttribute("msg","BOOK ADDED");
                    rd = request.getRequestDispatcher("addBook.jsp");
                rd.forward(request, response);
                }
                else
                {  request.setAttribute("msg","BOOK NOT ADDED");
                rd = request.getRequestDispatcher("addBook.jsp");
                rd.forward(request, response);
                }
            }
        
        else{
                request.setAttribute("msg","ACCESS DENIED");
              RequestDispatcher rd;
              rd=request.getRequestDispatcher("login.html");
              
              
              rd.forward(request,response);
            }
        }
        else{
            request.setAttribute("msg","PLEASE LOGIN TO CONTINUE..");
              RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
              rd.forward(request,response); 
              
              
        }
        %>