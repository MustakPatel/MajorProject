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

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<!-- Main css -->
    <link rel="stylesheet" href="Admin/css/HomePage.css">

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style>
body {
  background-color:  #eee;
}
.title {

    margin-bottom: 50px;
    text-transform: uppercase;
}

.card-block {
    font-size: 1em;
    position: relative;
    margin: 0;
    padding: 1em;
    border: none;
    border-top: 1px solid rgba(34, 36, 38, .1);
    box-shadow: none;

}
.card {
    font-size: 1em;
    overflow: hidden;
    padding: 5;
    border: none;
    border-radius: .28571429rem;
    box-shadow: 0 1px 3px 0 #d4d4d5, 0 0 0 1px #d4d4d5;
    margin-top:20px;
}

.carousel-indicators li {
    border-radius: 12px;
    width: 12px;
    height: 12px;
    background-color: #404040;
}
.carousel-indicators li {
    border-radius: 12px;
    width: 12px;
    height: 12px;
    background-color: #404040;
}
.carousel-indicators .active {
    background-color: white;
    max-width: 12px;
    margin: 0 3px;
    height: 12px;
}
.carousel-control-prev-icon {
 background-image: url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='%23fff' viewBox='0 0 8 8'%3E%3Cpath d='M5.25 0l-4 4 4 4 1.5-1.5-2.5-2.5 2.5-2.5-1.5-1.5z'/%3E%3C/svg%3E") !important;
}

.carousel-control-next-icon {
  background-image: url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='%23fff' viewBox='0 0 8 8'%3E%3Cpath d='M2.75 0l-1.5 1.5 2.5 2.5-2.5 2.5 1.5 1.5 4-4-4-4z'/%3E%3C/svg%3E") !important;
}
 lex-direction: column;
}

.btn {
  margin-top: auto;
}
</style>
</head>
<body>
<%@ include file="Portal.jsp" %>
<div class="container py-3">
  <div class="title h1 text-center">LIst of Materials</div>
  <!-- Card Start -->
  <div class="card">
    <div class="row ">

      <div class="col-md-7 px-3">
        <div class="card-block px-6">
          <h4 class="card-title">Materials</h4>
          <p class="card-text">
            The Carousel code can be replaced with an img src, no problem. The added CSS brings shadow to the card and some adjustments to the prev/next buttons and the indicators is rounded now. As in Bootstrap 3
          </p>
          <p class="card-text">Made for usage, commonly searched for. Fork, like and use it. Just move the carousel div above the col containing the text for left alignment of images</p>
          <br>
          <a href="#" class="mt-auto btn btn-primary  ">Read More</a>
        </div>
      </div>
      <!-- Carousel start -->
      <div class="col-md-5">
        <div id="CarouselTest" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#CarouselTest" data-slide-to="0" class="active"></li>
            <li data-target="#CarouselTest" data-slide-to="1"></li>
            <li data-target="#CarouselTest" data-slide-to="2"></li>

          </ol>
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img class="d-block" src="https://picsum.photos/450/300?image=1072" alt="">
            </div>
            <div class="carousel-item">
              <img class="d-block" src="https://picsum.photos/450/300?image=855" alt="">
            </div>
            <div class="carousel-item">
              <img class="d-block" src="https://picsum.photos/450/300?image=355" alt="">
            </div>
            <a class="carousel-control-prev" href="#CarouselTest" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
            <a class="carousel-control-next" href="#CarouselTest" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
          </div>
        </div>
      </div>
      <!-- End of carousel -->
    </div>
  </div>
  <!-- End of card -->

</div>

<div class="container">
  <div class="card float-left" style="max-width: 500px; ">
    <div class="row ">
      <div class="col-sm-7 col-md-7">
        <div class="card-block">
          <h4 class="card-title">View Bricks</h4>

          <a href="supplierList?mname=brick" class="btn btn-primary btn-sm">View Brick</a>
        </div>
      </div>

      <div class="col-sm-5 col-md-5">
        <img class="d-block w-100" src="img/bricks.jpg" alt="">
      </div>
    </div>
  </div>


    <div class="card float-right" style="max-width: 500px;">
      <div class="row">
        <div class="col-sm-5">
          <img class="d-block w-100" src="img/IronRods.jpg" alt="">
        </div>
        <div class="col-sm-7">
           <div class="card-block">
                    <h4 class="card-title">View Iron Rods</h4>

                    <a href="supplierList?mname=iron" class="btn btn-primary btn-sm">View Records</a>
                  </div>
        </div>

      </div>
    </div>
    <div class="card float-left" style="max-width: 500px; height:120px; ">
        <div class="row ">

          <div class="col-sm-7 col-md-7">
            <div class="card-block">
              <h4 class="card-title">View Natural Sand</h4>

              <a href="supplierList?mname=sand" class="btn btn-primary btn-sm">View Records</a>
            </div>
          </div>

          <div class="col-sm-5 col-md-5">
            <img class="d-block w-100" src="img/tinysend.jpg" alt="">
          </div>
        </div>
      </div>
<div class="card float-right" style="max-width: 500px; height:120px;">
      <div class="row">
        <div class="col-sm-5">
          <img class="d-block w-100" src="img/ultratech.jpg" alt="">
        </div>
        <div class="col-sm-7">
           <div class="card-block">
                    <h4 class="card-title">View Cements</h4>

                    <a href="supplierList?mname=cements" class="btn btn-primary btn-sm">View Records</a>
                  </div>
        </div>

      </div>
    </div>

         <div class="card float-left" style="max-width: 500px; height:120px;">
            <div class="row ">
              <div class="col-sm-7 col-md-7">
                <div class="card-block">
                  <h4 class="card-title">View Gitti</h4>

                  <a href="supplierList?mname=gitti" class="btn btn-primary btn-sm">View Records</a>
                </div>
              </div>

              <div class="col-sm-5 col-md-5">
                <img class="d-block w-100" src="img/gitti.jpg" alt="">
              </div>
            </div>
          </div>


            <div class="card float-right" style="max-width: 500px; height:120px;">
              <div class="row">
                <div class="col-sm-5">
                  <img class="d-block w-100" src="img/muram.jpg" alt="">
                </div>
                <div class="col-sm-7">
                   <div class="card-block">
                            <h4 class="card-title">View Muram</h4>
                            <a href="supplierList?mname=muram" class="btn btn-primary btn-sm">View Records</a>
                          </div>
                </div>

              </div>
            </div>
            <div class="card float-left" style="max-width: 500px; height:120px; ">
                <div class="row ">

                  <div class="col-sm-7 col-md-7">
                    <div class="card-block">
                      <h4 class="card-title">View Tiles</h4>

                      <a href="supplierList?mname=tiles" class="btn btn-primary btn-sm">View Records</a>
                    </div>
                  </div>

                  <div class="col-sm-5 col-md-5">
                    <img class="d-block w-100" src="img/Tiles.jpg" alt="">
                  </div>
                </div>

              </div>
                 <div class="card float-right" style="max-width: 500px; height:120px;">
                 <div class="row">
                      <div class="col-sm-5">
                         <img class="d-block w-100" src="img/blackRiverSand.jpg" alt="">
                       </div>
                      <div class="col-sm-7">
                      <div class="card-block">
                              <h4 class="card-title">View black River Sand</h4>
                              <a href="supplierList?mname=BlackSand" class="btn btn-primary btn-sm">View Records</a>
                      </div>
                       </div>
              </div>
                </div>
            <div class="card float-left" style="max-width: 500px; height:120px; ">
                <div class="row ">

                  <div class="col-sm-7 col-md-7">
                    <div class="card-block">
                      <h4 class="card-title">View color Box</h4>

                      <a href="supplierList?mname=tiles" class="btn btn-primary btn-sm">View Records</a>
                    </div>
                  </div>
                  <div class="col-sm-5 col-md-5">
                    <img class="d-block w-100" src="img/colorBox.jpg" alt="">
                  </div>
                </div>
  </div>

 <br>
<br>


</body>
</html>