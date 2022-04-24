<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
      <!-- <link rel="stylesheet" type="text/css" href="css/home_page.css"> -->
      <link rel="stylesheet" type="text/css" href="css/styles.css">
      <!-- Latest compiled and minified CSS -->
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
      <!-- jQuery library -->
      <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
      <!-- Popper JS -->
      <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
      <!-- Latest compiled JavaScript -->
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
      <style>
         .card{
         box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
         max-width: 300px;
         margin: auto;
         text-align: center;
         font-family: arial;
         }
         .title {
         color: grey;
         font-size: 18px;
         }
         .buttons2 {
         border: none;
         outline: 0;
         display: inline-block;
         padding: 8px;
         color: white;
         background-color: #000;
         text-align: center;
         cursor: pointer;
         width: 100%;
         font-size: 18px;
         }
         .ff{
         text-decoration: none;
         font-size: 22px;
         color: black;
         }
         .buttons2:hover, .ff:hover {
         opacity: 0.7;
         }
         .hidden {
         display: none;
         }
      </style>
   </head>
   <body>
      <div class="pos-f-t">
         <div class="collapse" id="navbarToggleExternalContent">
            <div class="bg-dark p-2">
               <nav class="navbar navbar-expand-sm navbar-dark bg-dark">
               <ul class="navbar-nav ml-auto" >
                  <li class="nav-item">
                     <a href="#" class="navbar-link">HOME</a>
                  </li>
                  <li class="nav-item">
                     <a href="#ENGINEERS" class="navbar-link">OUR ENGINEERS</a>
                  </li>
                  <li class="nav-item">
                     <a href="#WORK" class="navbar-link">OUR WORK</a>
                  </li>
                  <li class="nav-item">
                     <a href="#CONTECT" class="navbar-link"> CONTECT US</a>
                  </li>
                  <li class="nav-item">
                     <a href="#FTR" class="navbar-link">ABOUT COMPANY</a>
                  </li>
                  <li class="nav-item">
                     <div class="btn-group">
                        <button type="button" style="background:rgba(12, 181, 237, 1);" class="btn btn-info dropdown-toggle" data-toggle="dropdown">
                        Login
                        </button>
                        <div class="dropdown-menu">
                           <a class="dropdown-item" href="Login.jsp">Admin</a>
                           <a class="dropdown-item" href="LandlordLogin.jsp">Landlord</a>
                        </div>
                     </div>
                  </li>
               </ul>
            </div>
         </div>
      </div>
      <nav class="navbar navbar-dark bg-dark" id="top">
         <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
         <span class="navbar-toggler-icon"></span>
         </button>
         <a href="#" class="navbar-brand"> <font class="font" class="text-right" style="font-size: 20px;">MP<span> CONSTRUCTION</span></font></a>
      </nav>
      </div>
      <!-- <div class="container"> -->
      <div id="myslideshow" class="carousel slide carousel-fade" data-ride="carousel slide carousel-fade" data-ride="carousel" style="margin-top: 2px;">
         <!-- <ol class="carousel-indicators">
            <li class="active" data-target="#myslideshow" data-slide-to="0"></li>
            <li data-target="#myslideshow" data-slide-to="1"></li>
            <li  data-target="#myslideshow" data-slide-to="2"></li>
            <li  data-target="#myslideshow" data-slide-to="3"></li>
            <li data-target="#myslideshow" data-slide-to="4"></li>
            <li data-target="#myslideshow" data-slide-to="5"></li>
            <li data-target="#myslideshow" data-slide-to="6"></li>
            </ol> -->
         <div class="carousel-inner">
            <div class="carousel-item active">
               <img src="img/header_bg.png" class="img-fluid d-block  w-100" alt="Responsive image">
               <!-- <div class=" carousel-caption d-none d-md-block" class="heading" style="color: white;">
                  <h1  style="font-size: 40px;" class="text-left">INFRASTRUCTURE & DEVELOPMENT</h1>
                  <p style=" margin-bottom: 200px; font-family: 'Quicksand', sans-serif;  color: white; font-size: 30px;" class="text-left"><b>Quality is our strength</b></p>
                  <h2><a href="#image" class="recent_button" style="font-family: 'Quicksand', sans-serif; font-size: 1.5vw;" class="text-left">SEE OUR RECENT PROJECTS</a></h2>
                  </div> -->
            </div>
            <div class="carousel-item">
               <img src="img/bg1.jpg" class="img-fluid d-block w-100"  alt="Responsive image">
            </div>
            <div class="carousel-item">
               <img src="img/slider3.png" class="img-fluid d-block w-100"  alt="Responsive image">
            </div>
            <div class="carousel-item">
               <img src="img/slidebuild3.png" class="img-fluid d-block w-100" alt="Responsive image">
            </div>
            <div class="carousel-item">
               <img src="img/slider2.png" class="img-fluid d-block w-100" alt="Responsive image">
            </div>
            <div class="carousel-item">
               <img src="img/slider_s1.jpg" class="img-fluid d-block w-100" alt="Responsive image">
            </div>
            <div class="carousel-item">
               <img src="img/slider4.png" class="img-fluid d-block w-100" alt="Responsive image">
            </div>
         </div>
         <a href="#myslideshow" class="carousel-control-prev" role="button" data-slide="prev">
         <span class="carousel-control-prev-icon"></span>
         <span class="sr-only">Previous</span>
         </a>
         <a href="#myslideshow" class="carousel-control-next" role="button" data-slide="next">
         <span class="carousel-control-next-icon"></span>
         <span class="sr-only">Next</span>
         </a>
      </div>
      <!-- </div> -->
      <!-- ===================== OUR WORK HEADING ================== -->
      <div class="section-WORK">
         <div id="our_work" class="jumbotron" style="margin-bottom: -0.2%; background: #F2F2F2;">
            <div data-aos="slide-up"
               data-aos-offset="-50"
               data-aos-delay="50"
               data-aos-duration="1000"
               data-aos-easing="ease-in-out"
               data-aos-mirror="true"
               data-aos-once="true"
               data-aos-anchor-placement="top-center">
               <h3  class="sz_headline text-center" id="WORK">OUR WORK</h3>
               <p class="content">Our work portfolio ranges from single-family homes to two unit condo buildings to large multi-family residences.<br> No matter the size of the project, our goal is to deliver something exceptional every time.</p>
            </div>
         </div>
      </div>
      <%@ include file="viewMore.jsp" %>
      <br><br><br>
      <div class="section-timelines">
         <div id="our_work"  data-aos="zoom-in-up"
            data-aos-offset="-50"
            data-aos-delay="50"
            data-aos-duration="1000"
            data-aos-easing="ease-in-out"
            data-aos-mirror="true"
            data-aos-once="true"
            data-aos-anchor-placement="top-center">
            <h2  class="sz_headline text-center " id="ENGINEERS">OUR Engineers</h2>
            <p class="content">This, together with the ability to work with conceptual information,<br> helps to ensure an optimum design solution with clarity and certainty of detail that greatly enhances efficiency, project delivery and cost certainty..</p>
            <br>
         </div>
      </div>
      <div class="container">
         <div class="row">
            <div class="col-sm-6" data-aos="flip-right"
               data-aos-offset="-50"
               data-aos-delay="50"
               data-aos-duration="1000"
               data-aos-easing="ease-in-out"
               data-aos-mirror="true"
               data-aos-once="true"
               data-aos-anchor-placement="top-center">
               <div class="card">
                  <img src="img/eng2.jpg" alt="John" style="width:100%">
                  <h1>Mr. Faiz Khan</h1>
                  <p class="title">CIVIL ENGEENER</p>
                  <p>Medi-Caps University</p>
               </div>
            </div>
            <div class="col-sm-6" data-aos="flip-right"
               data-aos-offset="-50"
               data-aos-delay="50"
               data-aos-duration="1000"
               data-aos-easing="ease-in-out"
               data-aos-mirror="true"
               data-aos-once="true"
               data-aos-anchor-placement="top-center">
               <div class="card">
                  <img src="img/eng2.jpg" alt="John" style="width:100%">
                  <h1>Mr. Agnihotri</h1>
                  <p class="title">CIVIL ENGEENER</p>
                  <p>SLG University</p>
               </div>
            </div>
         </div>
      </div>
      <div class="section-WORK">
         <div id="our_work" class="jumbotron" style="margin-bottom: -0.2%; background: #F2F2F2;">
            <div data-aos="slide-up"
               data-aos-offset="-50"
               data-aos-delay="50"
               data-aos-duration="1000"
               data-aos-easing="ease-in-out"
               data-aos-mirror="true"
               data-aos-once="true"
               data-aos-anchor-placement="top-center">
               <h3  class="sz_headline text-center" style="font-size: 20px;" id="WORK">QUOTATION FOR CONSTRUCTION OF HOME </h3>
               <p class="content">You can see here our terms for more about with or withour matrail works.</p>
               <%@ include file="pdfReader.html" %>
            </div>
         </div>
      </div>
      <!-- for create footer -->
      <!--
         <li class="nav-item">
                      <a href="#" class="navbar-link">HOME</a>
                    </li>
                    <li class="nav-item">
                      <a href="#ENGINEERS" class="navbar-link">OUR ENGINEERS</a>
                    </li>
                    <li class="nav-item">
                      <a href="#WORK" class="navbar-link">OUR WORK</a>
                    </li>
                    <li class="nav-item">
                      <a href="#CONTECT" class="navbar-link"> CONTECT US</a>
                    </li>
                    <li class="nav-item">
                  <a href="#" class="navbar-link">ABOUT COMPANY</a>
                    </li>
                  -->
      <footer id="FTR" class="footer-distributed footer">
         <div class="footer-left">
            <h5>MP<span>CONSTRUCTION</span></h5>
            <p class="footer-links">
               <a href="#">Home</a>
               |
               <a href="#ENGINEERS" class="navbar-link">our engineers</a>
               |
               <a href="#WORK">our work</a>
               |
               <a href="#CONTECT">contect us</a>
               |
               <a href="#FTR">about company</a>
            </p>
            <p class="footer-company-name">© 1998 MP Construction Infrastructure and Development Pvt. Ltd.</p>
         </div>
         <div class="footer-center">
            <div>
               <i ><img src="img/location_png.jpg" style="width: 25px;"></i>
               <p>27-King Salmon,
                  Bristol Bay 9382 (Alaska)
               </p>
            </div>
            <script src="https://apps.elfsight.com/p/platform.js" defer></script>
            <div class="elfsight-app-2f734372-55e8-4354-967b-c138ae34bb98"></div>
            <div>
               <i><img src="img/phone_png.png" style="width: 25px;"></i>
               <p>+1 7027257705</p>
            </div>
            <div>
               <i><img src="img/mail_png.png" style="width: 25px;"></i>
               <p><a href="mailto:support@eduonix.com">MPConstruction@gmail.com</a></p>
            </div>
         </div>
         <div class="footer-right">
            <p class="footer-company-about">
               <span>About the company</span>
               We build beautiful house and building with material or labour which as you wish.
            </p>
            <br>
            <div class="col-sm-4 scroll-to-top-button">
               <a href="#top"><i class="fa fa-3x fa-chevron-circle-up"></i></a>
            </div>
         </div>
      </footer>
      <!-- for data insert in newsletter -->
      <script>
         $(".navbar-dark ul li a[href^='#']").on('click', function(e) {

          e.preventDefault();

          var hash = this.hash;

          $('html, body').animate({
            scrollTop: $(hash).offset().top
          }, 300, function(){

            window.location.hash = hash;
          });

         });



         $(".footer .scroll-to-top-button a[href^='#']").on('click', function(e) {

          e.preventDefault();

          var hash = this.hash;

          $('html, body').animate({
            scrollTop: $(hash).offset().top
          }, 300, function(){

            window.location.hash = hash;
          });

         });


         $('#viewmore').on('click', function(){
           $('.item:hidden').show();
         })

         // for whatsapp
      </script>
      <!-- <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
         <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
         <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
         -->
      <!-- for jquery offline -->
      <script src="js/jquery-3.0.0.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.3/js/bootstrap.min.js" integrity="sha384-ux8v3A6CPtOTqOzMKiuo3d/DomGaaClxFYdCu2HPMBEkf6x2xiDyJ7gkXU0MWwaD" crossorigin="anonymous"></script>
      <script src="js/jquery.waypoints.min.js"></script>
      <script src="js/main.js"></script>
      <!-- for aos plugin -->
      <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
      <script>
         AOS.init();
      </script>
      <!-- for jquery offline -->
      <!--  <script src="js/jquery-3.0.0.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.3/js/bootstrap.min.js" integrity="sha384-ux8v3A6CPtOTqOzMKiuo3d/DomGaaClxFYdCu2HPMBEkf6x2xiDyJ7gkXU0MWwaD" crossorigin="anonymous"></script>
          <script src="js/jquery.waypoints.min.js"></script>
          <script src="js/main.js"></script> -->
   </body>
</html>