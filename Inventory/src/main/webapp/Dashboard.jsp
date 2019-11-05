<%-- 
    Document   : Dashboard
    Created on : 18 Sep, 2019, 2:20:16 PM
    Author     : pennantstaff
--%>


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
     

<!DOCTYPE HTML>
<html>
<head>
<title>Dashboard</title>
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
<script src="js/amcharts.js"></script>	
<script src="js/serial.js"></script>	
<script src="js/light.js"></script>	
<script src="js/radar.js"></script>	
<link href="css/barChart.css" rel='stylesheet' type='text/css' />
<link href="css/fabochart.css" rel='stylesheet' type='text/css' />
<!--clock init-->
<script src="js/css3clock.js"></script>
<!--Easy Pie Chart-->
<!--skycons-icons-->
<script src="js/skycons.js"></script>

<script src="js/jquery.easydropdown.js"></script>

<!--//skycons-icons-->
</head> 
<body>
   
            
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
						<div class="outter-wp">
								<!--custom-widgets-->
                                      
                                                <div class="outter-wp">
								
												<div class="custom-widgets">
												   <div class="row-one">
														<div class="col-md-5 widget">
															<div class="stats-left ">
																<h5>Total</h5>
																<h4>Item Stock</h4>
															</div>
															<div class="stats-right">
                                      
															</div>
															<div class="clearfix"> </div>	
														</div>
														<div class="col-md-5 widget states-mdl">
															<div class="stats-left">
																<h5>Pending</h5>
																<h4>Indents</h4>
															</div>
															<div class="stats-right">
                                         
                                                                                                                 <label> </label>
                                        
															</div>
															<div class="clearfix"> </div>	
														</div>
														<div class="col-md-5 widget states-thrd">
															<div class="stats-left">
																<h5>Total</h5>
																<h4>Outlets</h4>
															</div>
															<div class="stats-right">
                                         
                                                                                                                 <label> </label>
                                        
															</div>
															<div class="clearfix"> </div>	
                                                                                                                </div>
														<div class="col-md-5 widget states-last">
															<div class="stats-left">
																<h5>Total</h5>
																<h4>StockIssues</h4>
															</div>
															<div class="stats-right">
                                         
                                                                                                                 <label></label>
                                        
															</div>
															<div class="clearfix"> </div>	
														</div>
														<div class="clearfix"> </div>	
													</div>
												</div>
                                        
												<!--//custom-widgets-->
												
													
												<!--/charts-->
												<div class="charts">
												  <div class="chrt-inner">
												    <div class="chrt-bars">
														<div class="col-md-6 chrt-two">
														 <h3 class="sub-tittle">Bar Chart </h3>
															<div id="chart2"></div>
															<script src="js/fabochart.js"></script>
                                                        
															<script>
															$(document).ready(function () {
																data = {
                                                                                                                                                              
                                                                                                                                   ,
																             
                                                                                                                                        };

																$("#chart1").faBoChart({
																  time: 500,
																  animate: true,
																  instantAnimate: true,
																  straight: false,
																  data: data,
																  labelTextColor : "#002561",
																});
																$("#chart2").faBoChart({
																  time: 2500,
																  animate: true,
																  data: data,
																  straight: true,
																  labelTextColor : "#002561",
																});
															});
															</script>
														</div>
															
																<div class="clearfix"> </div>
															</div>										
												<!--/float-charts-->
												<div class="pie">
														
				
														 </div>
														
																<div class="clearfix"> </div>
														</div>
												<div class="area">
											
																<div class="clearfix"></div>
												</div>
													<!--//weather-charts-->
														<div class="graph-visualization">
															<div class="col-md-6 map-1">
																<h3 class="sub-tittle">Weather </h3>
																	<div class="weather">
																	
																		<a class="weatherwidget-io" href="https://forecast7.com/en/17d8383d39/530048/" data-label_1="VISAKHAPATNAM" data-label_2="WEATHER" data-theme="sky" >VISAKHAPATNAM WEATHER</a>
																		
																		<div class="clearfix"> </div>
																	
																	<div class="weather-bottom">
															<div class="weather-bottom1">
																<div class="weather-head">
																					
																	<script>
!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src='https://weatherwidget.io/js/widget.min.js';fjs.parentNode.insertBefore(js,fjs);}}(document,'script','weatherwidget-io-js');
</script>
																
															</div>
															</div>
															
														
															<div class="clearfix"> </div>
														</div>

																</div>

															</div>
															<div class="col-md-6 map-2">
                                                                                                                         
																 <div class="profile-nav alt">
                                                                                                                                      
																	<section class="panel">
                                                                                                                                              <h3 class="sub-tittle">India </h3>
																		<div class="user-heading alt clock-row terques-bg">
																			<h3 class="sub-tittle clock">Easy Clock </h3>
																		</div>
																			<ul id="clock">
																				<li id="sec"></li>
																				<li id="hour"></li>
																				<li id="min"></li>
																			</ul>

																		

																	</section>

																</div>
															</div>
															<div class="clearfix"> </div>
														</div>

												<!--//charts-->
												
										<!--/bottom-grids-->		 
									<div class="bottom-grids">
										<div class="dev-table">    
											
                                      
                                        
										<div class="clearfix"></div>		
										
                                                                                		<div class="col-md-6 profile-info two">
															   <h3 class="inner-tittle two">My Office </h3>
																<div class="main-grid3 map">
	
																		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3902.2536867765943!2d83.38750401488235!3d17.811759287825602!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a394337db073fc3%3A0x17250d1fa3f6b7a6!2sPennant%20Technologies%20Private%20Limited!5e1!3m2!1sen!2sin!4v1568809566615!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
																							<div class="gmap-info">
																									<h4> <i class="fa fa-map-marker"></i> <b><a href="#" class="text-dark">PENNANT TECHNOLOGIES:</a></b></h4>
																									<p>Plot No:D2, IT PARK, HILL No:2 </p>
																									 <p>RISHIKONDA,Madhurawada,Visakhapatnam</p>
																									<p>Andhra Pradesh 530003</p>
																								</div>
																	
																	</div>
																	
																	
																	<!--//map-->
																</div>
																<div class="clearfix"></div>
                                                                                
										</div>
										</div>
									<!--//bottom-grids-->
									
									</div>
									<!--/charts-inner-->
									</div>
										<!--//outer-wp-->
									</div>
									 <!--footer section start-->
										<footer>
										   <p>&copy  All Rights Reserved || Design by Gireesh</p>
										</footer>
									<!--footer section end-->
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
									  
									  <div id="uname"> <span class=" name-caret"><></span></div>
									 <p><><br>In <br>Company</p>
									<ul>
									<li><a class="tooltips" href="Profile.jsp"><span>Profile</span><i class="lnr lnr-user"></i></a></li>
									
										<li><a class="tooltips" onclick="logout()"><span>Log out</span></a></li>
										</ul>
									</div>
							   <!--//down-->
                                                            <div class="menu">
									<ul id="menu" >
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
<!--js -->
<link rel="stylesheet" href="css/vroom.css">
<script type="text/javascript" src="js/vroom.js"></script>
<script type="text/javascript" src="js/TweenLite.min.js"></script>
<script type="text/javascript" src="js/CSSPlugin.min.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>

<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.min.js"></script>
</body>
</html>