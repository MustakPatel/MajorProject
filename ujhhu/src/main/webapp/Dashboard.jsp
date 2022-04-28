<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta http-equiv="X-UA-Compatible" content="ie=edge">
      <title>Sign Up Form</title>
      <!-- Font Icon -->
      <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
      <!-- Main css -->
      <link rel="stylesheet" href="Admin/css/HomePage.css">
      <link rel="stylesheet" href="Admin/css/style.css">
      <style>
         body {
         background-color: #f5f7fa;
         }
         .card {
         background-color: #fff;
         border-radius: 10px;
         border: none;
         position: relative;
         margin-bottom: 30px;
         box-shadow: 0 0.46875rem 2.1875rem rgba(90,97,105,0.1), 0 0.9375rem 1.40625rem rgba(90,97,105,0.1), 0 0.25rem 0.53125rem rgba(90,97,105,0.12), 0 0.125rem 0.1875rem rgba(90,97,105,0.1);
         }
         .l-bg-cherry {
         background: linear-gradient(to right, #493240, #f09) !important;
         color: #fff;
         }
         .l-bg-blue-dark {
         background: linear-gradient(to right, #373b44, #4286f4) !important;
         color: #fff;
         }
         .l-bg-green-dark {
         background: linear-gradient(to right, #0a504a, #38ef7d) !important;
         color: #fff;
         }
         .l-bg-orange-dark {
         background: linear-gradient(to right, #a86008, #ffba56) !important;
         color: #fff;
         }
         .card .card-statistic-3 .card-icon-large .fas, .card .card-statistic-3 .card-icon-large .far, .card .card-statistic-3 .card-icon-large .fab, .card .card-statistic-3 .card-icon-large .fal {
         font-size: 110px;
         }
         .card .card-statistic-3 .card-icon {
         text-align: center;
         line-height: 50px;
         margin-left: 15px;
         color: #000;
         position: absolute;
         right: -5px;
         top: 20px;
         opacity: 0.1;
         }
         .l-bg-cyan {
         background: linear-gradient(135deg, #289cf5, #84c0ec) !important;
         color: #fff;
         }
         .l-bg-green {
         background: linear-gradient(135deg, #23bdb8 0%, #43e794 100%) !important;
         color: #fff;
         }
         .l-bg-orange {
         background: linear-gradient(to right, #f9900e, #ffba56) !important;
         color: #fff;
         }
         .l-bg-cyan {
         background: linear-gradient(135deg, #289cf5, #84c0ec) !important;
         color: #fff;
         }
      </style>
   </head>
   <body>
   <%
           String userEmailId = (String) session.getAttribute("userName");
           if(userEmailId == null){
               RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
               rd.forward(request, response);
           }
       %>

      <%@ include file="Portal.jsp" %>
      <div class="col-md-12 ">
         <div class="row ">
            <div class="col-xl-3 col-lg-6">
               <div class="card l-bg-cherry">
                  <div class="card-statistic-3 p-4">
                        <div class="card-icon card-icon-large"><i class="fas fa-shopping-cart"></i></div>
                     <div class="mb-4">
                        <h5 class="card-title mb-0">New Landlord</h5>
                     </div>
                     <div class="row align-items-center mb-2 d-flex">
                        <div class="col-4">
                           <h2 class="d-flex align-items-center mb-0">
                              8
                           </h2>
                        </div>
                        <div class="col-8 text-right">
                           <a href="AddLandlord.jsp" class="btn btn-outline-light">click here</a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-xl-3 col-lg-6">
               <div class="card l-bg-blue-dark">
                  <div class="card-statistic-3 p-4">
                     <div class="card-icon card-icon-large"><i class="fas fa-users"></i></div>
                     <div class="mb-4">
                        <h5 class="card-title mb-0">New Material</h5>
                     </div>
                     <div class="row align-items-center mb-2 d-flex">
                        <div class="col-4">
                           <h2 class="d-flex align-items-center mb-0">
                              32
                           </h2>
                        </div>
                        <div class="col-8 text-right">
                           <a href="AddMaterial.jsp" class="btn btn-outline-warning">click here</a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-xl-3 col-lg-6">
               <div class="card l-bg-green-dark">
                  <div class="card-statistic-3 p-4">
                     <div class="card-icon card-icon-large"><i class="fas fa-ticket-alt"></i></div>
                     <div class="mb-4">
                        <h5 class="card-title mb-0">New Transaction</h5>
                     </div>
                     <div class="row align-items-center mb-2 d-flex">
                        <div class="col-4">
                           <h2 class="d-flex align-items-center mb-0">
                              48
                           </h2>
                        </div>
                        <div class="col-8 text-right">
                           <a href="#" class="btn btn-outline-light">click here</a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-xl-3 col-lg-6">
               <div class="card l-bg-orange-dark">
                  <div class="card-statistic-3 p-4">
                     <div class="card-icon card-icon-large"><i class="fas fa-dollar-sign"></i></div>
                     <div class="mb-4">
                        <h5 class="card-title mb-0">Revenue Today</h5>
                     </div>
                     <div class="row align-items-center mb-2 d-flex">
                        <div class="col-8">
                           <h2 class="d-flex align-items-center mb-0">
                              $11.61k
                           </h2>
                        </div>
                        <div class="col-4 text-right">
                           <span>2.5% <i class="fa fa-arrow-up"></i></span>
                        </div>
                     </div>
                     <div class="progress mt-1 " data-height="8" style="height: 8px;">
                        <div class="progress-bar l-bg-cyan" role="progressbar" data-width="25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="width: 25%;"></div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div class="row ">
            <div class="col-xl-3 col-lg-6">
               <div class="card l-bg-cherry">
                  <div class="card-statistic-3 p-4">
                     <div class="card-icon card-icon-large"><i class="fas fa-shopping-cart"></i></div>
                     <div class="mb-4">
                        <h5 class="card-title mb-0">View Landlords</h5>
                     </div>
                     <div class="row align-items-center mb-2 d-flex">

                        <div class="col-12 text-right">
                           <a href="LandlordsServlet" class="btn btn-outline-light">click here</a>
                        </div>
                     </div>
                     <div class="progress mt-1 " data-height="8" style="height: 8px;">
                        <div class="progress-bar l-bg-cyan" role="progressbar" data-width="25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="width: 25%;"></div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-xl-3 col-lg-6">
               <div class="card l-bg-blue-dark">
                  <div class="card-statistic-3 p-4">
                     <div class="card-icon card-icon-large"><i class="fas fa-users"></i></div>
                     <div class="mb-4">
                        <h5 class="card-title mb-0">View Materials</h5>
                     </div>
                     <div class="row align-items-center mb-2 d-flex">

                        <div class="col-12 text-right">
                           <a href="MaterialsCatalogue.jsp" class="btn btn-outline-warning">click here</a>
                        </div>
                     </div>
                     <div class="progress mt-1 " data-height="8" style="height: 8px;">
                        <div class="progress-bar l-bg-green" role="progressbar" data-width="25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="width: 25%;"></div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-xl-3 col-lg-6">
               <div class="card l-bg-green-dark">
                  <div class="card-statistic-3 p-4">
                     <div class="card-icon card-icon-large"><i class="fas fa-ticket-alt"></i></div>
                     <div class="mb-4">
                        <h5 class="card-title mb-0">View Transactions</h5>
                     </div>
                     <div class="row align-items-center mb-2 d-flex">

                        <div class="col-12 text-right">
                           <a href="#" class="btn btn-outline-light">click here</a>
                        </div>
                     </div>
                     <div class="progress mt-1 " data-height="8" style="height: 8px;">
                        <div class="progress-bar l-bg-orange" role="progressbar" data-width="25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="width: 25%;"></div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-xl-3 col-lg-6">
               <div class="card l-bg-orange-dark">
                  <div class="card-statistic-3 p-4">
                     <div class="card-icon card-icon-large"><i class="fas fa-dollar-sign"></i></div>
                     <div class="mb-4">
                        <h5 class="card-title mb-0">Revenue Today</h5>
                     </div>
                     <div class="row align-items-center mb-2 d-flex">
                        <div class="col-8">
                           <h2 class="d-flex align-items-center mb-0">
                              $11.61k
                           </h2>
                        </div>
                        <div class="col-4 text-right">
                           <span>2.5% <i class="fa fa-arrow-up"></i></span>
                        </div>
                     </div>
                     <div class="progress mt-1 " data-height="8" style="height: 8px;">
                        <div class="progress-bar l-bg-cyan" role="progressbar" data-width="25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="width: 25%;"></div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <div class="row ">
            <div class="col-xl-3 col-lg-6">
               <div class="card l-bg-cherry">
                  <div class="card-statistic-3 p-4">
                     <div class="card-icon card-icon-large"><i class="fas fa-shopping-cart"></i></div>
                     <div class="mb-4">
                        <h5 class="card-title mb-0">Edit Landlord</h5>
                     </div>
                     <div class="row align-items-center mb-2 d-flex">
                        <div class="col-4">
                           <h2 class="d-flex align-items-center mb-0">
                              32
                           </h2>
                        </div>
                        <div class="col-8 text-right">
                           <a href="LandlordsServlet" class="btn btn-outline-light">click here</a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-xl-3 col-lg-6">
               <div class="card l-bg-blue-dark">
                  <div class="card-statistic-3 p-4">
                     <div class="card-icon card-icon-large"><i class="fas fa-users"></i></div>
                     <div class="mb-4">
                        <h5 class="card-title mb-0">Edit Material</h5>
                     </div>
                     <div class="row align-items-center mb-2 d-flex">
                        <div class="col-4">
                           <h2 class="d-flex align-items-center mb-0">
                              32
                           </h2>
                        </div>
                        <div class="col-8 text-right">
                           <a href="MaterialServlet" class="btn btn-outline-warning">click here</a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-xl-3 col-lg-6">
               <div class="card l-bg-green-dark">
                  <div class="card-statistic-3 p-4">
                     <div class="card-icon card-icon-large"><i class="fas fa-ticket-alt"></i></div>
                     <div class="mb-4">
                        <h5 class="card-title mb-0">Edit Transaction</h5>
                     </div>
                     <div class="row align-items-center mb-2 d-flex">
                        <div class="col-4">
                           <h2 class="d-flex align-items-center mb-0">
                              32
                           </h2>
                        </div>
                        <div class="col-8 text-right">
                           <a href="#" class="btn btn-outline-light">click here</a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-xl-3 col-lg-6">
               <div class="card l-bg-orange-dark">
                  <div class="card-statistic-3 p-4">
                     <div class="card-icon card-icon-large"><i class="fas fa-dollar-sign"></i></div>
                     <div class="mb-4">
                        <h5 class="card-title mb-0">Revenue Today</h5>
                     </div>
                     <div class="row align-items-center mb-2 d-flex">
                        <div class="col-8">
                           <h2 class="d-flex align-items-center mb-0">
                              $11.61k
                           </h2>
                        </div>
                        <div class="col-4 text-right">
                           <span>2.5% <i class="fa fa-arrow-up"></i></span>
                        </div>
                     </div>
                     <div class="progress mt-1 " data-height="8" style="height: 8px;">
                        <div class="progress-bar l-bg-cyan" role="progressbar" data-width="25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100" style="width: 25%;"></div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- JS -->
      <script src="vendor/jquery/jquery.min.js"></script>
      <script src="js/main.js"></script>
   </body>
</html>