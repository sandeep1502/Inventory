
<%@ page import="java.sql.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<head>
<title>View All Indents</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
        <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel='stylesheet' type='text/css' />
        <!-- Custom CSS -->
        <link href="<c:url value="/resources/css/style.css"/>" rel='stylesheet' type='text/css' />
        <!-- Graph CSS -->
        <link href="<c:url value="/resources/css/font-awesome.css"/>" rel="stylesheet"> 
        <!-- jQuery -->
        <link href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css'>
        <!-- lined-icons -->
        <link rel="stylesheet" href="<c:url value="/resources/css/icon-font.min.css"/>" type='text/css' />
        <!-- //lined-icons -->
        <script src="<c:url value="/resources/js/jquery-1.10.2.min.js"/>"></script>
        <script src="<c:url value="/resources/js/amcharts.js"/>"></script>	
        <script src="<c:url value="/resources/js/serial.js"/>"></script>	
        <script src="<c:url value="/resourcesjs/light.js"/>"></script>	
        <script src="<c:url value="/resources/js/radar.js"/>"></script>	
        <link href="<c:url value="/resources/css/barChart.css"/>" rel='stylesheet' type='text/css' />
        <link href="<c:url value="/resources/css/fabochart.css"/>" rel='stylesheet' type='text/css' />
        <script src="<c:url value="/resources/js/css3clock.js"/>"></script>
        <script src="<c:url value="/resources/js/skycons.js"/>"></script>
        <script src="<c:url value="/resources/js/jquery.easydropdown.js"/>"></script>
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
				<!--outter-wp-->
							<div class="outter-wp">
							    <div class="graph-visual tables-main">
								
                                                                <h3 class="inner-tittle two">Indents</h3>
                                                                    <div class="graph">
									<div class="tables">
                                                                            <table class="table table-hover">
                                                                                <thead>
                                                                                    <tr>
                                                                                        <th scope="col">Indents_Id</th>
                                                                                        <th scope="col">Outlet_Id</th>
                                                                                        <th scope="col">Indents_date </th>
                                                                                        <th scope="col">Indents_amount</th>
                                                                                       <th scope="col"> Issued Status </th>
                                                                                    </tr>
                                                                                </thead>
                                                                               
                                                                                
                                                                                <tbody>
                                                                                        
                                                                                            <c:forEach items="${VendorViewIndent.vib}" var="user">
																			<tr>
  																				<td>${user.indent_Id}</td>
 																				<td>${user.indents_Item}</td>
																				<td>${user.indent_Date}</td>
																				<td>${user.indents_Amount}</td>
 																				<td>${user.issued_Status}</td>
																			</tr>
                                                                                      </c:forEach>
                                                                                       
                                                                                 </tbody> 
                                                                               
                                                                            </table>
                                                                            
									</div>
                                                                    </div>
                                                            </div>
                                                	</div>
                                <!--//outer-wp-->
						<!--footer section start-->
                                                
										<footer>
										   <p>&copy  All Rights Reserved || Design by Gireesh</p>
										</footer>
									<!--footer section end-->
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
									  
									  <div id="uname"> <span class=" name-caret"></span></div>
									 <p><br>In <br>Company</p>
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
                                                          function my()
                                                            {
                                                                
                                                                
                                                                
                                                                
                                                                
                                                                
                                                            }
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
  <link rel="stylesheet" href="css/vroom.css">
        <script type="text/javascript" src="<c:url value="resources/js/vroom.js"/>"></script>
        <script type="text/javascript" src="<c:url value="resources/js/TweenLite.min.js"/>"></script>
        <script type="text/javascript" src="<c:url value="js/CSSPlugin.min.js"/>"></script>
        <script src="<c:url value="/resources/js/jquery.nicescroll.js"/>"></script>
        <script src="<c:url value="/resources/js/scripts.js"/>"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
</body>
</html>