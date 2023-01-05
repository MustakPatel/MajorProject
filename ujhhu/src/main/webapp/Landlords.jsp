<%@page import="java.util.ArrayList"%>
<%@ page import="com.Builder.model.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>HomePage</title>

<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<!-- Main css -->
<link rel="stylesheet" href="Admin/css/HomePage.css">

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
<script src="js/custom.js"></script>
</head>
<body ng-app="mymodal" ng-controller="MainCtrl">
<% ArrayList<LandlordsDetails> std = (ArrayList<LandlordsDetails>) request.getAttribute("landlords");%>
<%@ include file="Portal.jsp" %>

<div class="modal fade" id="addLandlordModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header bg-light">
            <h5 class="modal-title" id="exampleModalLabel">Landlord</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal"
               aria-label="Close"></button>
         </div>
         <div class="modal-body">
            <!-- Sign up form -->
            <form method="get" action="addLandlordServlet" class="register-form" id="register-form">
               <div class="form-group">
                  <label for="siteId" class="col-form-label">Enter Site Id</label>
                  <input type="text" class="form-control" name="siteId" placeholder="Enter Site Id" required/>
               </div>
               <div class="form-group">
                  <label for="siteId" class="col-form-label">First Name</label>
                  <input type="text" class="form-control" name="firstName" placeholder="First Name" required/>
               </div>
               <div class="form-group">
                  <label for="siteId" class="col-form-label">Last Name</label>
                  <input type="text" class="form-control" name="lastName" placeholder="Last Name" required/>
               </div>
               <div class="form-group">
                  <label for="siteId" class="col-form-label">Phone Number</label>
                  <input type="text" class="form-control" name="phone"  placeholder="Phone Number" />
               </div>
               <div class="form-group">
                  <label for="siteId" class="col-form-label">Site Location</label>
                  <input type="text" class="form-control" name="siteLocation" placeholder="Site Location" />
               </div>
               <div class="form-group">
                  <label for="siteId" class="col-form-label">District</label>
                  <input type="text" class="form-control" name="district" placeholder="District" />
               </div>
               <div class="form-group">
                  <label for="siteId" class="col-form-label">Aria in SQFT</label>
                  <input type="text" class="form-control" name="aria" placeholder="Aria in SQFT" />
               </div>
               <div class="form-group">
                  <label for="siteId" class="col-form-label">Total Payment</label>
                  <input type="text" class="form-control" name="totalPayment"  placeholder="Total Payment" />
               </div>
               <div class="">
                  <label for="siteId" class="col-form-label">Your Email</label>
                  <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required/>
               </div>
               <div class="form-group">
                  <label for="siteId" class="col-form-label">Password</label>
                  <input type="password" class="form-control" name="password" id="pass" placeholder="Password" required/>
               </div>
            </form>
         </div>
         <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <input type="submit" form="register-form" name="signup" id="signup" class="form-submit btn btn-primary" value="Save changes"/>
         </div>
      </div>
   </div>
</div>

<div class="container-lg">
    <div class="table-responsive">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                 <div class="d-flex justify-content-start col-sm-4">
                       <button type="button" class="btn btn-info add-new"><i class="fa fa-plus"></i><a href="#" data-bs-toggle="modal" data-bs-target="#addLandlordModal" class="text-decoration-none text-light">Add New</a></button>
                 </div>
                    <div class="col-sm-8"><h2>Landlords <b>Details</b></h2></div>

                </div>
            </div>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Site Id</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Phone</th>
                        <th>Site Location</th>
                        <th>District</th>
                        <th>Aria (ft)</th>
                        <th>Total Payment</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                 <% for(LandlordsDetails s:std){%>
                    <tr>
                        <td> <%=s.getSiteId()%></td>
                        <td> <%=s.getFirstName()%></td>
                        <td> <%=s.getLastName()%></td>
                        <td> <%=s.getPhone()%></td>
                        <td> <%=s.getSiteLocation()%></td>
                        <td> <%=s.getDistrict()%></td>
                        <td> <%=s.getAria()%></td>
                        <td> <%=s.getTotalPayment()%></td>
                        <td>
                            <modal visible="showModal"></modal>
                            <a href="ModifyServlet?id=<%=s.getSiteId()%>" class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
                            <a href="#" ng-click="toggleModal('<%=s.getSiteId()%>')" class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
                        </td>
                    </tr>
                 <% } %>
               </tbody>
            </table>
        </div>
    </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="js/jquery.toaster.js"></script>
  <% Boolean isTostActivate = (Boolean) request.getAttribute("isTostActivate");
     Boolean isDeleteTostActivate = (Boolean) request.getAttribute("isDeleteTostActivate");
  if (isTostActivate == null && isDeleteTostActivate == null) {
        isTostActivate = false;
        isDeleteTostActivate = false;
  } else{%>
      <script>
          var interval;
          var codetmpl = "<code>%codeobj%</code><br><code>%codestr%</code>";
          $(document).ready(function ()
          {
            randomToast();
          });

          function start ()
          {
            if (!interval)
            {
                interval = setInterval(function ()
            	{
            		randomToast();
            		clearInterval(interval);
            		interval = false;
            	}, 1500);
            }
          }

          function randomToast ()
          {
            var priority = 'success';
            <% if(isTostActivate != null && isTostActivate == true) { %>
            	var title    = 'Successfully';
            	var message  = 'Added Landlord!';
            <% } else if(isDeleteTostActivate != null && isDeleteTostActivate == true) { %>
                 var title    = 'Successfully';
                 var message  = 'Deleted Landlord!';
            <% }%>
            $.toaster({ priority : priority, title : title, message : message });
          }
      </script>
  <%}%>
</body>
</html>