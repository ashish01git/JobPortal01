<%@page import="java.util.Base64"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="java.io.ByteArrayInputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="com.jobExist.dto.PostJob"%>
<%@page import="java.util.List"%>
<%@page import="com.jobExist.dao.JobPostDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>JobExist</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Bitter:400,700">
<link rel="stylesheet" href="css/Header.css">
<link rel="stylesheet" href="css/AllJobs.css">
<link rel="stylesheet" href="css/loginModel.css">
<link rel="stylesheet" href="css/JobDetails.css">
<link rel="stylesheet" href="css/JobPost.css">
<link rel="stylesheet" href="css/RecuDas.css">


</head>

<body>
	<div>
		<div class="header-dark">
			<nav
				class="navbar navbar-dark navbar-expand-md navigation-clean-search">
				<div class="container">
					<h1 class="navbar-brand" >JobExist</h1>
					<!-- <button class="navbar-toggler" data-toggle="collapse"
						data-target="#navcol-1">
						<span class="sr-only">Toggle navigation</span><span
							class="navbar-toggler-icon"></span>
					</button> -->
					<div class="collapse navbar-collapse" id="navcol-1">
						
					</div>
					<span class="navbar-text"><a class="login" href="#signup"
						data-toggle="modal" data-target=".log-sign">Log In</a> </span> <a
						class="btn btn-light action-button" role="button"
						data-toggle="modal" data-target=".log-sign1">SignUp</a>
				</div>
			</nav>
			<div class="container hero">
			 <%@include file="Message.jsp" %>
			 <%@include file="Sucess1.jsp" %>
				<div class="row">
					<div class="col-md-8 offset-md-2">
						<h1 class="text-center strok" style="font-size: 5.9rem">Find
							Your Dream Job Now !</h1>
						<!-- <div class="embed-responsive embed-responsive-16by9">
							<iframe class="embed-responsive-item"></iframe>
						</div>
						 -->
					</div>
				</div>
				<div class="row ">
				<div class="col-md-5 offset-md-5">
				      <button class="btn btn-primary "><a class="login text-white" href="#signup"
						data-toggle="modal" data-target=".log-sign" >Get Started</a></button>
				      </div>
				</div>
			</div>
			

		</div>
	</div>
	


	<div class="modal fade bs-modal-sm log-sign" id="myModal" tabindex="-1"
		role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<h3 class="text-center">Login Account</h3>

				<div class="modal-body">
					<form method="Post" action="loginModul">
						<div class="form-group">
							<input class="form-control" type="email" name="email"
								placeholder="Email">
						</div>
						<div class="form-group">
							<input class="form-control" type="password" name="password"
								placeholder="Password">
						</div>
						<div class="form-group">
							<div class="form-check">
								<label class="form-check-label"><input
									class="form-check-input" type="checkbox">I agree to the
									license terms.</label>
							</div>
						</div>
						<div class="form-group">
							<button class="btn btn-primary btn-block" type="submit">Login</button>
						</div>
					</form>
				</div>
				<!--<div class="modal-footer">
      <center>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </center>
      </div>-->
			</div>
		</div>
	</div>



	<!--modal2-->

	<div class="modal fade bs-modal-sm" id="forgot-password" tabindex="0"
		role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Password will be
						sent to your email</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal">
						<fieldset>
							<div class="group">
								<input required="" class="input" type="text"><span
									class="highlight"></span><span class="bar"></span> <label
									class="label" for="date">Email address</label>
							</div>


							<div class="control-group">
								<label class="control-label" for="forpassword"></label>
								<div class="controls">
									<button id="forpasswodr" name="forpassword"
										class="btn btn-primary btn-block">Send</button>
								</div>
							</div>
						</fieldset>
					</form>

				</div>
			</div>

		</div>
	</div>

	<div class="modal fade bs-modal-sm log-sign1" id="myModal2"
		tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel"
		aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="bs-example bs-example-tabs text-white">
					<ul id="myTab" class="nav nav-tabs ">
						<li id="tab1" class="tab-style bg-success "><a href="#jobser"
							data-toggle="tab"><strong class="text-white">I`m JobSeeker</strong></a></li>
						<li id="tab2" class=" tab-style bg-danger "><a href="#recrui"
							data-toggle="tab"><strong class="text-white">I`m Recruiter</strong></a></li>
					</ul>
				</div>
				
			<div class="modal-body">
				<div id="myTabContent" class="tab-content">                      
					<div class="tab-pane fade active in" id="jobser">
						<form class="form-horizontal" method="post" enctype="multipart/form-data" action="JobsikRegister">
						
						 <h4 class="text-center">Job Seeker Register Only.</h4>
							<fieldset>
							<label>Profile Picture</label>
									<input class="form-control" type="file" name="jsImg"
										placeholder="Profile-pic">
								<div class="form-group">
									<input class="form-control" type="text" name="Namejs"
										placeholder="Full Name">
								</div>
								
								<div class="form-group">
									<input class="form-control" type="email" name="email"
										placeholder="Email Address">
								</div>
								<div class="form-group">
									<input class="form-control" type="tel" name="phone"
										placeholder="Phone Number">
								</div>
								<div class="form-group">
									<input class="form-control" type="password" name="password"
										placeholder="Password">
								</div>
								<div class="form-group">
									<input class="form-control" type="password" name="Comfirpassword"
										placeholder=" Confirm Password">
								</div>
								
								<div class="form-group">
									<div class="form-check">
										<label class="form-check-label"><input
											class="form-check-input" type="checkbox">I agree to
											the license terms.</label>
									</div>
								</div>
								<div class="form-group">
									<button class="btn btn-primary btn-block" type="submit">Register</button>
								</div>
							</fieldset>
						</form>
					</div>


					<div class="tab-pane fade" id="recrui">
					<h4 class="text-center">Recruiter Register Only.</h4>
						<form class="form-horizontal" method="post" enctype="multipart/form-data" action="RecruiterRegister">
							<fieldset>
							<div class="form-group">
							<label>Profile Picture</label>
									<input class="form-control" type="file" name="RecuImg"
										placeholder="Profile-pic">
								</div>
								<div class="form-group">
									<input class="form-control" type="text" name="NameRe"
										placeholder="Full Name">
								</div>
								
								<div class="form-group">
									<input class="form-control" type="email" name="emailRe"
										placeholder="Email">
								</div>
								<div class="form-group">
									<input class="form-control" type="password" name="passwordRe"
										placeholder="Password">
								</div>
								<div class="form-group">
									<input class="form-control" type="password" name="Comfirpassword"
										placeholder=" Confirm Password">
								</div>
								
								<div class="form-group">
									<div class="form-check">
										<label class="form-check-label"><input
											class="form-check-input" type="checkbox">I agree to
											the license terms.</label>
									</div>
								</div>
								<div class="form-group">
									<button class="btn btn-success btn-block" type="submit">Register</button>
								</div>

							</fieldset>
						</form>
					</div>
				</div>
			</div>
			<!--<div class="modal-footer">
      <center>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </center>
      </div>-->
		</div>
	</div>
	</div>






	<div class="footer-dark">

		<footer>
			<div class="container">
				<div class="row">
					<div class="col-sm-6 col-md-3 item">
						<h3>Services</h3>
						<ul>
							<li><a href="#"></a></li>
							<li><a href="#">Development</a></li>
							<li><a href="#">Hosting</a></li>
						</ul>
					</div>
					<div class="col-sm-6 col-md-3 item">
						<h3>About</h3>
						<ul>
							<li><a href="#">Company</a></li>
							<li><a href="#">Team</a></li>
							<li><a href="#">Careers</a></li>
						</ul>
					</div>
					<div class="col-md-6 item text">
						<h3>JobExist</h3>
						<p>Praesent sed lobortis mi. Suspendisse vel placerat ligula.
							Vivamus ac sem lacus. Ut vehicula rhoncus elementum. Etiam quis
							tristique lectus. Aliquam in arcu eget velit pulvinar dictum vel
							in justo.</p>
					</div>
					<div class="col item social">
						<a href="#"><i class="icon ion-social-facebook"></i></a><a
							href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i
							class="icon ion-social-snapchat"></i></a><a href="#"><i
							class="icon ion-social-instagram"></i></a>
					</div>
				</div>
				<p class="copyright">jobExist © 2018</p>
			</div>
		</footer>
	</div>
	<script type="text/javascript" src="Js/loginModel.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>