<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
* {
  box-sizing: border-box;
}

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.header {
  text-align: center;
  padding: 32px;
}

.row {
  display: -ms-flexbox; /* IE 10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE 10 */
  flex-wrap: wrap;
  padding: 0 4px;
}

/* Create two equal columns that sits next to each other */
.column {
  -ms-flex: 50%; /* IE 10 */
  flex: 50%;
  padding: 0 4px;
}

.column img {
  margin-top: 8px;
  vertical-align: middle;
}

/* Style the buttons */
.btn {
  border: none;
  outline: none;
  padding: 10px 16px;
  background-color: #f1f1f1;
  cursor: pointer;
  font-size: 18px;
}

.btn:hover {
  background-color: #ddd;
}

.btn.active {
  background-color: #666;
  color: white;
}

/*for image effeect*/

.content img:hover {
  -webkit-filter: brightness(17%);
    transition: all 0.5s;

}

</style>
</head>
<body>

<!-- Header -->
<!-- <div class="header" id="myHeader"> -->
  <!-- <h1>Image Grid</h1> -->
 <!--  <p>Click on the buttons to change the grid view.</p> -->
  <!-- <button class="btn" onclick="one()">1</button> -->
  <!-- <button class="btn active" onclick="two()">2</button> -->
  <!-- <button class="btn" onclick="four()">4</button> -->
<!-- </div> -->

 <!-- Photo Grid -->
<div class="row" style="background: #F2F2F2;">
  <div class="column content">
    <img src="img/g1.jpeg" style="width:100%" data-aos="slide-right"
    data-aos-offset="-370"
    data-aos-delay="50"
    data-aos-duration="1000"
    data-aos-easing="ease"
    data-aos-mirror="true"
    data-aos-once="true"
    data-aos-anchor-placement="top-center">
    <img src="img/g2.jpeg" style="width:100%" data-aos="slide-right"
    data-aos-offset="-370"
    data-aos-delay="50"
    data-aos-duration="1000"
    data-aos-easing="easet"
    data-aos-mirror="true"
    data-aos-once="true"
    data-aos-anchor-placement="top-center">
    <img src="img/g3.jpeg" style="width:100%" data-aos="slide-right"
    data-aos-offset="-370"
    data-aos-delay="50"
    data-aos-duration="1000"
    data-aos-easing="ease"
    data-aos-mirror="true"
    data-aos-once="true"
    data-aos-anchor-placement="top-center">
    <img src="img/bg10.jpg" style="width:100%" data-aos="slide-right"
    data-aos-offset="-370"
    data-aos-delay="50"
    data-aos-duration="1000"
    data-aos-easing="ease-in-out"
    data-aos-mirror="true"
    data-aos-once="true"
    data-aos-anchor-placement="top-center">
    <img src="img/g5.jpg" style="width:100%" data-aos="slide-right"
    data-aos-offset="-370"
    data-aos-delay="50"
    data-aos-duration="1000"
    data-aos-easing="ease"
    data-aos-mirror="true"
    data-aos-once="true"
    data-aos-anchor-placement="top-center">
  </div>
  <div class="column content">
    <img src="img/bg2.jpg" style="width:100%"  data-aos="slide-left"
    data-aos-offset="-370"
    data-aos-delay="50"
    data-aos-duration="1000"
    data-aos-easing="ease"
    data-aos-mirror="true"
    data-aos-once="true"
    data-aos-anchor-placement="top-center">
    <img src="img/bg1.jpg" style="width:100%" data-aos="slide-left"
    data-aos-offset="-370"
    data-aos-delay="50"
    data-aos-duration="1000"
    data-aos-easing="ease"
    data-aos-mirror="true"
    data-aos-once="true"
    data-aos-anchor-placement="top-center">
    <img src="img/bg3.jpg" style="width:100%"  data-aos="slide-left"
    data-aos-offset="-370"
    data-aos-delay="50"
    data-aos-duration="1000"
    data-aos-easing="ease"
    data-aos-mirror="true"
    data-aos-once="true"
    data-aos-anchor-placement="top-center">
    <img src="img/bg11.jpg" style="width:100%" data-aos="slide-left"
    data-aos-offset="-370"
    data-aos-delay="50"
    data-aos-duration="1000"
    data-aos-easing="ease"
    data-aos-mirror="true"
    data-aos-once="true"
    data-aos-anchor-placement="top-center">
    <img src="img/bg5.jpg" style="width:100%"  data-aos="slide-left"
    data-aos-offset="-370"
    data-aos-delay="50"
    data-aos-duration="1000"
    data-aos-easing="ease"
    data-aos-mirror="true"
    data-aos-once="true"
    data-aos-anchor-placement="top-center">

  </div>
  <div class="column content">
    <img src="img/bg6.jpg" style="width:100%" data-aos="slide-right"
    data-aos-offset="-370"
    data-aos-delay="50"
    data-aos-duration="1000"
    data-aos-easing="ease"
    data-aos-mirror="true"
    data-aos-once="true"
    data-aos-anchor-placement="top-center">
    <img src="img/bg7.jpg" style="width:100%" data-aos="slide-right"
    data-aos-offset="-370"
    data-aos-delay="50"
    data-aos-duration="1000"
    data-aos-easing="ease"
    data-aos-mirror="true"
    data-aos-once="true"
    data-aos-anchor-placement="top-center">
    <img src="img/bg9.jpg" style="width:100%" data-aos="slide-right"
    data-aos-offset="-370"
    data-aos-delay="50"
    data-aos-duration="1000"
    data-aos-easing="ease"
    data-aos-mirror="true"
    data-aos-once="true"
    data-aos-anchor-placement="top-center">
    <img src="img/bg8.jpg" style="width:100%" data-aos="slide-right"
    data-aos-offset="-370"
    data-aos-delay="50"
    data-aos-duration="1000"
    data-aos-easing="ease"
    data-aos-mirror="true"
    data-aos-once="true"
    data-aos-anchor-placement="top-center">
    <img src="img/bg9.jpg" style="width:100%" data-aos="slide-right"
    data-aos-offset="-370"
    data-aos-delay="50"
    data-aos-duration="1000"
    data-aos-easing="ease"
    data-aos-mirror="true"
    data-aos-once="true"
    data-aos-anchor-placement="top-center">

  </div>
  <div class="column content">
    <img src="img/bg10.jpg" style="width:100%" data-aos="slide-left"
    data-aos-offset="-370"
    data-aos-delay="50"
    data-aos-duration="1000"
    data-aos-easing="ease"
    data-aos-mirror="true"
    data-aos-once="true"
    data-aos-anchor-placement="top-center">
    <img src="img/bg12.jpg" style="width:100%" data-aos="slide-left"
    data-aos-offset="-370"
    data-aos-delay="50"
    data-aos-duration="1000"
    data-aos-easing="ease"
    data-aos-mirror="true"
    data-aos-once="true"
    data-aos-anchor-placement="top-center">
    <img src="img/bg13.jpg" style="width:100%" data-aos="slide-left"
    data-aos-offset="-370"
    data-aos-delay="50"
    data-aos-duration="1000"
    data-aos-easing="ease"
    data-aos-mirror="true"
    data-aos-once="true"
    data-aos-anchor-placement="top-center">
    <img src="img/bg14.jpg" style="width:100%" data-aos="slide-left"
    data-aos-offset="-370"
    data-aos-delay="50"
    data-aos-duration="1000"
    data-aos-easing="ease"
    data-aos-mirror="true"
    data-aos-once="true"
    data-aos-anchor-placement="top-center">
    <img src="img/bg7.jpg" style="width:100%" data-aos="slide-left"
    data-aos-offset="-370"
    data-aos-delay="50"
    data-aos-duration="1000"
    data-aos-easing="ease"
    data-aos-mirror="true"
    data-aos-once="true"
    data-aos-anchor-placement="top-center">

  </div>
</div>

<script>
// Get the elements with class="column"
var elements = document.getElementsByClassName("column");

// Declare a loop variable
var i;

// Full-width images
function one() {
    for (i = 0; i < elements.length; i++) {
    elements[i].style.msFlex = "100%";  // IE10
    elements[i].style.flex = "100%";
  }
}

// Two images side by side
function two() {
  for (i = 0; i < elements.length; i++) {
    elements[i].style.msFlex = "50%";  // IE10
    elements[i].style.flex = "50%";
  }
}

Four images side by side
function four() {
  for (i = 0; i < elements.length; i++) {
    elements[i].style.msFlex = "25%";  // IE10
    elements[i].style.flex = "25%";
  }
}

// Add active class to the current button (highlight it)
var header = document.getElementById("myHeader");
var btns = header.getElementsByClassName("btn");
for (var i = 0; i < btns.length; i++) {
  btns[i].addEventListener("click", function() {
    var current = document.getElementsByClassName("active");
    current[0].className = current[0].className.replace(" active", "");
    this.className += " active";
  });
}
</script>

</body>
</html>