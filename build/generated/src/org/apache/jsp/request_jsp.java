package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import Global.DB;

public final class request_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("    <!-- Basic -->\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">   \n");
      out.write("   \n");
      out.write("    <!-- Mobile Metas -->\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no\">\n");
      out.write(" \n");
      out.write("     <!-- Site Metas -->\n");
      out.write("    <title>Psycho</title>  \n");
      out.write("    <meta name=\"keywords\" content=\"Psycho-Social\">\n");
      out.write("    <meta name=\"description\" content=\"Find out which posts are on trending. You?ll see where your audience is coming from and what they?re interested in and can send messages to your loved ones and keep them close.\">\n");
      out.write("    <meta name=\"author\" content=\"Ritik Aggarwal\">\n");
      out.write("\n");
      out.write("    <!-- Site Icons -->\n");
      out.write("    <link rel=\"shortcut icon\" href=\"images/title.png\" type=\"image/x-icon\" />\n");
      out.write("    <link rel=\"apple-touch-icon\" href=\"images/psycho.png\">\n");
      out.write("\n");
      out.write("    <!-- Bootstrap CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("    <!-- Site CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("    <!-- Responsive CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/responsive.css\">\n");
      out.write("    <!-- Custom CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/custom.css\">\n");
      out.write("\t<script src=\"js/modernizr.js\"></script> <!-- Modernizr -->\n");
      out.write("\n");
      out.write("    <!--[if lt IE 9]>\n");
      out.write("      <script src=\"https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js\"></script>\n");
      out.write("      <script src=\"https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js\"></script>\n");
      out.write("    <![endif]-->\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body id=\"page-top\" class=\"politics_version\">\n");
      out.write("\n");
      out.write("    <!-- LOADER -->\n");
      out.write("    <div id=\"preloader\">\n");
      out.write("        <div id=\"main-ld\">\n");
      out.write("\t\t\t<div id=\"loader\"></div>  \n");
      out.write("\t\t</div>\n");
      out.write("    </div><!-- end loader -->\n");
      out.write("    <!-- END LOADER -->\n");
      out.write("\t\n");
      out.write("    <!-- Navigation -->\n");
      out.write("    <nav class=\"navbar navbar-expand-lg navbar-dark fixed-top\" id=\"mainNav\" >\n");
      out.write("      <div class=\"container\"  >\n");
      out.write("        <a class=\"navbar-brand js-scroll-trigger\" href=\"#page-top\">\n");
      out.write("\t\t\t<img class=\"img-fluid\" src=\"images/logo.png\" alt=\"\" style=\"width:750px;height:50px;\"/>\n");
      out.write("\t\t</a>\n");
      out.write("        <button class=\"navbar-toggler navbar-toggler-right\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarResponsive\" aria-controls=\"navbarResponsive\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("          Menu\n");
      out.write("          <i class=\"fa fa-bars\"></i>\n");
      out.write("        </button>\n");
      out.write("        <div class=\"collapse navbar-collapse\" id=\"navbarResponsive\">\n");
      out.write("          <ul class=\"navbar-nav text-uppercase ml-auto\">\n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("              <a class=\"nav-link js-scroll-trigger active\" href=\"#home\">Home</a>\n");
      out.write("            </li>\n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("              <a class=\"nav-link js-scroll-trigger\" href=\"#horoscope\">What's New</a>\n");
      out.write("            </li>\n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("              <a class=\"nav-link js-scroll-trigger\" href=\"#team\">Friends</a>\n");
      out.write("            </li>\n");
      out.write("            <li class=\"nav-item\">\n");
      out.write("              <a class=\"nav-link js-scroll-trigger\" href=\"#blog\">Messages</a>\n");
      out.write("            </li>\n");
      out.write("\t\t\t<a class=\"nav-link js-scroll-trigger\" href=\"#groups\">Groups</a>\n");
      out.write("            </li>\n");
      out.write("\t\t\t<li class=\"nav-item\">\n");
      out.write("              <a class=\"nav-link js-scroll-trigger\" href=\"logout.jsp\">Logout</a>\n");
      out.write("            </li>\n");
      out.write("          </ul>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </nav>\n");
      out.write("\t\n");
      out.write("\t<section id=\"home\" class=\"main-banner parallaxie\" style=\"background: url('");
      out.print(session.getAttribute("img"));
      out.write("')\">\n");
      out.write("\t\t<div class=\"heading\">\n");
      out.write("\t\t\t<h1>Welcome ");
      out.print(session.getAttribute("uid"));
      out.write("</h1>\t\t\t\n");
      out.write("\t\t\t<h3 class=\"cd-headline clip is-full-width\">\n");
      out.write("\t\t\t\t<span>What you are wondering for  </span>\n");
      out.write("\t\t\t\t<span class=\"cd-words-wrapper\">\n");
      out.write("\t\t\t\t\t<b class=\"is-visible\">Friends</b>\n");
      out.write("\t\t\t\t\t<b>Messages</b>\n");
      out.write("\t\t\t\t\t<b>Groups</b>\n");
      out.write("\t\t\t\t\t<b>Blogs</b>\n");
      out.write("\n");
      out.write("\t\t\t\t</span>\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t</h3>\n");
      out.write("\t\t</div>\n");
      out.write("\t</section>\n");
      out.write("\n");
      out.write("    <div id=\"horoscope\" class=\"section wb\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-6\">\n");
      out.write("                    <div class=\"message-box\">                        \n");
      out.write("                        <h2>Welcome</h2>\n");
      out.write("                        <p><b><i>Good to see you</i></b><br> </p>\n");
      out.write("                        <p>This is the time to rejoice, as this week is bringing in both prosperity and goodwill for you. You will be more accepting, and if you?re wise enough to utilize this time effectively, your productivity will know no bounds, you are going to do extraordinarily well, par-excellence. Job opportunities will keep knocking your door time and again throughout this period. You?ll be doing well in your relationships as well. When everything is going in your favour, there is no indifference to your financial commitments. Staying cool-headed and calm is quite beneficial and brings surprising outcomes. Entrepreneurs should put in a little more efforts, other than performance. Each and every move must be calculated. Stay career-oriented as your stars are seemingly bright. You are held high by the good fortune. Along with these, the very quintessential relationships of yours are making way for the new friends you are all set to welcome this week.\n");
      out.write("\n");
      out.write("</p>\n");
      out.write("                    </div><!-- end messagebox -->\n");
      out.write("                </div><!-- end col -->\n");
      out.write("\n");
      out.write("                <div class=\"col-md-6\">\n");
      out.write("                    <div class=\"right-box-pro wow fadeIn\">\n");
      out.write("                        <img src=\"");
      out.print(session.getAttribute("img"));
      out.write("\" alt=\"\" class=\"img-fluid img-rounded\">\n");
      out.write("                    </div><!-- end media -->\n");
      out.write("                </div><!-- end col -->\n");
      out.write("            </div><!-- end row -->\n");
      out.write("        </div><!-- end container -->\n");
      out.write("    </div><!-- end section -->\n");
      out.write("\t\n");
      out.write("    \n");
      out.write("        <div id=\"team\" class=\"section wb\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<div class=\"section-title text-center\">\n");
      out.write("\t\t\t\t<h3>Friends</h3>\n");
      out.write("\t\t\t\t<p>A best friend is someone who is there for you through thick and thin. It's someone who listens and understands you.</p>\n");
      out.write("\t\t\t</div><!-- end title -->\n");
      out.write("\t\t\n");
      out.write("\t\t\t<div class=\"row\">\n");
      out.write("                             ");

                try{
                new DB().update("insert into tbfriend values("+ new DB().generateID()+",'"+session.getAttribute("uid")+"','"+request.getParameter("id")+"',0)");
                }
                catch(Exception e){System.out.println(e);}
            
      out.write("\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t<div id=\"team\" class=\"section wb\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<div class=\"section-title text-center\">\n");
      out.write("                                    <h3 >Request Sent Successfully</h3><br>\n");
      out.write("                                        <div class=\"col-lg-12 text-center\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<div id=\"success\"></div>\n");
      out.write("                                                                        <button  class=\"sim-btn hvr-bounce-to-top\" type=\"submit\"><a href=\"searchfrd.jsp#team\" style=\" color: white\">Back</button>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("                        </div><!-- end title --></div></div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t\n");
      out.write("\t<div id=\"blog\" class=\"section lb\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<div class=\"section-title text-center\">\n");
      out.write("                <h3>Messages</h3>\n");
      out.write("                <p>A usually short communication transmitted by words, signals, or other means from one person, station, or group to another.</p>\n");
      out.write("            </div><!-- end title -->\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t<div class=\"row\">\n");
      out.write("                              ");
 
                                                                                                try {
                                                                                                    ResultSet rs = new DB().execute("select a.usrname, a.usrimg,b.msgid,b.msgfrmuserid,b.msgtouserid,b.msgdesc,b.msgdate,b.msgtime from tbuser a,tbmsg b where a.userid=b.msgfrmuserid and b.msgtouserid='" + (String) session.getAttribute("uid") + "' group by msgfrmuserid");
                                                                                                   
                                                                                                   
                                                                                                   if(!rs.next()){
                                                                                                        
                                                                                                       
      out.write("\n");
      out.write("                                                                                                       <div class=\"section-title text-center\">\n");
      out.write("                                                                                                           <br><br><br><br><br><h3 >No Messages Found</h3><br><br><br><br><br>\n");
      out.write("                \n");
      out.write("            </div><!-- end title -->\n");
      out.write("            ");
                                                               }else{ 
                                                                                                    do { 
                                                                                            
      out.write("\n");
      out.write("\t\t\t\t<div class=\"col-md-4 col-sm-6 col-lg-4\">\n");
      out.write("\t\t\t\t\t<div class=\"post-box\">\n");
      out.write("\t\t\t\t\t   <a href=\"messages2.jsp?msgfrm=");
      out.print(rs.getString("msgfrmuserid"));
      out.write("&img=");
      out.print(rs.getString("usrimg"));
      out.write("#blog\">\n");
      out.write("\t\n");
      out.write("                                            <div class=\"post-thumb\">\n");
      out.write("                                                        <img src=\"");
      out.print(rs.getString("usrimg"));
      out.write("\" class=\"img-fluid\" alt=\"post-img\" />\n");
      out.write("\t\t\t\t\t\t\t<div class=\"date\">\n");
      out.write("\t\t\t\t\t\t\t\t<span>By:</span>\n");
      out.write("\t\t\t\t\t\t\t\t<span>");
      out.print(rs.getString("msgfrmuserid"));
      out.write("</span>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("                                            </div></a>\n");
      out.write("\t\t\t\t\t\t<div class=\"post-info\">\n");
      out.write("\t\t\t\t\t\t\t<h4>");
      out.print(rs.getString("usrname"));
      out.write("</h4>\n");
      out.write("\t\t\t\t\t\t\t<ul>\n");
      out.write("                                <li></li>\n");
      out.write("                                <li>Last Seen: ");
      out.print(rs.getString("msgtime"));
      out.write("</li>\n");
      out.write("                                <li>&nbsp;&nbsp; ");
      out.print(rs.getString("msgdate"));
      out.write("</li>\n");
      out.write("                            </ul>\n");
      out.write("\t\t\t\t\t\t\t<p></p>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("                                ");

                                                                                                        }while (rs.next());
                                                                                                         }                                       
                                                                                                    } catch (Exception e) {
                                                                                                        System.out.print(e);
                                                                                                    }
                                
                                
      out.write("\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t<div id=\"groups\" class=\"section wb\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<div class=\"section-title text-center\">\n");
      out.write("\t\t\t\t<h3>Groups</h3>\n");
      out.write("\t\t\t\t<p>A group is a collection of individuals who have relations to one another that make them interdependent to some significant degree. .We can create,join groups as much as we want to without any restriction.</p>\n");
      out.write("\t\t\t</div><!-- end title -->\n");
      out.write("\t\t\n");
      out.write("\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t<div class=\"col-md-3 col-sm-6\">\n");
      out.write("\t\t\t\t\t<div class=\"group\">\n");
      out.write("                                           \n");
      out.write("                                                <div class=\"pic\">\n");
      out.write("                                                     <a href=\"creategrp.jsp#groups\">\n");
      out.write("                                                         <img src=\"images/giphy1.gif\"></a>\n");
      out.write("                                                </div>\n");
      out.write("\t\t\t\t\t\t<div class=\"team-content\">\n");
      out.write("\t\t\t\t\t\t\t<h3 class=\"title\">Create Group</h3>\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t<div class=\"col-md-3 col-sm-6\">\n");
      out.write("\t\t\t\t\t<div class=\"group\">\n");
      out.write("\t\t\t\t\t\t<div class=\"pic\">\n");
      out.write("                                                    <a href=\"searchgrp.jsp#groups\">\n");
      out.write("                                                        <img src=\"images/giph.gif\"></a>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"team-content\">\n");
      out.write("\t\t\t\t\t\t\t<h3 class=\"title\">Search</h3>\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t<div class=\"col-md-3 col-sm-6\">\n");
      out.write("\t\t\t\t\t<div class=\"group\">\n");
      out.write("\t\t\t\t\t\t<div class=\"pic\"><a href=\"viewjoingrp.jsp#groups\">\n");
      out.write("                                                        <img src=\"images/group_therapy_md_wm_v2.gif\"></a>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"team-content\">\n");
      out.write("\t\t\t\t\t\t\t<h3 class=\"title\">Joined Groups</h3>\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t\n");
      out.write("\t\n");
      out.write("    <div class=\"copyrights\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"footer-distributed\">\n");
      out.write("\t\t\t\t<a href=\"#\"><img src=\"images/logo.png\" alt=\"\" /></a>\n");
      out.write("                <div class=\"footer-center\">\n");
      out.write("                    <p class=\"footer-links\">\n");
      out.write("                        <a href=\"editprf.jsp\">Edit Profile</a>\n");
      out.write("                        <a href=\"editpwd.jsp\">Change Password</a>\n");
      out.write("                        <a href=\"editpic.jsp\">Change Photo</a>\n");
      out.write("                        <a href=\"secsettings.jsp\">Security Settings</a>\n");
      out.write("                        <a href=\"#\">Faq</a>\n");
      out.write("                    </p>\n");
      out.write("               <!--      <p class=\"footer-company-name\">All Rights Reserved. &copy; 2018 <a href=\"#\">OnNext</a> Design By : \n");
      out.write("\t\t\t\t\t<a href=\"https://html.design/\">html design</a></p> -->\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div><!-- end container -->\n");
      out.write("    </div><!-- end copyrights -->\n");
      out.write("\n");
      out.write("    <a href=\"#\" id=\"scroll-to-top\" class=\"dmtop global-radius\"><i class=\"fa fa-angle-up\"></i></a>\n");
      out.write("\n");
      out.write("    <!-- ALL JS FILES -->\n");
      out.write("    <script src=\"js/all.js\"></script>\n");
      out.write("\t<!-- Camera Slider -->\n");
      out.write("\t<script src=\"js/jquery.mobile.customized.min.js\"></script>\n");
      out.write("\t<script src=\"js/jquery.easing.1.3.js\"></script> \n");
      out.write("\t<script src=\"js/parallaxie.js\"></script>\n");
      out.write("\t<script src=\"js/headline.js\"></script>\n");
      out.write("\t<!-- Contact form JavaScript -->\n");
      out.write("    <script src=\"js/jqBootstrapValidation.js\"></script>\n");
      out.write("    <script src=\"js/contact_me.js\"></script>\n");
      out.write("    <!-- ALL PLUGINS -->\n");
      out.write("    <script src=\"js/custom.js\"></script>\n");
      out.write("    <script src=\"js/jquery.vide.js\"></script>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
