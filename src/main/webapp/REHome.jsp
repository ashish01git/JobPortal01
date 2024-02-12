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
<title>Home | Recruiter </title>
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
			<nav class="navbar navbar-dark navbar-expand-md navigation-clean-search">
				<div class="container">
					<a class="navbar-brand" href="REHome.jsp">JobExist</a>
					<button class="navbar-toggler" data-toggle="collapse"
						data-target="#navcol-1">
						<span class="sr-only">Toggle navigation</span><span
							class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse offset-md-7 " id="navcol-1">
						<ul class="nav navbar-nav">
							<li class="nav-item"><a class="nav-link" href="RecuiterDashboard.jsp"
								target="_blank">Manage Jobs</a>
							</li>
							<li class="nav-item"><a class="nav-link" href="RecuiterDashboard.jsp">Candidate</a>
							</li>
							<li class="nav-item"><a class="nav-link btn btn-danger text-white" href="JobPost.jsp">Post a Job</a>
							</li>
						</ul>

					</div>
									</div>
			</nav>
			<div class="container hero">
			<%@include file="Message.jsp" %>
			 <%@include file="Sucess1.jsp" %>
				<div class="row">
					<div class="col-md-8 offset-md-2">
						<h1 class="text-center " style="font-size: 3.9rem">Here We can Recruite the jobSeekers !</h1>
						<!-- <div class="embed-responsive embed-responsive-16by9">
							<iframe class="embed-responsive-item"></iframe>
						</div>
						 -->
					</div>
				</div>
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