<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Graph CSS -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<link href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css'>
<!-- lined-icons -->
<link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
<!-- //lined-icons -->
<script src="js/jquery-1.10.2.min.js"></script>
<!--clock init-->
</head> 
<body>
								<!--/login-->
	<div class="error_page">
             <div class="error-top">
		<h2 class="inner-tittle page">INVENTORY</h2>
                    <div class="login">
			<h3 class="inner-tittle t-inner">Sign In</h3>
			 <form:form id="loginForm" modelAttribute="login" action="loginProcess" method="post">
				<form:input type="text" name="user" class="text" path="user" value="User Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'User Name';}"></form:input>
				<form:input type="password" name="pass" id="password" path="Password"  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}"></form:input>
				<div class="submit">
                                     <form:button id="submit" name="register">SignIn</form:button>
                                </div>
                                <div class="clearfix"></div>
                                <div class="new">
                                    <p class="sign">Do not have an account ? <a href="register.html">Sign Up</a></p>
                                        <div class="clearfix"></div>
                                </div>
			</form:form>
		    </div>
            </div>
	</div>
				<!--//login-->
				<!--footer section start-->
	<div class="footer"></div>
				<!--footer section end-->
									
<!--js -->


<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.min.js"></script>
</body>
</html>