<%@page import="com.jobExist.dto.JobSeeker"%>
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
	<%
     JobSeeker ss1= (JobSeeker)session.getAttribute("jsid");
    %>
		<div class="header-dark">
			<nav class="navbar navbar-dark navbar-expand-md navigation-clean-search">
				<div class="container">
					<a class="navbar-brand" href="Home.jsp">JobExist</a>
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
							<li class="nav-item"><a class="nav-link" href="#">Applied</a>
							</li>
						</ul>

					</div>
				</div>
			</nav>
	</div> 
	
	<%
	  int jid=Integer.parseInt(request.getParameter("jbid"));
	 
	
	%>
<section class="" style="background-color: #444;">

  <div class="container h-100" >
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-xl-9">

        <h1 class="text-white mb-4">Apply for a job</h1>

        <div class="card" style="border-radius: 15px;margin-bottom:50px;">
        <form  method="post" enctype="multipart/form-data" action="ApplyJobhai?jsd=<%=ss1.getJSid()%>">
           
          <div class="card-body">
            
            <div class="row align-items-center pt-4 pb-3">
              <div class="col-md-3 ps-5">

                <h6 class="mb-0">Job Id :</h6>

              </div>
              <div class="col-md-9 pe-5">
                <input type="text" class="form-control form-control-lg" readonly="true" value=<%=jid%> name="jbId1"/>
              </div>
            </div>
              
            <div class="row align-items-center pt-4 pb-3">
              <div class="col-md-3 ps-5">

                <h6 class="mb-0">Full name</h6>

              </div>
              <div class="col-md-9 pe-5">

                <input type="text" class="form-control form-control-lg" name="fullName1"/>

              </div>
            </div>

            <hr class="mx-n3">

            <div class="row align-items-center py-3">
              <div class="col-md-3 ps-5">

                <h6 class="mb-0">Email address</h6>

              </div>
              <div class="col-md-9 pe-5">

                <input type="email" class="form-control form-control-lg" placeholder="example@example.com" name="email1" />

              </div>
            </div>

            <hr class="mx-n3">

            <div class="row align-items-center py-3">
              <div class="col-md-3 ps-5">

                <h6 class="mb-0">Phone</h6>

              </div>
              <div class="col-md-9 pe-5">

                <input type="tel" class="form-control form-control-lg" placeholder="988889888X" name="phone1" />

              </div>
            </div>

                   <hr class="mx-n3">

            <div class="row align-items-center py-3">
              <div class="col-md-3 ps-5">

                <h6 class="mb-0"> Work status</h6>

              </div>
              <div class="col-md-9 pe-5">
                        <div class="btn-group">
									<input type="radio" class="btn-check" name="options"
										id="option1" autocomplete="off" checked value="Fresher"/> <label
										class="btn btn-secondary" for="option1" data-mdb-ripple-init>Fresher</label>

									<input type="radio" class="btn-check" name="options"
										id="option2" autocomplete="off" value="Experience"/> <label
										class="btn btn-secondary" for="option2" data-mdb-ripple-init>Experience</label>

								</div>
              </div>
            </div>

            <hr class="mx-n3">

            <div class="row align-items-center py-3">
              <div class="col-md-3 ps-5">

                <h6 class="mb-0">Upload CV</h6>

              </div>
              <div class="col-md-9 pe-5">

                <input class="form-control form-control-lg" id="formFileLg" type="file" name="cv1"/>
                <div class="small text-muted mt-2">Upload your CV/Resume or any other relevant file. Max file
                  size 50 MB</div>
              </div>
            </div>

            <hr class="mx-n3">

            <div class="px-5 py-4">
              <input type="submit" class="btn btn-primary btn-lg"></input>
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
                            <li><a href="#">Web design</a></li>
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
                        <h3>Company Name</h3>
                        <p>Praesent sed lobortis mi. Suspendisse vel placerat ligula. Vivamus ac sem lacus. Ut vehicula rhoncus elementum. Etiam quis tristique lectus. Aliquam in arcu eget velit pulvinar dictum vel in justo.</p>
                    </div>
                    <div class="col item social"><a href="#"><i class="icon ion-social-facebook"></i></a><a href="#"><i class="icon ion-social-twitter"></i></a><a href="#"><i class="icon ion-social-snapchat"></i></a><a href="#"><i class="icon ion-social-instagram"></i></a></div>
                </div>
                <p class="copyright">Company Name © 2018</p>
            </div>
        </footer>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>