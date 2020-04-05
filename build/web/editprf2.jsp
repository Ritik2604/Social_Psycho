<%@page import="java.sql.ResultSet"%>
<%@page import="Global.DB"%>
<%
    new DB().update("update tbuser set usrname='"+request.getParameter("Text1")+"',usradd='"+request.getParameter("Text2")+"',usrmob='"+request.getParameter("Text3")+"',usrqualification='"+request.getParameter("Text5")+"',usrinterest='"+request.getParameter("Text6")+"',usrdob='"+request.getParameter("Text7")+"' where userid='"+session.getAttribute("uid")+"' ");
    response.sendRedirect("editprf.jsp");
%>