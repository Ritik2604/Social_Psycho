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
                    e1.innerHTML="Blog name field cant be empty";
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
                              <% 
                                                                                                try {
                                                                                                    ResultSet rs = new DB().execute("select a.usrname, a.usrimg,b.msgid,b.msgfrmuserid,b.msgtouserid,b.msgdesc,b.msgdate,b.msgtime from tbuser a,tbmsg b where a.userid=b.msgfrmuserid and b.msgtouserid='" + (String) session.getAttribute("uid") + "' group by msgfrmuserid");
                                                                                                   
                                                                                                   
                                                                                                   if(!rs.next()){
                                                                                                        
                                                                                                       %>
                                                                                                       <div class="section-title text-center">
                                                                                                           <br><br><br><br><br><h3 >No Messages Found</h3><br><br><br><br><br>
                
            </div><!-- end title -->
            <%                                                               }else{ 
                                                                                                    do { 
                                                                                            %>
				<div class="col-md-4 col-sm-6 col-lg-4">
					<div class="post-box">
					   <a href="messages2.jsp?msgfrm=<%=rs.getString("msgfrmuserid")%>&img=<%=rs.getString("usrimg")%>&name=<%=rs.getString("usrname")%>#blog">
	
                                            <div class="post-thumb">
                                                        <img src="<%=rs.getString("usrimg")%>" class="img-fluid" alt="post-img" />
							<div class="date">
								<span>By:</span>
								<span><%=rs.getString("msgfrmuserid")%></span>
							</div>
                                            </div></a>
						<div class="post-info">
							<h4><%=rs.getString("usrname")%></h4>
							<ul>
                                <li></li>
                                <li>Last Seen: <%=rs.getString("msgtime")%></li>
                                <li>&nbsp;&nbsp; <%=rs.getString("msgdate")%></li>
                            </ul>
							<p></p>
						</div>
					</div>
				</div>
                                <%
                                                                                                        }while (rs.next());
                                                                                                         }                                       
                                                                                                    } catch (Exception e) {
                                                                                                        System.out.print(e);
                                                                                                    }
                                
                                %>
			</div>
			
		</div>
	</div><%> 
	<div id="groups" class="section wb">
            <div class="container">
			<div class="section-title text-center">
				<h3>Blog</h3>
				<p>A blog is an online journal displaying information in the reverse chronological order, with the latest posts appearing first. It is a platform where a writer or even a group of writers share their views on an individual subject.</p>
			</div><!-- end title -->
                        <div class="row">
				<div class="col-md-12">
                                            <div class="contact_form">
                        <div id="message"></div>
                        <br><br<br>
                                               <form  action="createblog2" name="f1" onsubmit="return check(f1)" method="post" novalidate="novalidate">
                                                   <br><br>
								<div class="col-md-6">
									<div class="form-group" style="left:50%">
                                                                            <input  name="Text1"class="form-control" id="a" placeholder="Blog Name" required="required" data-validation-required-message="Please enter a group name.">                                                         
                                                                            <span id="d1" class="help-block text-danger"></span>
									</div>
				
								</div>
								
								<div class="clearfix"></div>
								<div class="col-lg-12 text-center">									                                                                       
                                                                    <input  class="sim-btn hvr-bounce-to-top" type="submit" value="Create">
                                                                                                     <a href="home.jsp#groups" class="sim-btn hvr-bounce-to-top" >Back</a>			
                                                                </div>
                                               </form><br><br>
                                            </div>
				</div>
				
				
				
				
					</div>
                        
                        
                        
                        
            </div><br><br>
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