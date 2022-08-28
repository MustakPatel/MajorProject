<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!-- Main css -->
    <link rel="stylesheet" href="Admin/css/LoginStyle.css">
</head>
<body>
<%@ include file="Portal.jsp" %>

    <div class="main">

        <!-- Sign up form -->
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Add new Material Details</h2>
                        <form method="get" action="addMaterialServlet" class="register-form" id="register-form">
                            <div class="form-group">
                                <label><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="siteId" placeholder="Enter Site Id" required/>
                            </div>
                             <div class="form-group">
                            <select class="form-select" aria-label="Default select example" id="materialName" name="materialName">
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
                                <label><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="supplier" placeholder="supplier Name" required/>
                            </div>
                            <div class="form-group">
                                <label><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="Rate" placeholder="Rate" required/>
                            </div>
                            <div class="form-group">
                                <label><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="Quantity"  placeholder="Quantity" />
                            </div>
                            <div class="form-group">
                                <label><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="PurchaseDate" placeholder="Purchase Date" />
                            </div>
                            <div class="form-group">
                                <label ><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="TotalPayment" placeholder="Total Payment" />
                            </div>

                            <div class="form-group form-button">
                                <input type="submit" name="signup" id="signup" class="form-submit" value="Add Material"/>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>