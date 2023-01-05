
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up Form</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">


    <!-- Main css -->
    <link rel="stylesheet" href="Admin/css/LoginStyle.css">
</head>
<body>
<!-- Sing in  Form -->
        <section class="sign-in">
            <div class="container">
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img src="Admin/img/Logo.png" alt="sing up image"></figure>
                    </div>

                    <div class="signin-form">
                        <h2 class="form-title">Sign in</h2>
                        <form action="landlordLoginServlet" method="Post" class="register-form" id="login-form">
                            <div class="form-group">
                                <label><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="email" name="email" placeholder="Email address" required/>
                            </div>
                            <div class="form-group">
                                <label> <i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="password" placeholder="Password" required/>
                            </div>

                            <div class="form-group form-button">
                                <input type="submit" name="signin" id="signin" class="form-submit" value="Log in"/>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </section>

 <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
       	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    	<script src="js/jquery.toaster.js"></script>
    	<script src="js/main.js"></script>
      <% Boolean isNotCorrectUser = (Boolean) request.getAttribute("isNotCorrectUser");
      if (isNotCorrectUser != null && isNotCorrectUser == true) {%>
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
                var priority = 'danger';
                     var title    = 'Sorry';
                     var message  = 'your username or password are incorrect - please try again.';
                $.toaster({ priority : priority, title : title, message : message });
              }
          </script>
      <%}%>
</body>
</html>
