<%@page import="Global.DB,java.sql.*"  %>

                     <%
    try {
         
          String id=request.getParameter("Text1");
          String pwd=request.getParameter("Password1");
          String sq=request.getParameter("Select1");
          String sa=request.getParameter("Text3");
          String gen=request.getParameter("Radio1");
          String img="images/th.jfif";
            new DB().update("insert into tbuser(userid,usrpwd,usrsecques,usrsecans,usrgen,usrimg) values('"+id+"','"+pwd+"','"+sq+"','"+sa+"','"+gen+"','"+img+"')");
            response.sendRedirect("login.jsp");
            
            
           
        }
        catch(Exception e){
        System.out.println(e);}
            
    
    %>
			