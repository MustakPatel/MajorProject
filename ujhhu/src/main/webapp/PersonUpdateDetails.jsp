<%@page import="java.util.ArrayList"%>
<%@ page import="com.Builder.model.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Update data</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Main css -->
<link rel="stylesheet" href="Admin/css/LoginStyle.css">

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<!-- Font Icon -->
<link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
</head>
<body>
<% ArrayList<LandlordsDetails> std = (ArrayList<LandlordsDetails>) request.getAttribute("userData");%>
<%@ include file="LandlordPortal.jsp" %>
       <% for(LandlordsDetails s:std){%>
 <div class="container">
 		<div class="main-body">
 			<div class="row">
 				<div class="col-lg-4">
 					<div class="card">
 						<div class="card-body">
 							<div class="d-flex flex-column align-items-center text-center">
 								<img src="https://bootdey.com/img/Content/avatar/avatar6.png" alt="Admin" class="rounded-circle p-1 bg-primary" width="110">
 								<div class="mt-3">
 									<h4>John Doe</h4>
 									<p class="text-secondary mb-1">Full Stack Developer</p>
 									<p class="text-muted font-size-sm">Bay Area, San Francisco, CA</p>
 									<button class="btn btn-primary">Follow</button>
 									<button class="btn btn-outline-primary">Message</button>
 								</div>
 							</div>
 							<hr class="my-4">
 							<ul class="list-group list-group-flush">
 								<li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
 									<h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-globe me-2 icon-inline"><circle cx="12" cy="12" r="10"></circle><line x1="2" y1="12" x2="22" y2="12"></line><path d="M12 2a15.3 15.3 0 0 1 4 10 15.3 15.3 0 0 1-4 10 15.3 15.3 0 0 1-4-10 15.3 15.3 0 0 1 4-10z"></path></svg>Website</h6>
 									<span class="text-secondary">https://bootdey.com</span>
 								</li>
 								<li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
 									<h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-github me-2 icon-inline"><path d="M9 19c-5 1.5-5-2.5-7-3m14 6v-3.87a3.37 3.37 0 0 0-.94-2.61c3.14-.35 6.44-1.54 6.44-7A5.44 5.44 0 0 0 20 4.77 5.07 5.07 0 0 0 19.91 1S18.73.65 16 2.48a13.38 13.38 0 0 0-7 0C6.27.65 5.09 1 5.09 1A5.07 5.07 0 0 0 5 4.77a5.44 5.44 0 0 0-1.5 3.78c0 5.42 3.3 6.61 6.44 7A3.37 3.37 0 0 0 9 18.13V22"></path></svg>Github</h6>
 									<span class="text-secondary">bootdey</span>
 								</li>
 								<li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
 									<h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-twitter me-2 icon-inline text-info"><path d="M23 3a10.9 10.9 0 0 1-3.14 1.53 4.48 4.48 0 0 0-7.86 3v1A10.66 10.66 0 0 1 3 4s-4 9 5 13a11.64 11.64 0 0 1-7 2c9 5 20 0 20-11.5a4.5 4.5 0 0 0-.08-.83A7.72 7.72 0 0 0 23 3z"></path></svg>Twitter</h6>
 									<span class="text-secondary">@bootdey</span>
 								</li>
 								<li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
 									<h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-instagram me-2 icon-inline text-danger"><rect x="2" y="2" width="20" height="20" rx="5" ry="5"></rect><path d="M16 11.37A4 4 0 1 1 12.63 8 4 4 0 0 1 16 11.37z"></path><line x1="17.5" y1="6.5" x2="17.51" y2="6.5"></line></svg>Instagram</h6>
 									<span class="text-secondary">bootdey</span>
 								</li>
 								<li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
 									<h6 class="mb-0"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-facebook me-2 icon-inline text-primary"><path d="M18 2h-3a5 5 0 0 0-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 0 1 1-1h3z"></path></svg>Facebook</h6>
 									<span class="text-secondary">bootdey</span>
 								</li>
 							</ul>
 						</div>
 					</div>
 				</div>

 				<div class="col-lg-8">
 				 <form method="get" action="PersonUpdateServlet" class="register-form" id="register-form">
 					<div class="card">
 						<div class="card-body">
 						                                 <div class="form-group">
                                                            <label><i class="zmdi zmdi-account material-icons-name"></i></label>
                                                            <input type="hidden" name="siteId" value="<%=s.getSiteId()%>">
                                                         </div>
  						                                 <div class="form-group">
                                                             <label><i class="zmdi zmdi-account material-icons-name"></i></label>
                                                             <input type="hidden" name="aria" value="<%=s.getAria()%>">
                                                          </div>
  						                                 <div class="form-group">
                                                             <label><i class="zmdi zmdi-account material-icons-name"></i></label>
                                                             <input type="hidden" name="totalPayment" value="<%=s.getTotalPayment()%>">
                                                          </div>
 							<div class="row mb-3">
 								<div class="col-sm-3">
 									<h6 class="mb-0">First Name</h6>
 								</div>
 								<div class="col-sm-9 text-secondary">
 									<input type="text" name="firstName" class="form-control" value="<%=s.getFirstName()%>">
 								</div>
 							</div>
 							<div class="row mb-3">
                             								<div class="col-sm-3">
                             									<h6 class="mb-0">Last Name</h6>
                             								</div>
                             								<div class="col-sm-9 text-secondary">
                             									<input type="text" name="lastName" class="form-control" value="<%=s.getLastName()%>">
                             								</div>
                             							</div>
 							<div class="row mb-3">
 								<div class="col-sm-3">
 									<h6 class="mb-0">Email</h6>
 								</div>
 								<div class="col-sm-9 text-secondary">
 									<input type="text" name="Email" class="form-control" value="john@example.com">
 								</div>
 							</div>
 							<div class="row mb-3">
 								<div class="col-sm-3">
 									<h6 class="mb-0">Phone</h6>
 								</div>
 								<div class="col-sm-9 text-secondary">
 									<input type="text" name="phone" class="form-control" value="<%=s.getPhone()%>">
 								</div>
 							</div>
 							<div class="row mb-3">
 								<div class="col-sm-3">
 									<h6 class="mb-0">District</h6>
 								</div>
 								<div class="col-sm-9 text-secondary">
 									<input type="text" name="district" class="form-control" value="<%=s.getDistrict()%>">
 								</div>
 							</div>
 							<div class="row mb-3">
 								<div class="col-sm-3">
 									<h6 class="mb-0">Address</h6>
 								</div>
 								<div class="col-sm-9 text-secondary">
 									<input type="text" name="siteLocation" class="form-control" value="<%=s.getSiteLocation()%>">
 								</div>
 							</div>
 							<div class="row">
 								<div class="col-sm-3"></div>
 								<div class="col-sm-9 text-secondary">
 									<input type="submit" name="siteLocation" class="btn btn-primary px-4" value="Save Changes">
 								</div>
 							</div>
 						</div>
 					</div>
 					<div class="row">
 						<div class="col-sm-12">
 							<div class="card">
 								<div class="card-body">
 									<h5 class="d-flex align-items-center mb-3">Project Status</h5>
 									<p>Web Design</p>
 									<div class="progress mb-3" style="height: 5px">
 										<div class="progress-bar bg-primary" role="progressbar" style="width: 80%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
 									</div>

 								</div>
 							</div>
 						</div>
 					</div>
 					</form>
 				</div>
 			</div>
 		</div>
 	</div>
 	                               <% } %>

</body>
</html>