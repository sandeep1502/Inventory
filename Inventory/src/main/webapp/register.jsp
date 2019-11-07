<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Sign Up</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="<c:url value="resources/css/bootstrap.min.css"/>" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="<c:url value="resources/css/style.css"/>" rel='stylesheet' type='text/css' />
<!-- Graph CSS -->
<link href="<c:url value="resources/css/font-awesome.css"/>" rel="stylesheet"> 
<!-- jQuery -->
<link href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css'>
<!-- lined-icons -->
<link rel="stylesheet" href="<c:url value="resources/css/icon-font.min.css"/>" type='text/css' />
<!-- //lined-icons -->
<script src="<c:url value="resources/js/jquery-1.10.2.min.js"/>"></script>
<!--clock init-->
</head> 
<body>
								<!--/login-->
								
									   <div class="error_page">
												<!--/login-top-->
												
													<div class="error-top">
                                                     <h2 class="inner-tittle page">SIGN UP</h2><br>
													    <div class="login">
														
															 <form:form id="loginForm" modelAttribute="user" action="RegistrationProcess" method="post">
                                                                                                                                               
																		<form:input path="username" name="username" id="username"  class="input-field" />
																		
                                                                                                                                                <div class="form-group">
																			<label for="focusedinput" class="col-sm-5 control-label">USER TYPE</label>
																			<div class="col-sm-6" style="margin-top: 10px">
                                                                                                                                                            <form:select id="type" path="type">
                                                                                                                                                           <form:option value="ADMIN">ADMIN</form:option>
                                                                                                                                                           <form:option value="VENDOR">VENDOR</form:option>
                                                                                                                                                            </form:select>
                                                                                                                                                        </div>
                                                                                                                                                </div>
                                                                                                                                                
                                                                        <form:input type="text" class="input-field" placeholder="Email Id" id="mail" path="email"></form:input>
																		<form:input type="password" name="password" placeholder="Password" id="password1" path="password"></form:input>
                                                                         <form:input type="password" name="password" placeholder="Confirm Password" id="password2" path="cpassword" ></form:input>
																		<div class="sign-up">
																					
																					  <form:button id="submit" name="submit">Submit</form:button>
																			
																		</div>
																		<div class="clearfix"></div>
																		
																		<div class="new">
																			<p class="sign">Already register ? <a href="login">Sign In</a></p>
																			<p class="sign"></p>
																			<div class="clearfix"></div>
																		</div>
																	</form:form>
														</div>
														
													</div>
													 </div>
												<!--//login-top-->
										  
										  	<!--//login-->
										    <!--footer section start-->
										<div class="footer">
										         
										</div>
									<!--footer section end-->
									<!--/404-->
<!--js -->

       <script>
    
         </script>
       
                   
    

<script src="<c:url value="resources/js/jquery.nicescroll.js"/>"></script>
<script src="<c:url value="resources/js/scripts.js"/>"></script>
<!-- Bootstrap Core JavaScript -->
   <script src="<c:url value="resources/js/bootstrap.min.js"/>"></script>
</body>
</html>