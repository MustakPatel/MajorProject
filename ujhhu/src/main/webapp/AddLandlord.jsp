<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

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
                        <h2 class="form-title">Add new Landlord</h2>
                        <form method="get" action="addLandlordServlet" class="register-form" id="register-form">
                            <div class="form-group">
                                <label><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="siteId" placeholder="Enter Site Id" required/>
                            </div>
                            <div class="form-group">
                                <label><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="firstName" placeholder="First Name" required/>
                            </div>
                            <div class="form-group">
                                <label><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="lastName" placeholder="Last Name" required/>
                            </div>
                            <div class="form-group">
                                <label><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="phone"  placeholder="Phone Number" />
                            </div>
                            <div class="form-group">
                                <label><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="siteLocation" placeholder="Site Location" />
                            </div>
                            <div class="form-group">
                                <label ><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="district" placeholder="District" />
                            </div>
                            <div class="form-group">
                                <label ><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="aria" placeholder="Aria in SQFT" />
                            </div>
                            <div class="form-group">
                                <label><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="totalPayment"  placeholder="Total Payment" />
                            </div>
                           <div class="form-group">
                               <label><i class="zmdi zmdi-email"></i></label>
                               <input type="email" name="email" id="email" placeholder="Your Email" required/>
                           </div>
                           <div class="form-group">
                               <label><i class="zmdi zmdi-lock"></i></label>
                               <input type="password" name="password" id="pass" placeholder="Password" required/>
                           </div>
                            <div class="form-group form-button">
                                <input type="submit" name="signup" id="signup" class="form-submit" value="Add User"/>
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