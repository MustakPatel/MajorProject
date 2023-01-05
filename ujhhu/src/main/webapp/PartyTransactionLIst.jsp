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
</head>
<body>
<% ArrayList<LandlordsDetails> std = (ArrayList<LandlordsDetails>) request.getAttribute("landlords");%>
<%@ include file="Portal.jsp" %>

<div class="container-lg">
    <div class="table-responsive">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                 <div class="d-flex justify-content-start col-sm-4">
                       <button type="button" class="btn btn-info add-new"><i class="fa fa-plus"></i><a href="AddPaymentTransaction" class="text-decoration-none text-light">Add New</a></button>
                 </div>
                    <div class="col-sm-8"><h2>Transaction <b>Details</b></h2></div>
                </div>
            </div>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Site Id</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Total Payment</th>
                        <th>Due Balance</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                 <% for(LandlordsDetails s:std){%>
                    <tr>
                        <td> <%=s.getSiteId()%></td>
                        <td> <%=s.getFirstName()%></td>
                        <td> <%=s.getLastName()%></td>
                        <td> <%=s.getTotalPayment()%></td>
                        <td> <%=s.getRemainingBalance()%></td>
                        <td>
                            <a href="transactionHistory?id=<%=s.getSiteId()%>"  title="Veiw all Transactions" data-toggle="tooltip">View Transaction history</a>
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
  <% Boolean isTransactionTostActivate = (Boolean) request.getAttribute("isTransactionTostActivate");
  if (isTransactionTostActivate != null && isTransactionTostActivate == true) {%>
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
            var title    = 'Successfully';
            var message  = 'Added new Transaction!';
            $.toaster({ priority : priority, title : title, message : message });
          }
      </script>
  <%}%>
</body>
</html>