<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Augment an Admin Panel Category Flat Bootstrap Responsive Web Template | Profile :: w3layouts</title>
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
<!-- /js -->
<script src="js/jquery-1.10.2.min.js"></script>
<!-- //js-->
</head> 
<body>
    
 <%
           
            
            HttpSession hs=null;
            String username=null;
            String usertype=null;
            String mail=null;
            RequestDispatcher rd=null;
            try{
              
            //validating login status
           hs=request.getSession(true);
           username=(String)hs.getAttribute("username");
           usertype=(String)hs.getAttribute("usertype");
           mail=(String)hs.getAttribute("mail");
              }catch(Exception ex){
                out.println(ex.getMessage());
            }  
           
            %>
                      
             <%
           
            String ls=null;
            
            try{
              
            //validating login status
           hs=request.getSession(true);
           ls=(String)hs.getAttribute("loginstatus");
           if (ls == null){
              response.sendRedirect("login.html");
           }else{
               if (!ls.equals("yes")){
                   response.sendRedirect("login.html");
               }
           }
              }catch(Exception ex){
                out.println(ex.getMessage());
            }  
           
            %>
            
    
   <div class="page-container">
   <!--/content-inner-->
	<div class="left-content">
	   <div class="inner-content">
		<!-- header-starts -->
			<div class="header-section">
						<!--menu-right-->
						<div class="top_menu">
                                                
											
                                                        
								
									
							<!--/profile_details-->
								<div class="profile_details_left">
									<ul class="nofitications-dropdown">
                                                                            <li class="dropdown note">
                                                                              <a class="tooltips" href="Profile.jsp"><i class="lnr lnr-user"></i></a>
                                                                            </li>
                                                                            <li class="dropdown note">
                                                                                <a class="tooltips" onclick="logout()"><i class="lnr lnr-power-switch"></i></a>
                                                                            </li>
                                                                        
                                                                         </ul>
                                                                <div class="clearfix"></div>	
                                                                </div>
							<div class="clearfix"></div>	
							<!--//profile_details-->
						</div>
						<!--//menu-right-->
					<div class="clearfix"></div>
				</div>
					<!-- //header-ends -->
						<!--outter-wp-->
							<div class="outter-wp">
									<!--sub-heard-part-->
								
								    <!--//sub-heard-part-->
                                                                    
                                                                 										<!--/profile-->
										<h3 class="sub-tittle pro">Profile</h3>
									       <div class="profile-widget">
														<img src=   "images/a.png" alt=" " />
														<h2><%= username %></h2>
														<p><%= usertype %></p>
													</div>
														<!--/profile-inner-->
														 
															   <div class="col-md-6 profile-info">
															   <h3 class="inner-tittle">Activity </h3>
																<div class="main-grid3 p-skill">
														
																		<ul class="timeline">
																			<li>
																			  <div class="timeline-badge info"><i class="fa fa-smile-o"></i></div>
																			  <div class="timeline-panel">
                                                                                                                                                              <div class="timeline-body">
																				 
																				  <p>User Name</p>
																				</div>
																				<div class="timeline-heading">
                                                                                                                                                                    <h4 class="timeline-title"><a href=""><%= username %></a></h4>
																				</div>
																				
																			  </div>
																			</li>
																			
																			<li>
																			  <div class="timeline-badge primary"><i class="fa fa-check-circle-o"></i></div>
																			  <div class="timeline-panel">
																				  <div class="timeline-body">
																				 
																				  <p>User Type</p>
																				</div>
																				<div class="timeline-heading">
																				   <h4 class="timeline-title"><a href=""><%= usertype %></a></h4>
																				</div>
																			  </div>
																			</li>
																			
																			<li>
																			  <div class="timeline-badge success"><i class="fa fa-star-o"></i></div>
																			  <div class="timeline-panel">
                                                                                                                                                                  <div class="timeline-body">
																				 
                                                                                                                                                                        <p>Email</p>
																				</div>
																				<div class="timeline-heading">
																				  <h4 class="timeline-title"><a href="mailto:info@example.com"><%= mail %></a></h4>
																				</div>
																				
																			  </div>
																			</li>
																		</ul>
																		<div class="clearfix"></div>		
																	</div>
																</div>
																<!--/map-->
															<div class="col-md-6 profile-info two">
															   <h3 class="inner-tittle two">My Office </h3>
																<div class="main-grid3 map">
	
																			  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3798.582828330139!2d83.38831331489148!3d17.81129279512861!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a395a45e58fef1d%3A0xef8a0a54c1049d42!2sNaina%20Power%20R%26D!5e0!3m2!1sen!2sin!4v1568623463478!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>">
																							<div class="gmap-info">
																									<h4> <i class="fa fa-map-marker"></i> <b><a href="#" class="text-dark">PENNANT TECHNOLOGIES:</a></b></h4>
																									<p>Plot No:D3,Non Sez Hills </p>
																									 <p>Madhurawada,Visakhapatnam</p>
																									<p>Andhra Pradesh 530048</p>
																								</div>
																	
																	</div>
																	
																	
																	<!--//map-->
																</div>
																<div class="clearfix"></div>
															</div>
															
											 	<!--//profile-inner-->
												<!--//profile-->
									</div>
									<!--//outer-wp-->
													
										
									 <!--footer section start-->
										<footer>
										   <p>& All Rights Reserved | Design by GIREESH </p>
										</footer>
									<!--//footer section end-->
								</div>
							</div>
				<!--//content-inner-->
			<!--/sidebar-menu-->
				<div class="sidebar-menu">
					<header class="logo">
					<a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span> </a> <a href="index.html"> <span id="logo"> MENU</span> 
					<!--<img id="logo" src="" alt="Logo"/>--> 
				  </a> 
				</header>
			<div style="border-top:1px solid rgba(69, 74, 84, 0.7)"></div>
			<!--/down-->
							<div class="down">	
									  
									 <div id="uname"> <span class=" name-caret"><%= username %></span></div>
									 <p><%= usertype %><br>In <br>Company</p>
                                                                       
									   <ul>
									<li><a class="tooltips" href="Profile.jsp"><span>Profile</span><i class="lnr lnr-user"></i></a></li>
									
										<li><a class="tooltips" onclick="logout()"><span>Log out</span><i class="lnr lnr-power-switch"></i></a></li>
										</ul>
									</div>
							   <!--//down-->
                             <div class="menu"><ul id="menu" >
										<li><a href="Dashboard.jsp"><i class="fa fa-tachometer"></i> <span>Dashboard</span></a></li>
										 <li id="menu-academico" ><a href="#"><i class="fa fa-table"></i> <span>Master Entry</span> <span class="fa fa-angle-right" style="float: right"></span></a>
										   <ul id="menu-academico-sub" >
                                                                                       <li id="menu-academico-avaliacoes" ><a href="Item_Master.jsp">Item Master</a></li>
											<li id="menu-academico-avaliacoes" ><a href="Item_Type.jsp">Item Type</a></li>
                                                                                        <li id="menu-academico-avaliacoes" ><a href="Item_Specification.jsp">Item Specification</a></li>
											<li id="menu-academico-boletim" ><a href="Brands.jsp">Brands</a></li>
											<li id="menu-academico-avaliacoes" ><a href="Outlets.jsp">Outlets</a></li>
										  </ul>
										</li>
										 <li id="menu-academico" ><a href="#"><i class="fa fa-file-text-o"></i> <span>Item Stock</span> <span class="fa fa-angle-right" style="float: right"></span></a>
											 <ul id="menu-academico-sub" >
												<li id="menu-academico-avaliacoes" ><a href="Live_Item_Stock.jsp"> Live Item Stock</a></li>
												<li id="menu-academico-boletim" ><a href="Price_Review.jsp">Price Review</a></li>
												
												<li id="menu-academico-boletim" ><a href="Stock_Adjustment.jsp">Stock Adjustment</a></li>
											  </ul>
										 </li>
									<li id="menu-academico" ><a href="#"><i class="lnr lnr-book"></i> <span>Goods</span> <span class="fa fa-angle-right" style="float: right"></span></a>
										  <ul id="menu-academico-sub" >
                                                                                      <li id="menu-academico-avaliacoes" ><a href="Goods_Receipts.jsp">Goods Receipts</a></li>
										  
											
										  </ul>
									 </li>
									
									 <li><a href="#"><i class="lnr lnr-envelope"></i> <span></span>Indents<span class="fa fa-angle-right" style="float: right"></span></a>
									   <ul>
										<li><a href="View_All_Indents.jsp"> View All Indents</a></li>
										
									
									  </ul>
									</li>
							        <li id="menu-academico" ><a href="#"><i class="lnr lnr-chart-bars"></i> <span>Stock Issues</span> <span class="fa fa-angle-right" style="float: right"></span></a>
										 <ul id="menu-academico-sub" >
											<li id="menu-academico-avaliacoes" ><a href="View_Stock_Issues.jsp">View Stock Issues</a></li>
											<li id="menu-academico-boletim" ><a href="New_Stock_Issues.jsp">New Stock Issues</a></li>

										  </ul>
									 </li>
									
								  </ul>
								</div>
							  </div>
							
							  <div class="clearfix"></div>		
							</div>
                                                      
                                                        
							<script>
							var toggle = true;
										
							$(".sidebar-icon").click(function() {                
							  if (toggle)
							  {
								$(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
								$("#menu span").css({"position":"absolute"});
							  }
							  else
							  {
								$(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
								setTimeout(function() {
								  $("#menu span").css({"position":"relative"});
								}, 400);
							  }
											
											toggle = !toggle;
										});
							</script>
                                                           <script>
                      function logout()

                        {
                    
        
                            var u;
                            var req=new XMLHttpRequest();
                            req.onreadystatechange = function()
                                             {
                                                    if(req.readyState=='4' && req.status=='200')
                                                        { 
                                                            
                                                            u=req.responseText;
                                                            alert("Logedout Successfully");
                                                            window.location.href="logout.html";
                                                              
                                                         }
                                             }
                            req.open("GET","/Inventory/logout",true);
                            req.send(null);
                           
                        }
                    
                    
                         </script> 
<!--js -->
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.min.js"></script>
</body>
</html>