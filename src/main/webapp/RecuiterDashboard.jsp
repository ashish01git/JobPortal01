<%@page import="java.util.Base64"%>
<%@page import="java.io.*"%>
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
  rel="stylesheet"
/>
<!-- MDB -->
<link
  href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/7.1.0/mdb.min.css"
  rel="stylesheet"
/>
<link rel="stylesheet" href="css/Header.css">
<link rel="stylesheet" href="css/AllJobs.css">
<link rel="stylesheet" href="css/loginModel.css">
<link rel="stylesheet" href="css/JobDetails.css">
<link rel="stylesheet" href="css/JobPost.css">
<link rel="stylesheet" href="css/RecuDas.css">


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



<!-- Page Content -->
<div class="container-fluid bg-dark text-white">
    <div class="row">

        <!-- Sidebar -->
        <nav class="col-md-3 col-lg-2 d-md-block bg-dark sidebar">
            <div class="sidebar-sticky">

                <!-- Recruiter Info -->
                <div class="recruiter-info">
                    <img src="CompanyImage/AS1665205943738.jpg" alt="Recruiter Image" class="recruiter-img">
                    <h5>Recruiter Name</h5>
                    <p>Company Name</p>
                    <p>Role:</p>
                </div>

                <!-- Navigation Links -->
                <ul class="nav flex-column">
                    <li class="nav-item ">
                        <div class="card bg-info">
                            <div class="card-body">
                                <h5 class="card-title">
                                    <a class="nav-link active text-white" onclick="showContent('manageJob')">
                                        Manage Job
                                    </a>
                                </h5>
                            </div>
                        </div>
                    </li>
                    <li class="nav-item">
                        <div class="card">
                            <div class="card-body bg-success">
                                <h5 class="card-title">
                                    <a class="nav-link text-white" onclick="showContent('manageJobApplied')">
                                        Manage Job Applied
                                    </a>
                                </h5>
                            </div>
                        </div>
                    </li>
                    <li class="nav-item">
                        <div class="card">
                            <div class="card-body bg-danger">
                                <h5 class="card-title">
                                    <a class="nav-link text-white" onclick="showContent('manageCandidate')">
                                        Manage Candidate
                                    </a>
                                </h5>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>

        <!-- Main Content -->
        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                <h1 class="h2">Recruiter Dashboard</h1>
            </div>

            <!-- Content for each section -->
            <div id="manageJob" class="dashboard-content bg-info">
                <!-- Content for Manage Job section -->
                <h2>Manage Job</h2>
                <!-- Add your content here -->
            </div>
            <div id="manageJobApplied" class="dashboard-content bg-success" style="display:none;">
                <!-- Content for Manage Job Applied section -->
                <h2>Manage Job Applied</h2>
                <!-- Add your content here -->
            </div>
            <div id="manageCandidate" class="dashboard-content bg-danger" style="display:none;">
                <!-- Content for Manage Candidate section -->
                <h2>Manage Candidate</h2>
                <!-- Add your content here -->
            </div>
        </main>
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
    <!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<!-- Script to handle navigation -->
<script>
    function showContent(sectionId) {
        // Hide all content divs
        $('.dashboard-content').hide();

        // Show the content of the selected section
        $('#' + sectionId).show();
    }
</script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>