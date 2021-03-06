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
               var ps=document.getElementById("b").value;
                var e1=document.getElementById("d1");
                var e2=document.getElementById("d2");
                var flag = true;
                if (nm == "") 
                {
                    e1.innerHTML="Username Field cant be empty";
                    flag = false;
                }
                else
                {
                    e1.innerHTML="";
                }
                 if (ps!=nm) 
                {
                    e2.innerHTML="Password doesnt match";
                    flag = false;
                }
                else
                {
                    e2.innerHTML="";
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
        <a class="navbar-brand js-scroll-trigger" href="Welcome.html">
			<img class="img-fluid" src="images/logo.png" alt="" style="width:750px;height:50px;"/>
		</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fa fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav text-uppercase ml-auto">
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger active" href="#home">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#about">About Us</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#services">Features</a>
            </li>
            
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#team">Owner</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#contact">Contact Us</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
	
	<section id="home" class="main-banner parallaxie" style="background: url('uploads/banner-01.jpg')">
		<div class="heading">
                  
                    
            <div  class="row">
                  <%
        try{
        String id=request.getParameter("uid");
        String ans=request.getParameter("Text1");
        System.out.println(id+"     "+ans);
        ResultSet rs=new DB().execute(" select userid from tbuser where userid='"+id+"'and usrsecans='"+ans+"'");
        if(rs.next()){
    
    
    
    
    
    %>

                <div class="col-md-6"  style=" left: 400px">
                    <div class="contact_form" >
                        <div class="section-title" >
                         <h3>Forgot Password</h3>
                        <p>You have to cram your password because it is most important thing for your account.</p>
                    </div><!-- end title -->
                    <div id="message" ></div>
                    <form method="post" name="f1" action="forgot4.jsp"  onsubmit="return check(f1)" novalidate="novalidate">
							<div class="row" >
								<div   class="col-md-6" >
									<div style="  left: 175px " class="form-group">
                                                                            <input class="form-control" name="Text1" type="password" id="a"  placeholder="New Password" required="required" data-validation-required-message="Please enter Password.">
										<span class="help-block text-danger" id="d1"></span>
									</div>
									<div style="  left: 175px " class="form-group">
                                                                            <input class="form-control" name="Text2" type="password" id="b"  placeholder="Confirm Password" required="required" data-validation-required-message="Please enter same password to confirm.">
										<span class="help-block text-danger" id="d2"></span>
									</div>
									
								</div>
								
								<div class="clearfix"></div>
								<div class="col-lg-12 text-center">
									
                                                                    <button   name="Submit1" class="sim-btn hvr-bounce-to-top"  type="submit">Change</button>
								</div>
							</div>
						</form>
                    </div>
                </div><!-- end col -->
                <% }
else{
    %>
              <div class="col-md-6"  style=" left: 400px">
                    <div class="contact_form" >
          
                        <div class="section-title" >
        
                         <h3>Wrong Answer Please Try Again</h3>
                        <p>You have to remember your Security Answer then how you can change password.You have a another chance .</p>
                    </div><!-- end title -->
                    <div id="message" ></div>
				<div class="btn-ber">
					<a class="get_btn hvr-bounce-to-top" href="forgot.html">Try Again</a>
					<a class="learn_btn hvr-bounce-to-top" href="#about">Learn More</a>
				</div>
			</h3>
		</div>
                        </div><!-- end col -->
             <%

}

}catch(Exception e){System.out.println(e);}



%>
            </div><!-- end row -->
				
                    </h3>
		</div>
	</section>

    <div id="about" class="section wb">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="message-box">                        
                        <h2>Welcome to Psycho</h2>
                        <p><b><i>DO GOOD RELAX</i></b><br> Join the groups, Explore new things.Find out which posts are on trending. You?ll see where your audience is coming from and what they?re interested in.Send messages to your friends,loved ones and keep them close. </p>
						<p>It has been able to capture the imagination of millions of people across the world by giving them the ability to communicate and share instantly with individuals and groups. Blogs are like bonuses.</p>

                        <a href="#contact" class="sim-btn hvr-bounce-to-top"><span>Contact Us</span></a>
                    </div><!-- end messagebox -->
                </div><!-- end col -->

                <div class="col-md-6">
                    <div class="right-box-pro wow fadeIn">
                        <img src="uploads/about_04.jpg" alt="" class="img-fluid img-rounded">
                    </div><!-- end media -->
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end section -->
	
    <div id="services" class="section lb">
        <div class="container">
            <div class="section-title text-center">
                <h3>Features</h3>
                <p></p>
            </div><!-- end title -->

            <div class="row">
				<div class="col-md-4">
                    <div class="services-inner-box">
						<div class="ser-icon">
							<i class="flaticon-seo"></i>
						</div>
						<h2>Groups</h2>
						<p>A group is a collection of individuals who have relations to one another that make them interdependent to some significant degree. As so defined, the term group refers to a class of social entities having in common the property of interdependence among their constituent members.We can create,join groups as much as we want to without any restriction.</p>
					</div>
                </div><!-- end col -->
               
				<div class="col-md-4">
                    <div class="services-inner-box">
						<div class="ser-icon">
							<i class="flaticon-development"></i>
						</div>
						<h2>Friends</h2>
						<p>Friends are people that can be looked up to and trusted. Usually friends have similar interests. A friend is one who admires a person's skill and helps or encourages them to make the right choices and do not get into any trouble at all.We can add or delete friends,view their profile.    </p>
					</div>
                </div><!-- end col -->
				<div class="col-md-4">
                    <div class="services-inner-box">
						<div class="ser-icon">
							<i class="flaticon-discuss-issue"></i>
						</div>
						<h2>Messages</h2>
						<p>A message is a discrete unit of communication intended by the source for consumption by some recipient or group of recipients.  An interactive exchange of messages forms a conversation.We can send,delete and receive from our friends privately which are far apart from us. It basically connect two persons present in remote areas. </p>
					</div>
                </div><!-- end col -->
				<!-- <div class="col-md-4">
                    <div class="services-inner-box">
						<div class="ser-icon">
							<i class="flaticon-idea"></i>
						</div>
						<h2>Web Idea</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
					</div>
                </div><!-- end col --> -->
				<div class="col-md-4">
                    <div class="services-inner-box">
						<div class="ser-icon">
							<i class="flaticon-idea-1"></i>
						</div>
						<h2>Blogs</h2>
						<p>A blog is an online journal displaying information in the reverse chronological order, with the latest posts appearing first. It is a platform where a writer or even a group of writers share their views on an individual subject.</p>
					</div>
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end section -->
	
	
	
	
	
	<div id="team" class="section wb">
		<div class="container">
			<div class="section-title text-center">
				<h3>Owner of Website</h3>
				<p>Passed very hard time while making this website runnable.Website using JSP pages and little touch of Jquery to look website little cachy.</p>
			</div><!-- end title -->
		
			<div class="row">
				<div class="col-md-3 col-sm-6">
					<div class="our-team">
						<div class="pic">
							<img src="uploads/img-2.jpeg">
						</div>
						<div class="team-content">
							<h3 class="title">Ritik Aggarwal</h3>
							<span class="post">Full Stack Developer</span>
							<ul class="social">
								<li><a href="#" class="fa fa-facebook"></a></li>
								<li><a href="#" class="fa fa-twitter"></a></li>
								<li><a href="#" class="fa fa-google-plus"></a></li>
								<li><a href="#" class="fa fa-skype"></a></li>
							</ul>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>
	
	

    <div id="contact" class="section db">
        <div class="container">
            <div class="section-title text-center">
                <h3>Contact</h3>
                <p>Feel free to drop a mail.Any complaints,suggestion will be taken into account.Our members are readily available to answer them.</p>
            </div><!-- end title -->

            <div class="row">
                <div class="col-md-12">
                    <div class="contact_form">
                        <div id="message"></div>
                        <form id="contactForm" name="sentMessage" novalidate="novalidate">
							<div class="row">
								<div class="col-md-6">
									<div class="form-group">
										<input class="form-control" id="name" type="text" placeholder="Your Name" required="required" data-validation-required-message="Please enter your name.">
										<p class="help-block text-danger"></p>
									</div>
									<div class="form-group">
										<input class="form-control" id="email" type="email" placeholder="Your Email" required="required" data-validation-required-message="Please enter your email address.">
										<p class="help-block text-danger"></p>
									</div>
									<div class="form-group">
										<input class="form-control" id="phone" type="tel" placeholder="Your Phone" required="required" data-validation-required-message="Please enter your phone number.">
										<p class="help-block text-danger"></p>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<textarea class="form-control" id="message" placeholder="Your Message" required="required" data-validation-required-message="Please enter a message."></textarea>
										<p class="help-block text-danger"></p>
									</div>
								</div>
								<div class="clearfix"></div>
								<div class="col-lg-12 text-center">
									<div id="success"></div>
									<button id="sendMessageButton" class="sim-btn hvr-bounce-to-top" type="submit">Send Message</button>
								</div>
							</div>
						</form>
                    </div>
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end section -->

    <div class="copyrights">
        <div class="container">
            <div class="footer-distributed">
				<a href="#"><img src="images/logo.png" alt="" /></a>
                <div class="footer-center">
                    <p class="footer-links">
                       
                        <a href="login.jsp">LOGIN</a>
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