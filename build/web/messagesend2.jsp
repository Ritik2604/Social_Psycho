<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Global.DB"%>
<%
        try{
        int msgid=new DB().newID("msgid","tbmsg");
        String uid=(String)session.getAttribute("uid");
        String fid=(String)session.getAttribute("fid");
        String msg=request.getParameter("TextArea1");
        System.out.println(msg);
        Date d=new Date();
        SimpleDateFormat sdf=new SimpleDateFormat("dd-MM-yy");
        String date=sdf.format(d);
        SimpleDateFormat stf=new SimpleDateFormat("hh:mm:ss a");
        String time=stf.format(d);
        new DB().update("insert into tbmsg values("+msgid+",'"+uid+"','"+fid+"','"+msg+"','"+date+"','"+time+"')");
       response.sendRedirect("messagesend.jsp?fid="+ fid+"#team");
        }
        catch(Exception e){System.out.println(e);}

    %>