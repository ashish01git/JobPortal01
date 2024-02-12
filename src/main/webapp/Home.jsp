<%@page import="com.jobExist.dto.JobSeeker"%>
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
<title>Home | Job Seeker </title>
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

<%
     JobSeeker ss= (JobSeeker)session.getAttribute("jsid");
    

%>
	<div>
		<div class="header-dark">
			<nav class="navbar navbar-dark navbar-expand-md navigation-clean-search">
				<div class="container">
					<a class="navbar-brand" href="Home.jsp">JobExist</a>
					<h5> Hey ! <%=ss.getFullName() %></h5>
					<button class="navbar-toggler" data-toggle="collapse"
						data-target="#navcol-1">
						<span class="sr-only">Toggle navigation</span><span
							class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse offset-md-7 " id="navcol-1">
						<ul class="nav navbar-nav">
							<li class="nav-item"><a class="nav-link" href="AllJobs.jsp"
								target="_blank">All Jobs</a>
							</li>
							<li class="nav-item"><a class="nav-link" href="AllJobs.jsp">Find
										Job</a>
							</li>
							<li class="nav-item"><a class="nav-link" href="Applied.jsp">Applied</a>
							</li>
						</ul>

					</div>
				</div>
			</nav>
			 <%@include file="Sucess1.jsp" %>
			<div class="container hero">
			
				<div class="row">
					<div class="col-md-8 offset-md-2">
						<h1 class="text-center " style="font-size: 5.9rem">Get Your Job !</h1>
						<!-- <div class="embed-responsive embed-responsive-16by9">
							<iframe class="embed-responsive-item"></iframe>
						</div>
						 -->
					</div>
				</div>
			</div>
			<form action="">
				<div class="row justify-content-center">
					<div class="col-lg-6 col-xl-6 d-lg-flex flex-row mb-lg-4 mb-xl-0">

						<div id="basic"
							class="form-outline form-white flex-fill me-lg-2 mb-3 mb-lg-0">
							<input type="text" id="form1" class="form-control"
								placeholder="Job tittle/ skill/ company" />

						</div>

						<div
							class="form-outline datepicker form-white flex-fill mx-lg-2 mb-3 mb-lg-0"
							data-mdb-toggle-button="false">

							<select id="exSel" class="form-control">
								<option selected>Fresher</option>
								<option>Experience</option>
								<option>0-1 Year</option>
								<option>2-3 Year</option>
								<option>3-5 Year</option>
								<option>5-10 Year</option>
								<option>10+ Year</option>
							</select>

						</div>

						<div
							class="form-outline datepicker form-white flex-fill mx-lg-2 mb-3 mb-lg-0"
							data-mdb-toggle-button="false">
							<input type="text" class="form-control" id="exampleDatepicker2"
								data-mdb-toggle="datepicker" placeholder="Location" />
						</div>
						<div class="col-lg-6 col-xl-2">
							<input class="btn btn-primary"
								type="submit" value="Search" />
						</div>

					</div>

				</div>
			</form>

		</div>
	</div>
	<!-- Hot jobs.. -->
	<div class="artical-list">
		<div class="container">
			<div class="intro">
				<h2 class="text-center" style="font-size: 3.5rem">Recent Jobs</h2>
				<p class="text-center" style="font-size: 1.2rem">Employment
					brings a sense of purpose and accomplishment, as you utilize your
					unique talent and abilities , overcome of Obstacles , and achieve
					personal and professional milestones ,fostering a sense pride and
					self-fulfillment.</p>
			</div>
			<%!JobPostDao da = new JobPostDao();
	         List<PostJob> ls = da.allDataShowDao();%>
			<div class="row artical  justify-content-center">
				<%
				for (PostJob jb : ls) {
				%>
				<%
				InputStream is = new ByteArrayInputStream(jb.getCompImage());
				ByteArrayOutputStream baos = new ByteArrayOutputStream();
				byte[] buf = new byte[8000];
				int byteRead = -1;
				while ((byteRead = is.read(buf)) != -1) {
					baos.write(buf, 0, byteRead);
				}
				byte[] imgebyte = baos.toByteArray();
				String base64Image = Base64.getEncoder().encodeToString(imgebyte);
				is.close();
				baos.close();
				%>
				<div class="col-lg-3 col-sm-3 job-card bg-info">
					<div class="single_jobs text-center mt-30">
						<div class="jobs_image imghai">
							<img src="data:image/jpg;base64,<%=base64Image%>" alt="jobs" style="width:100px">
						</div>
						<div class="jobs_content">
							<h4 class="jobs_title">
								<i class="fa fa-circle"></i>
								<%=jb.getJobTitle()%>
							</h4>
							<p class="sub_title"><%=jb.getCompanyName()%></p>
						</div>
						<div class="jobs_meta d-flex justify-content-between">
							<p class="location">
								<i class="fa fa-map-marker"></i>
								<%=jb.getLocation()%>
							</p>
							<p class="time">
								<i class="fa fa-clock-o"></i>
								<%=jb.getType()%>
							</p>
						</div>
						<div class="jobs_btn">
							<a href="JobDetails.jsp?id=<%=jb.getJobId()%>"
								class="main-btn main-btn-2 outline" target="_blank">APPLY
								NOW</a>
						</div>
					</div>
				</div>
				<%
				}
				%>
				<!-- 1.end  -->
				<!--  2 start-->

				<!-- 2.end  -->
				<!--  3 start-->

				<!-- 3.end  -->


			</div>
		</div>
	</div>

	<div class="row"></div>





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