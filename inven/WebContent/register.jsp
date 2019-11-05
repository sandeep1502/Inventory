<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Sign Up</title>
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

<!-- //lined-icons -->
<script src="js/jquery-1.10.2.min.js"></script>
<!--clock init-->
</head> 
<body>
								<!--/login-->
								
									   <div class="error_page">
												<!--/login-top-->
												
													<div class="error-top">
                                                     <h2 class="inner-tittle page">SIGN UP</h2><br>
													    <div class="login">
														
															 <form:form id="loginForm" modelAttribute="Registration" action="RegistrationProcess" method="post">
                                                                                                                                               
																		<form:input type="text" class="input-field" placeholder="User Name" id="name"  path="username"required></form:input>
																		
                                                                                                                                                <div class="form-group">
																			<label for="focusedinput" class="col-sm-5 control-label">USER TYPE</label>
																			<div class="col-sm-6" style="margin-top: 10px">
                                                                                                                                                            <select id="type" path="type">
                                                                                                                                                           <form:option value="ADMIN">ADMIN</form:option>
                                                                                                                                                           <form:option value="VENDOR">VENDOR</form:option>
                                                                                                                                                            </select>
                                                                                                                                                        </div>
                                                                                                                                                </div>
                                                                                                                                                
                                                                        <form:input type="text" class="input-field" placeholder="Email Id" id="mail" path="email"required></form:input>
																		<form:input type="password" name="password" placeholder="Password" id="password1" path="password" required></form:input>
                                                                         <form:input type="password" name="password" placeholder="Confirm Password" id="password2" path="cpassword"  required></form:input>
																		<div class="sign-up">
																					
																					  <form:button id="submit" name="submit">Submit</form:button>
																			
																		</div>
																		<div class="clearfix"></div>
																		
																		<div class="new">
																			<p class="sign">Already register ? <a href="login.html">Sign In</a></p>
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
            window.onload = function () 
                    {
                        document.getElementById("name").onchange = checkname;
                        document.getElementById("password1").onchange = validatePassword;
			document.getElementById("password2").onchange = validatePassword;
                    }
                     function checkname()
                  {
                      var y = "Exist";
                      var j;
                      var u=document.getElementById("name").value;
                      var r = new XMLHttpRequest();
                                   r.onreadystatechange = function()
                                         {
                                                if(r.readyState=='4' && r.status=='200')
                                                    { 
                                                        
                                                        j=r.responseText;
                                                      
                                                        if(j.localeCompare(y)==1)
                                                             {
                                                               // alert("User Name Already Exist");
                                                                 document.getElementById("name").setCustomValidity("User Name Already Exist");
                                                            }
                                                     }
                                        }
                                    r.open("GET","/Inventory/UserNameValidation?user="+u,true);
                                    r.send(null);
                  }
            function validatePassword() 
                    {
                        var i;
                        var k="sucess";
                        var pass2 = document.getElementById("password2").value;
                        var pass1 = document.getElementById("password1").value;
                        var u=document.getElementById("name").value;
                        var t=document.getElementById("type").value;
                        var g=document.getElementById("mail").value;
                        var p=document.getElementById("password1").value;
                           if (pass1 != pass2)
                               {
                                   document.getElementById("password2").setCustomValidity("Passwords Don't Match");
                                }
                           else
                               { 
                                  
                                   document.getElementById("password2").setCustomValidity("Registered Successfully");
                                   var req=new XMLHttpRequest();
                                   req.onreadystatechange = function()
                                         {
                                                if(req.readyState=='4' && req.status=='200')
                                                    { 
                                                        
                                                        i=req.responseText;
                                                      
                                                        if(i.localeCompare(k)==1)
                                                             {
                                                                alert("Registered Successfully");
                                                                 window.location.href="login.html";
                                                             }
                                                     }
                                        }
                                    req.open("GET","/Inventory/reg?user="+u+"&type="+t+"&pass="+p+"&mail="+g,true);
                                    req.send(null);
                               }
                    }	
         </script>
       
                   
    

<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.min.js"></script>
</body>
</html>