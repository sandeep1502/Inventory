<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.sql.*" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE HTML>
<html>
<head>
<title>Price Review</title>
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
<script src="<c:url value="/resources/js/light.js"/>"></script>	
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
				
                                
                                <!--//outer-wp-->
								<div class="outter-wp">
									<div class="forms-main">
										<div class="forms-inner">
											<!--/set-2-->
												<div class="set-1">
													<div class="graph-2 general">
														<h3 class="inner-tittle two">stockadjustment</h3>
															<div class="grid-1">
																<div class="form-body">
																	            <form:form id="regForm" modelAttribute="stock" action="stockprocess" method="post" class="form-horizontal">

																		<div class="form-group">
																			<form:label path="Adjitem_id" class="col-sm-2 control-label">Item_Id</form:label>
																				<div class="col-sm-6">
																					<form:input path="Adjitem_id" type="text" class="form-control1" id="Adjitem_id" placeholder="Adjitem_id"/>
                                                                                                                                                                </div>
                                                                                                                                                                
																		</div>
                                                                                                                                                <div class="form-group">
                                                                                                                                                            <form:label path="Adjbatch_no" class="col-sm-2 control-label">Item_BatchNo</form:label>
                                                                                                                                                                    <div class="col-sm-6">
                                                                                                                                                                            <form:input path="Adjbatch_no" type="text" class="form-control1" id="Adjbatch_no" placeholder="Adjbatch_no" />
                                                                                                                                                                    </div>
                                                                                                                                                                    
                                                                                                                                                </div>
                                                                                                                                                
                                                                                                                                                
                                                                                                                                                
                                                                                                                                                
                                                                                                                                                
                                                                                                                                                
                                                                                                                                                
                                                                                                                                               
                                                                                                                                                                <div class="form-group">
																			                   <form:label path="defect_stock" class="col-sm-2 control-label">defect_stock</form:label>
																				                  <div class="col-sm-6">
																					                  <form:input path="defect_stock" type="text" class="form-control1" id="defect_stock" placeholder="defect_stock"/>
                                                                                                                                                                                  </div>
																		</div>
                                                                                                                                                        <div class="form-group">
																			           <form:label path="reason" class="col-sm-2 control-label">reason</form:label>
																				          <div class="col-sm-6">
																					        <form:input path="reason"  type="text" class="form-control1" id="reason" placeholder="reason" />
                                                                                                                                                                         </div>
                                                                                                                                                        </div>
                                                                                                                                                        
                                                                                                                                                                            <p class="four">
																		<form:button id="submit" name="submit">Submit</form:button>       </p> 
																		 </form:form>                                                                                                    
                                                                          </div>                                         
                                                                                                                                      
																</div>
															</div>
													</div>
												</div>
											<!--//set-2-->
										</div>
									<!--//forms-inner-->
									</div> 
								<!--//forms-->											   
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
									<li><a class="tooltips" href="Profile.jsp"><span>Profile</span><i class="lnr lnr-user"></i></a></li>
									
										<li><a class="tooltips" onclick="logout()"><span>Log out</span><i class="lnr lnr-power-switch"></i></a></li>
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
                          <!--  <script>
                                function call()
                                            { 
                                                //alert("sad");
                                                var X = new XMLHttpRequest(); 
                                                var id=document.getElementById("a").value;
                                                var batchno=document.getElementById("b").value;
                                                var saleprice=document.getElementById("c").value;
                                                var costprice=document.getElementById("d").value;
                                                var mrpprice=document.getElementById("e").value;
                                                var u;
                                                X.onreadystatechange = function() 
                                                                        {

                                                                         if (X.readyState== '4' && X.status == '200') 
                                                                             { 
                                                                                     u=X.responseText;
                                                                                    alert(u);
                                                                                    window.location.href="Live_Item_Stock.jsp";
                                                                             }
                                                                        };
                                                X.open("GET","/Inventory/PriceReview?itemid="+id+"&batchno="+batchno+"&saleprice="+saleprice+"&costprice="+costprice+"&mrpprice="+mrpprice,true);
                                                X.send(null);
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
                    
                    
                         </script> -->
<!--js -->
<link rel="stylesheet" href="css/vroom.css">
<script type="text/javascript" src="<c:url value="/resources/js/vroom.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/TweenLite.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/CSSPlugin.min.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.nicescroll.js"/>"></script>
<script src="<c:url value="/resources/js/scripts.js"/>"></script>

<!-- Bootstrap Core JavaScript -->
   <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
</html>