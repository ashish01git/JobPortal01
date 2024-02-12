<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Untitled</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Bitter:400,700">
<!-- Font Awesome -->

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet" />
<!-- MDB -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/7.1.0/mdb.min.css"
	rel="stylesheet" />
<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
	rel="stylesheet" />
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet" />


<link rel="stylesheet" href="css/Header.css">
<link rel="stylesheet" href="css/JobPost.css">
</head>

<body>

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
	</div>
	<section class="" style="background-color: #444;">
		<div class="container h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">

				<div class="col-md-10  mb-4">
					<div class="card mb-5">
						<div class="card-header py-3">
							<h5 class="mb-0 text-font text-uppercase">Post a Job</h5>
						</div>


						<form class="card bg-dark mb-5"method="post" action="postJob" enctype='multipart/form-data'>
						
						<div class="row mx-3 my-3">
							<div class="col-md-6">
							  <label class="form-label text-white" for="jt">Feature/ Company Image</label>
                              <input type="file" id="jt" class="form-control" name="compImage1" />
							</div>
		
							<div class="col-md-6">
							 <!-- <h1 class="mt-3 text-center text-white">Be YourSelf</h1> -->
							  <label class="form-label text-white" for="jt">Job ID</label>
                                     <input type="text" id="jt" class="form-control" name="jobid1"  />
							</div>
							<div class="col-md-6">
							 <!-- <h1 class="mt-3 text-center text-white">Be YourSelf</h1> -->
							  <label class="form-label text-white" for="jt">Job Title</label>
                                     <input type="text" id="jt" class="form-control" name="jobTitle1"  />
							</div>
						
							</div>
							<div class="row mx-3 my-3">
								<div class="col-md-6">
								     <label class="form-label text-white" for="jt">Company Name</label>
                                     <input type="text" id="jt" class="form-control" name="compName1"  />
								</div>
								<div class="col-md-6 ">
								      <label class="form-label text-white" for="jt">Category</label>
                                    <!--  <input type="select" id="jt"  class="form-control" for="exSel"  /> -->
                                     <select id="exSel" class="form-select" name="catagory1">
                                          <option selected value="Engineering">Engineering</option>
                                          <option value="IT Information Technology">IT Information Technology</option>
                                          <option value="Business">Business</option>
                                          <option value="Finance">Finance</option>
                                          <option value="Sales">Sales</option>
                                          <option value="Marketing">Marketing</option>
                                          <option value="other">other</option>
                                     </select>
								</div>
							</div>
							<div class="row mx-3 my-3">
								<div class="col-md-6 ">
								     <label class="form-label text-white" for="jt">Location</label>
                                     <input type="text" id="jt" class="form-control" name="location1" />
								</div>
								<div class="col-md-6">
								     <label class="form-label text-white" for="jt">Vacancy</label>
                                     <input type="number" id="jt" class="form-control" name="vacancy1"/>
								</div>
							</div>
							<div class="row mx-3 my-3">
								<div class="col-6 col-md-4">
								   <label class="form-label text-white" for="jt">Experience</label>
                                    <!--  <input type="select" id="jt"  class="form-control" for="exSel"  /> -->
                                     <select id="exSel" class="form-control" name="experi1">
                                          <option selected value="Fresher">Fresher</option>
                                          <option value="Experience">Experience</option>
                                          <option value="0-1 Year">0-1 Year</option>
                                          <option value="2-3 Year">2-3 Year</option>
                                          <option value="3-5 Year">3-5 Year</option>
                                          <option value="5-10 Year">5-10 Year</option>
                                          <option value="10+ Year">10+ Year</option>
                                     </select>
								</div>
								<div class="col-6 col-md-4">
								<label class="form-label text-white" for="jt">Type</label>
                                     <select id="exSel" class="form-select" name="type1">
                                          <option selected value="Full Time">Full Time</option>
                                          <option value="Half Time">Half Time</option>
                                          <option value="Remote">Remote</option>
                                          <option value="Parmanant">Parmanant</option>
                                     </select>
								</div>
								<div class="col-6 col-md-4">
								<label class="form-label text-white" for="jt">Salary </label>
                                     <input type="text" id="jt" class="form-control" name="salary1"/>
								</div>
							</div>
							<div class="row mx-3 my-3">
								<div class="col-6 col-md-6">
								<label class="form-label text-white" for="jt">Last Date to Apply</label>
                                     <input type="date" id="jt" class="form-control" name="lastDate1"  />
								</div>
								<div class="col-6 col-md-6">
								<label class="form-label text-white" for="jt">Publish Date</label>
                                     <input type="date" id="jt" class="form-control" name="publicDate1"  />
								</div>
							</div>
							<div class="row mx-3 my-3">
								<div class="col-6 col-md-6">
								 <label for="jobDescription" class="form-label text-white">About Company</label>
                                  <textarea class="form-control" id="jobDescription" name="aboutComp1" rows="3"></textarea>
								</div>
								<div class="col-6 col-md-6">
								 <label for="jobDescription" class="form-label text-white">Job Description</label>
                                  <textarea class="form-control" id="jobDescription" name="description1" rows="3"></textarea>
								</div>
								
							</div>
							<div class="row mx-3 my-3">
								<div class="col-6 ">
								 <label for="jobDescription" class="form-label text-white">Responsibility</label>
                                  <textarea class="form-control" id="jobDescription" name="response1" rows="3"></textarea>
								</div>
								<div class="col-6 ">
								 <label for="jobDescription" class="form-label text-white">Qualification</label>
                                  <textarea class="form-control" id="jobDescription" name="qualification1" rows="3"></textarea>
								</div>

						</div>
								<div class="row mx-3 my-3">
								<div class="col-6">
								<button type="submit" class="form-control btn-success">Post Job</button>
								</div>
								<div class="col-6 ">
								<button type="reset" class="form-control btn-warning">All Reset</button>
								</div>
								</div>
							
						</form>
					</div>

				</div>
			</div>
		</div>
	</section>

	

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
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>