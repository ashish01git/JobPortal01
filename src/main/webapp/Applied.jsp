<%@page import="com.jobExist.dto.JobSeeker"%>
<%@page import="com.jobExist.dto.ApplyJob"%>
<%@page import="com.jobExist.dao.JobSeekerDao"%>
<%@page import="com.jobExist.dao.ApplyJobDao"%>
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
<title>Applied</title>
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
<section style="background-color: #444;">

<section class="" >
<div class="col-md-8 offset-md-2">
						<h1 class="text-center text-danger" style="font-size: 4.5rem">Your Applied jobs</h1>
					</div>
   
			<!--all jobs ..  -->
			
			
</section>
<%!
	     ApplyJobDao adao=new ApplyJobDao();
	     List<ApplyJob> alist=adao.allAppliedDataShowDao();
	     JobSeekerDao sdao=new JobSeekerDao();
	     List<JobSeeker> slist=sdao.allJobSeekerDao();
		 JobPostDao da=new JobPostDao();
	     List<PostJob> ls=da.allDataShowDao();
	%>	
	<%
	
	%>
<section class="jobHeading">
   <div class="row justify-content-center col-md-10 offset-md-1" stlye="">
			<!-- Job Detail End -->
	<% 
	int id=0,jsid=0;
	PostJob pnew=null;
	JobSeeker jsnew=null;
	for(PostJob pj:ls)
	{
		id=pj.getJobId();
		pnew=pj;
	}
	for(JobSeeker js:slist)
	{
		jsid=js.getJSid();
		jsnew=js;
	}
	for(ApplyJob aj:alist)
	   {
       if((aj.getJobIdA()==id)&& (aj.getJobSIdA()==jsid))
		  {
			  
			     InputStream is=new ByteArrayInputStream(jsnew.getProfilePic());
			     ByteArrayOutputStream baos=new ByteArrayOutputStream();
			     byte[] buf=new byte[8000];
			     int byteRead=-1;
			     while((byteRead=is.read(buf))!=-1)
			     {
			    	 baos.write(buf,0,byteRead);
			     }
			     byte [] imgebyte=baos.toByteArray();
			     String base64ImageJobSeekerImg=Base64.getEncoder().encodeToString(imgebyte);
			     is.close();
			     baos.close();
			     
		%>
        <div class="tab-content mb-3 bg-primary" >
                        <div id="tab-1" class="tab-pane fade show p-0 active">
                            <div class="job-item p-4 mb-4">
                                <div class="row g-4">
                                    <div class="col-sm-12 col-md-8 d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid border rounded" src="data:image/jpg;base64,<%=base64ImageJobSeekerImg%>" alt="" style="width: 80px; height: 80px;">
                                        <div class="text-start ps-4">
                                            <h5 class="mb-3"><%=aj.getFullNameA()%></h5> 
                                            <span class="text-truncate me-3"><i class="fa fa-map-marker-alt text-primary me-2"></i><%=pnew.getJobId()%></span>
                                            <span class="text-truncate me-3"><i class="far fa-clock text-primary me-2"></i><%=pnew.getJobTitle()%></span>
                                            <span class="text-truncate me-0"><i class="far fa-money-bill-alt text-primary me-2"></i><%=pnew.getType() %></span>
                                        </div>
                                     <h5 class="mb-5"><%=pnew.getCompanyName()%></h5>
                                    </div>
                               
                                    <div class="col-sm-12 col-md-4 d-flex flex-column align-items-start align-items-md-end justify-content-center">
                                        <div class="d-flex mb-3">
               
                                            <span class="btn bg-success">Applied</span>
                                        </div>
                                        <small class="text-truncate"><i class="far fa-calendar-alt text-primary me-2"></i>Date Line:<%=pnew.getLastDate()%></small>
                                    </div>
                                </div>
                            </div>
                       </div>
            </div> 
              <%} 
		  }
          %>  
                
       

</section>
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>