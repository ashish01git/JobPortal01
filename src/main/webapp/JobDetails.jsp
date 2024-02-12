<%@page import="java.io.*"%>
<%@page import="com.jobExist.dto.PostJob"%>
<%@page import="java.util.*"%>
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
		</div>
		<%
		            int id=Integer.parseInt(request.getParameter("id"));
		     
		%>
		<%!
			JobPostDao da=new JobPostDao();
			List<PostJob> ls=da.allDataShowDao();
		%>
		<% for(PostJob jb:ls){ %>
			<%
			     
			 if(jb.getJobId()==id)
			 {
				 InputStream is=new ByteArrayInputStream(jb.getCompImage());
			     ByteArrayOutputStream baos=new ByteArrayOutputStream();
			     byte[] buf=new byte[8000];
			     int byteRead=-1;
			     while((byteRead=is.read(buf))!=-1)
			     {
			    	 baos.write(buf,0,byteRead);
			     }
			     byte [] imgebyte=baos.toByteArray();
			     String base64Image=Base64.getEncoder().encodeToString(imgebyte);
			     is.close();
			     baos.close();    
			%>
		<!-- Job Detail start -->
		<div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
            <div class="container">
                <div class="row gy-5 gx-4">
                    <div class="col-lg-8">
                        <div class="d-flex align-items-center mb-5">
                            <img class="flex-shrink-0 img-fluid border rounded" src="data:image/jpg;base64,<%=base64Image%>" alt="" style="width: 120px; height: 125px; margin-right:20px">
                            <div class="text-start ps-2">
                                <h3 class="mb-3">   <%=jb.getJobTitle() %></h3>
                                <span class="text-truncate me-3 bg-success text-white btn"><i class="fa fa-map-marker-alt text-primary me-3"></i><%=jb.getLocation() %></span>
                                <span class="text-truncate me-3 bg-danger text-white btn"><i class="far fa-clock text-white  me-3"></i><%=jb.getType() %></span>
                                <span class="text-truncate me-0 bg-primary text-white btn"><i class="far fa-money-bill-alt text-primary me-3"></i><%=jb.getSalary() %>K</span>
                            </div>
                        </div>

                        <div class="mb-5">
                            <h4 class="mb-3 text-primary">JOB DISCRIPTION</h4>
                            <p><%=jb.getDescription()%></p>
                            <h4 class="mb-3 text-primary">RESPONSIBILITY</h4>
                            <p><%=jb.getResposibility()%></p>
                            <ul class="list-unstyled">
                                <li><i class="fa fa-angle-right text-primary me-2"></i>Efficiently manage and prioritize daily tasks</li>
                                <li><i class="fa fa-angle-right text-primary me-2"></i>Proactively identify and resolve challenges to ensure smooth workflow and project success</li>
                                <li><i class="fa fa-angle-right text-primary me-2"></i>Contribute to a positive team culture by fostering collaboration and knowledge sharing.</li>
                                <li><i class="fa fa-angle-right text-primary me-2"></i>Communicate effectively with stakeholders, providing regular updates on project progress and addressing any concerns.</li>
                                <li><i class="fa fa-angle-right text-primary me-2"></i>Foster a positive team culture by encouraging collaboration, knowledge sharing, and a commitment to excellence.</li>
                            </ul>
                            <h4 class="mb-3 text-primary">Qualifications</h4>
                            <p><%=jb.getQualification() %></p>
                            <ul class="list-unstyled">
                                <li><i class="fa fa-angle-right text-primary me-2"></i>Hold a degree, showcasing a strong academic foundation and theoretical knowledge.</li>
                                <li><i class="fa fa-angle-right text-primary me-2"></i>Strong analytical and decision-making skills, allowing for effective problem-solving in challenging situations.</li>
                                <li><i class="fa fa-angle-right text-primary me-2"></i>Exhibit leadership qualities, with the ability to lead and mentor team members</li>
                                <li><i class="fa fa-angle-right text-primary me-2"></i>contributing to a cohesive and high-performing team.</li>
                                <li><i class="fa fa-angle-right text-primary me-2"></i>demonstrating a track record of success.</li>
                            </ul>
                        </div>
        
                        
                    </div>
        
                    <div class="col-lg-4">
                        <div class="bg-success rounded p-5 mb-4 wow slideInUp" data-wow-delay="0.1s">
                            <h4 class="mb-4 text-white">Job Summary</h4>
                             <p><i class="fa fa-angle-right text-primary me-2"></i>Job Id: <%=jb.getJobId() %></p>
                            <p><i class="fa fa-angle-right text-primary me-2"></i>Published On: <%=jb.getPublishDate() %></p>
                            <p><i class="fa fa-angle-right text-primary me-2"></i>Vacancy: <%=jb.getVacancy()%> Position</p>
                            <p><i class="fa fa-angle-right text-primary me-2"></i>Job Nature: <%=jb.getType()%></p>
                            <p><i class="fa fa-angle-right text-primary me-2"></i>Salary:<%=jb.getSalary()%> K</p>
                            <p><i class="fa fa-angle-right text-primary me-2"></i>Location: <%=jb.getLocation()%></p>
                            <p class="m-0"><i class="fa fa-angle-right text-primary me-2"></i>Date Line: <%=jb.getLastDate() %></p>
                        </div>
                        <div class="bg-danger rounded p-5 wow slideInUp" data-wow-delay="0.1s">
                            <h4 class="mb-4 text-white">Company Detail</h4>
                            <p class="m-0"><%=jb.getAboutCompany()%></p>
                        </div>
                    </div>
                </div>
                                    <div class="col-12">
                                        <a href="Apply.jsp?jbid=<%=jb.getJobId()%>"><button class="btn btn-primary w-100" type="submit">Apply Job</button></a>
                                    </div>
                                </div>
            </div>
            <%} %>
            <%} %>
        
        
                      

	    
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>