<%@page import="java.sql.ResultSet"%>
<%@page import="Global.DB"%>

<!DOCTYPE html>
<html lang="en">

    <!-- Basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">   
   
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
 
     <!-- Site Metas -->
    <title>Psycho</title>  
    <meta name="keywords" content="Psycho-Social">
    <meta name="description" content="Find out which posts are on trending. You?ll see where your audience is coming from and what they?re interested in and can send messages to your loved ones and keep them close.">
    <meta name="author" content="Ritik Aggarwal">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/title.png" type="image/x-icon" />
    <link rel="apple-touch-icon" href="images/psycho.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="style.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">
	<script src="js/modernizr.js"></script> <!-- Modernizr -->

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript">
            function check(f) {
                var nm=document.getElementById("a").value;
                
                var e1=document.getElementById("d1");
                var flag = true;
                if (nm == "") 
                {
                    e1.innerHTML="Username cant be empty";
                    flag = false;
                }
                else
                {
                    e1.innerHTML="";
                }
              
                return flag;

            }
        </script>
</head>
<body id="page-top" class="politics_version">

    <!-- LOADER -->
    <div id="preloader">
        <div id="main-ld">
			<div id="loader"></div>  
		</div>
    </div><!-- end loader -->
    <!-- END LOADER -->
	
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav" >
      <div class="container"  >
        <a class="navbar-brand js-scroll-trigger" href="#page-top">
			<img class="img-fluid" src="images/logo.png" alt="" style="width:750px;height:50px;"/>
		</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fa fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav text-uppercase ml-auto">
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger active" href="home.jsp">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#horoscope">What's New</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#team">Friends</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#blog">Messages</a>
            </li>
			<a class="nav-link js-scroll-trigger" href="#groups">Groups</a>
            </li>
			<li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="logout.jsp">Logout</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
	
	<section id="home" class="main-banner parallaxie" style="background: url('<%=session.getAttribute("img")%>')">
		<div class="heading">
			<h1>Welcome <%=session.getAttribute("uid")%></h1>			
			<h3 class="cd-headline clip is-full-width">
				<span>What you are wondering for  </span>
				<span class="cd-words-wrapper">
					<b class="is-visible">Friends</b>
					<b>Messages</b>
					<b>Groups</b>
					<b>Blogs</b>

				</span>
				
			</h3>
		</div>
	</section>

    <div id="horoscope" class="section wb">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="message-box">                        
                        <h2>Welcome</h2>
                        <p><b><i>Good to see you</i></b><br> </p>
                        <p>This is the time to rejoice, as this week is bringing in both prosperity and goodwill for you. You will be more accepting, and if you?re wise enough to utilize this time effectively, your productivity will know no bounds, you are going to do extraordinarily well, par-excellence. Job opportunities will keep knocking your door time and again throughout this period. You?ll be doing well in your relationships as well. When everything is going in your favour, there is no indifference to your financial commitments. Staying cool-headed and calm is quite beneficial and brings surprising outcomes. Entrepreneurs should put in a little more efforts, other than performance. Each and every move must be calculated. Stay career-oriented as your stars are seemingly bright. You are held high by the good fortune. Along with these, the very quintessential relationships of yours are making way for the new friends you are all set to welcome this week.

</p>
                    </div><!-- end messagebox -->
                </div><!-- end col -->

                <div class="col-md-6">
                    <div class="right-box-pro wow fadeIn">
                        <img src="<%=session.getAttribute("img")%>" alt="" class="img-fluid img-rounded">
                    </div><!-- end media -->
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end section -->
	
    
        <div id="team" class="section wb">
		<div class="container">
			<div class="section-title text-center">
				<h3>Friends</h3>
				<p>A best friend is someone who is there for you through thick and thin. It's someone who listens and understands you.</p>
			</div><!-- end title -->
		
			<div class="row">
				<div class="col-md-3 col-sm-6">
					<div class="friend">
						<div class="pic">
                                                    <a href="searchfrd.jsp#team">
                                                        <img src="images/7Fmb.gif"   >
                                                    </a>
						</div>
						<div class="team-content">
                                                        <a href="searchfrd.jsp#team">
							<h3 class="title">Search Friend</h3>
							 </a>
						</div>
					</div>
				</div>
				
				<div class="col-md-3 col-sm-6">
					<div class="friend">
                                           
						<div class="pic">
                                                    <a href="checkreq.jsp#team">
							<img src="images/walking_with_heavy_puzzle_7514.gif" >
                                                    </a>
						</div>
						<div class="team-content">
                                                    <a href="checkreq.jsp#team">
							<h3 class="title">Friends Requests</h3>
                                                    </a>
						</div>
                                            
					</div>
				</div>
				
				<div class="col-md-3 col-sm-6">
					<div class="friend">
						<div class="pic">
                                                    <a href="viewfrdlst.jsp#team">
							<img src="images/giphy.gif">
                                                    </a>
						</div>
						<div class="team-content">
                                                    <a href="viewfrdlst.jsp#team">
							<h3 class="title">Friend List</h3>
                                                    </a>
							
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>
	
	<div id="blog" class="section lb">
		<div class="container">
			<div class="section-title text-center">
                <h3>Messages</h3>
                <p>A usually short communication transmitted by words, signals, or other means from one person, station, or group to another.</p>
            </div><!-- end title -->
			
			<div class="row">
                <div class="col-md-4 col-sm-6">
                    <div class="pricingTable">
                        
                     <a href="messageviewprf.jsp?id=<%=request.getParameter("msgfrm")%>&img=<%=request.getParameter("img")%>&name=<%=request.getParameter("name")%>#team">
                         <div class="pricing-content">
                   <div class="col-md-9">
                       <div class="right-box-pro wow fadeIn" style="left:20%">
                        
                           <img src="<%=request.getParameter("img")%>" alt="" class="img-fluid img-rounded">
                    </div><!-- end media -->
                </div><!-- end col -->
                <br>
                            <h3 class="title"><%=request.getParameter("name")%></h3>
                                                      
                         </div></a>
                    </div>
                </div>

                <div class="col-md-4 col-sm-6">
                    <div class="pricingTable blue">
                        <svg x="0" y="0" viewBox="0 0 360 220">
                            <g>
                                <path fill="#28a9e2" d="M0.732,193.75c0,0,29.706,28.572,43.736-4.512c12.976-30.599,37.005-27.589,44.983-7.061
                                    c8.09,20.815,22.83,41.034,48.324,27.781c21.875-11.372,46.499,4.066,49.155,5.591c6.242,3.586,28.729,7.626,38.246-14.243
                                    s27.202-37.185,46.917-8.488c19.715,28.693,38.687,13.116,46.502,4.832c7.817-8.282,27.386-15.906,41.405,6.294V0H0.48
                                    L0.732,193.75z"></path>
                            </g>
                            <text transform="matrix(1 0 0 1 25.7256 60.2686)" fill="#fff" font-size="40.4489">Messages From:</text>
                            <text transform="matrix(0.9566 0 0 1 150.3096 110.9121)" fill="#fff" font-size="40.4489"><%=request.getParameter("name")%></text>
                        </svg>
                        <div class="pricing-content">
                                 <%
            try{
            String msgfrm=request.getParameter("msgfrm");
            String img=request.getParameter("img");
            String name=request.getParameter("name");
            ResultSet rs=new DB().execute("select msgdesc,msgdate,msgtime,msgid from tbmsg where msgtouserid='"+session.getAttribute("uid")+"'and msgfrmuserid='"+msgfrm+"' ");
            while(rs.next()){
          %>  
                        
                            <h1 class="title"><%=rs.getString("msgdesc")%></h1>
                            <ul class="pricing-content">
                                <li><b><%=rs.getString("msgtime")%></b>&nbsp;&nbsp;<%=rs.getString("msgdate")%></li>
                                <li><a href="delmsg?msgid=<%=rs.getString("msgid")%>&msgfrm=<%=msgfrm%>&img=<%=img%>&name=<%=name%>">Delete</a></li>
                            </ul>
                        
                        <% }%>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 col-sm-6">
                    <div class="pricingTable red">
                        <svg x="0" y="0" viewBox="0 0 360 220">
                            <g>
                                <path fill="#28a9e2" d="M0.732,193.75c0,0,29.706,28.572,43.736-4.512c12.976-30.599,37.005-27.589,44.983-7.061
                                    c8.09,20.815,22.83,41.034,48.324,27.781c21.875-11.372,46.499,4.066,49.155,5.591c6.242,3.586,28.729,7.626,38.246-14.243
                                    s27.202-37.185,46.917-8.488c19.715,28.693,38.687,13.116,46.502,4.832c7.817-8.282,27.386-15.906,41.405,6.294V0H0.48
                                    L0.732,193.75z"></path>
                            </g>
                            <text transform="matrix(1 0 0 1 25.7256 60.2686)" fill="#fff" font-size="40.4489">Messages By: </text>
                            <text transform="matrix(0.9566 0 0 1 150.3096 110.9121)" fill="#fff" font-size="40.4489">You</text>
                        </svg>
                        <div class="pricing-content">
                 <%
                rs=new DB().execute("select msgdesc,msgdate,msgtime,msgid from tbmsg where msgtouserid='"+msgfrm+"'and msgfrmuserid='"+session.getAttribute("uid")+"' ");
                       
                while(rs.next()){

                    %>
                        
                            <h3 class="title"><%=rs.getString("msgdesc")%></h3>
                            <ul class="pricing-content">
                                <li><b><%=rs.getString("msgtime")%></b>&nbsp;&nbsp;<%=rs.getString("msgdate")%></li>
                                <li><a href="delmsg?msgid=<%=rs.getString("msgid")%>&msgfrm=<%=msgfrm%>&img=<%=img%>&name=<%=name%>">Delete</a></li>
                                                           </ul>
                        
                        <% } %>
                    <form method="post" action="messages3?msgfrm=<%=msgfrm%>&img=<%=img%>&name=<%=name%>"  name="f1" onsubmit="return check(f1)">
                        <div class="col-lg-9 text-center" style="left:10%">
                        <div class="form-group">
                            <input class="form-control" id="a" name="Text2" type="text" placeholder="Message" required="required" data-validation-required-message="Please enter Message">
                            <span  class="help-block text-danger" id="d1"></span>
			</div>
                        <input class="sim-btn hvr-bounce-to-top pricingTable-signup" type="submit" value="Send">
                      </form>
                        </div>
                        </div>
                    </div>
                </div>
                          <%


}
catch(Exception e){System.out.println();}


%>
            </div>
			
		</div>
	</div>
	<div id="groups" class="section wb">
		<div class="container">
			<div class="section-title text-center">
				<h3>Groups</h3>
				<p>A group is a collection of individuals who have relations to one another that make them interdependent to some significant degree. .We can create,join groups as much as we want to without any restriction.</p>
			</div><!-- end title -->
		
			<div class="row">
				<div class="col-md-3 col-sm-6">
					<div class="group">
                                           
                                                <div class="pic">
                                                     <a href="creategrp.jsp#groups">
                                                         <img src="images/giphy1.gif"></a>
                                                </div>
						<div class="team-content">
							<h3 class="title">Create Group</h3>
							
						</div>
					</div>
				</div>
				
				<div class="col-md-3 col-sm-6">
					<div class="group">
						<div class="pic">
                                                    <a href="searchgrp.jsp#groups">
                                                        <img src="images/giph.gif"></a>
						</div>
						<div class="team-content">
							<h3 class="title">Search</h3>
							
						</div>
					</div>
				</div>
				
				<div class="col-md-3 col-sm-6">
					<div class="group">
						<div class="pic"><a href="viewjoingrp.jsp#groups">
                                                        <img src="images/group_therapy_md_wm_v2.gif"></a>
						</div>
						<div class="team-content">
							<h3 class="title">Joined Groups</h3>
							
						</div>
					</div>
				</div>
				
				
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
    <div class="copyrights">
        <div class="container">
            <div class="footer-distributed">
				<a href="#"><img src="images/logo.png" alt="" /></a>
                <div class="footer-center">
                    <p class="footer-links">
                        <a href="editprf.jsp">Edit Profile</a>
                        <a href="editpwd.jsp">Change Password</a>
                        <a href="editpic.jsp">Change Photo</a>
                        <a href="secsettings.jsp">Security Settings</a>
                        <a href="#">Faq</a>
                    </p>
               <!--      <p class="footer-company-name">All Rights Reserved. &copy; 2018 <a href="#">OnNext</a> Design By : 
					<a href="https://html.design/">html design</a></p> -->
                </div>
            </div>
        </div><!-- end container -->
    </div><!-- end copyrights -->

    <a href="#" id="scroll-to-top" class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>

    <!-- ALL JS FILES -->
    <script src="js/all.js"></script>
	<!-- Camera Slider -->
	<script src="js/jquery.mobile.customized.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script> 
	<script src="js/parallaxie.js"></script>
	<script src="js/headline.js"></script>
	<!-- Contact form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>
    <!-- ALL PLUGINS -->
    <script src="js/custom.js"></script>
    <script src="js/jquery.vide.js"></script>

</body>
</html>