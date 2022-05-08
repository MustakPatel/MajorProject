<%@page import="java.util.ArrayList"%>
<%@ page import="com.Builder.model.*" %>

<!DOCTYPE html>
<html lang="en">
 <head>
   <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <title>HomePage</title>

      <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
      <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
      <!-- Main css -->
          <link rel="stylesheet" href="Admin/css/HomePage.css">

      <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
 <style>
 body{
     background:#f5f5f5;
     margin-top:20px;
 }
 .card {
     border: none;
     -webkit-box-shadow: 1px 0 20px rgba(96,93,175,.05);
     box-shadow: 1px 0 20px rgba(96,93,175,.05);
     margin-bottom: 30px;
 }
 .table th {
     font-weight: 500;
     color: #827fc0;
 }
 .table thead {
     background-color: #f3f2f7;
 }
 .table>tbody>tr>td, .table>tfoot>tr>td, .table>thead>tr>td {
     padding: 14px 12px;
     vertical-align: middle;
 }
 .table tr td {
     color: #8887a9;
 }
 .thumb-sm {
     height: 32px;
     width: 32px;
 }
 .badge-soft-warning {
     background-color: rgba(248,201,85,.2);
     color: #f8c955;
 }

 .badge {
     font-weight: 500;
 }
 .badge-soft-primary {
     background-color: rgba(96,93,175,.2);
     color: #605daf;
 }
 </style>
 </head>
 <body>
 <% ArrayList<LandlordsDetails> std = (ArrayList<LandlordsDetails>) request.getAttribute("landlords");%>
 <%@ include file="Portal.jsp" %>
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="card">
                    <div class="card-body">
                      <div class="row">
                                       <div class="d-flex justify-content-start col-sm-4">
                                             <button type="button" class="btn btn-info add-new"><i class="fa fa-plus"></i><a href="AddPaymentTransaction.jsp" class="text-decoration-none text-light">Add New</a></button>
                                       </div>
                                          <div class="col-sm-8"><h4>Transaction <b>History</b></h4></div>

                                      </div><br>
                        <div class="table-responsive">
                            <table class="table table-hover mb-0">
                                <thead>
                                    <tr class="align-self-center">
                                        <th>Site Id</th>
                                        <th>First Name</th>
                                        <th>Last Name</th>
                                        <th>Description</th>
                                        <th>Payment Type</th>
                                        <th>Paid Date</th>
                                        <th>Amount</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <% for(LandlordsDetails s:std){%>
                                    <tr>
                                        <td><%=s.getSiteId()%></td>
                                        <td><img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="" class="thumb-sm rounded-circle mr-2"><%=s.getFirstName()%></td>
                                        <td> <%=s.getLastName()%></td>
                                        <td> <%=s.getDescription()%></td>
                                        <td> <%=s.getAmountType()%></td>
                                        <td> <%=s.getPaidDate()%></td>
                                        <td> <%=s.getAmount()%></td>

                                        <td>
                                                                    <a href="#" class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
                                                                    <a href="#" class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
                                                                </td>
                                    </tr>
                                   <% } %>
                                </tbody>
                            </table>
                        </div>
                        <!--end table-responsive-->
                    </div>
                </div>
            </div>
        </div>
    </div>
 </body>
</html>
