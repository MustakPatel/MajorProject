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
<!-- Main css -->
    <link rel="stylesheet" href="Admin/css/HomePage.css">

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
<script src="js/custom.js"></script>
</head>
<body ng-app="mymodal" ng-controller="MainCtrl">
<% ArrayList<MaterialsEntity> std = (ArrayList<MaterialsEntity>) request.getAttribute("materialsdata");%>
<%@ include file="Portal.jsp" %>
<div class="modal fade" id="addMaterialModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
   <div class="modal-dialog">
      <div class="modal-content">
         <div class="modal-header bg-light">
            <h5 class="modal-title" id="exampleModalLabel">Material</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal"
               aria-label="Close"></button>
         </div>
         <div class="modal-body">
            <!-- Sign up form -->
            <form method="get" action="addMaterialServlet" class="register-form" id="material-form">
               <div class="form-group">
                  <label for="siteId" class="col-form-label">Enter Site Id</label>
                  <input type="text" class="form-control" name="siteId" required/>
               </div>
               <div class="form-group">
                  <label for="materialName" class="col-form-label">Materials</label>
                  <select class="form-select form-control" aria-label="Default select example" id="materialName" name="materialName">
                     <option selected>Select Material Item</option>
                     <option value="Brick">Bricks</option>
                     <option value="Stone">Stones</option>
                     <option value="Tiles">Tiles</option>
                     <option value="Steel">Steel</option>
                     <option value="Electrical">Electrical Items</option>
                     <option value="Glass">Glass</option>
                     <option value="Doors">Doors</option>
                     <option value="Windows">Windows</option>
                     <option value="Paint">Paint Items</option>
                     <option value="Sand">Sand</option>
                     <option value="BlackSand">Black River Sand</option>
                     <option value="Gitti">Gitti</option>
                     <option value="Muram">Muram</option>
                     <option value="Others">Others</option>
                  </select>
               </div>
               <div class="form-group">
                  <label for="siteId" class="col-form-label">supplier Name</label>
                  <input type="text" class="form-control" name="supplier" required/>
               </div>
               <div class="form-group">
                  <label for="siteId" class="col-form-label">Rate</label>
                  <input type="text" class="form-control" name="Rate" required/>
               </div>
               <div class="form-group">
                  <label for="siteId" class="col-form-label">Quantity</label>
                  <input type="text" class="form-control" name="Quantity" />
               </div>
               <div class="form-group">
                  <label for="siteId" class="col-form-label">Purchase Date</label>
                  <input type="text" class="form-control" name="PurchaseDate"/>
               </div>
               <div class="form-group">
                  <label for="siteId" class="col-form-label">Total Payment</label>
                  <input type="text" class="form-control" name="TotalPayment" />
               </div>
            </form>
         </div>
         <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <input type="submit" form="material-form" name="signup" id="signup" class="form-submit btn btn-primary" value="Save changes"/>
         </div>
      </div>
   </div>
</div>
<div class="container-lg">
    <div class="table-responsive">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                 <div class="d-flex justify-content-start col-sm-4">\
                       <button type="button" class="btn btn-info add-new"><i class="fa fa-plus"></i><a href="#" data-bs-toggle="modal" data-bs-target="#addMaterialModal" class="text-decoration-none text-light">Add New</a></button>
                 </div>
                    <div class="col-sm-8"><h2>Materials <b>Details</b></h2></div>
                </div>
            </div>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Site Id</th>
                        <th>Material Name</th>
                        <th>Supplier Name</th>
                        <th>Rate</th>
                        <th>Quantity</th>
                        <th>Purchase Date</th>
                        <th>Total Payment</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                 <% for(MaterialsEntity s:std){%>
                    <tr>
                        <td> <%=s.getSiteId()%></td>
                        <td> <%=s.getMaterialName()%></td>
                        <td> <%=s.getSupplier()%></td>
                        <td> <%=s.getRate()%></td>
                        <td> <%=s.getQuantity()%></td>
                        <td> <%=s.getDate()%></td>
                        <td> <%=s.getTotalPayment()%></td>
                        <td>
                            <material visible="showModal"></material>
                            <a href="MaterialModifyServlet?id=<%=s.getMaterialid()%>" class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
                            <a href="#" ng-click="toggleModal('<%=s.getMaterialid()%>')" class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
                        </td>
                    </tr>
                 <% } %>
               </tbody>
            </table>
        </div>
    </div>
</div>

</body>
</html>