<%-- 
    Document   : Dashboard
    Created on : 18 Sep, 2019, 2:20:16 PM
    Author     : pennantstaff
--%>

<%@page import="db.Dbcon"%>
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
                                                                              <a class="tooltips" href="VendorProfile.jsp"><i class="lnr lnr-user"></i></a>
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
                                       <%  
                                                    String b,c,d;
                                                    int x=0,y=0,z=0,w=0;
                                                    String l,m,n;
                                                    int a=0;
                                                    try
                                                        {
                                                           Dbcon dc=new Dbcon();
                                                            Class.forName(dc.getDriver());
                                                            Connection con=DriverManager.getConnection(dc.getUrl(),dc.getUser(),dc.getPassword());
                                                            PreparedStatement ps1=con.prepareStatement("select * from INDENTS_TAB where indn_status='yes'");
                                                            ResultSet rs1=ps1.executeQuery();
                                                       %>
                                                <div class="outter-wp">
								
												<div class="custom-widgets">
												   <div class="row-one">
														<div class="col-md-5 widget">
															<div class="stats-left ">
																<h5>Issued</h5>
																<h4>Indent</h4>
															</div>
															<div class="stats-right">
                                        <%
                                                            while(rs1.next())
                                                                {
                                                                    a=a+1;
                                                                    
                                        %>
																<label><%=a %></label>
                                        <%
                                                                }
                                                           rs1.close();
                                        %>
															</div>
															<div class="clearfix"> </div>	
														</div>
														<div class="col-md-5 widget states-mdl">
															<div class="stats-left">
																<h5>Not Issued</h5>
																<h4>Indents</h4>
															</div>
															<div class="stats-right">
                                          <% 
                                               PreparedStatement ps2=con.prepareStatement("select * from INDENTS_TAB where indn_status='no'");
                                               ResultSet rs2=ps2.executeQuery();
                                              while(rs2.next())
                                                                {
                                                                   y=y+1;
                                                                }
                                          %>
                                                                                                                 <label><%=y %> </label>
                                         <%
                                                          rs2.close(); 
                                        %>
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
									  
									  <div id="uname"> <span class=" name-caret"><%= username %></span></div>
									 <p><%= usertype %><br>In <br>Company</p>
									<ul>
									<li><a class="tooltips" href="VendorProfile.jsp"><span>Profile</span><i class="lnr lnr-user"></i></a></li>
									
										<li><a class="tooltips" onclick="logout()"><span>Log out</span><i class="lnr lnr-power-switch"></i></a></li>
										</ul>
									</div>
							   <!--//down-->
                                                            <div class="menu">
									<ul id="menu" >
										<li><a href="indentdashboard.jsp"><i class="fa fa-tachometer"></i> <span>Dashboard</span></a></li>
										<li><a href="VendorItemTable.jsp"><i class="fa fa-table"></i> <span>View All Items</span></a></li>
									 <li><a href="#"><i class="lnr lnr-envelope"></i> <span></span>Indents<span class="fa fa-angle-right" style="float: right"></span></a>
									   <ul>
                                                                               <li><a href="VendorViewIndent.jsp"> View All Indents</a></li>
										<li><a href="Create_New_Indents.jsp"> Create Indents</a></li>
									  </ul>
									</li>
							       
								  </ul>
								</div>
							  </div>
							  <div class="clearfix"></div>		
							</div>
            
             <%
                                                        con.close();   
                                                         }   
                                                    catch(Exception ex)
                                                        {
                                                             ex.printStackTrace();
                                                        }
                                         %>
            
						
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