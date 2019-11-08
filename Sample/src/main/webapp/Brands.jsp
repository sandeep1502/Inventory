<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML>
<html>
<head>
<title>Brands</title>
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
				<!--outter-wp-->
							<div class="outter-wp">
							    <div class="graph-visual tables-main">
								<h3 class="inner-tittle two">Brands Table</h3>
                                                                    <div class="graph">
									<div class="tables">
                                                                            <table class="table table-hover">
                                                                                <thead>
                                                                                    <tr>

                                                                                        <th scope="col">Brand_Id</th>
                                                                                        <th scope="col">Brand_Title</th>
                                                                                        <th scope="col">Brand_Category</th>
                                                                                        <th scope="col">Brand_Description</th>
                                                                                         <th scope="col">DELETE</th>                                                                                       
                                                                                     </tr>
                                                                                </thead>
                                                                               
                                                                                
                                                                                <tbody>
							<c:forEach items="${brandlist.li}" var="user" varStatus="status">
										<tr>
											<td>${user.brnd_id}</td>
											<td>${user.brnd_title}</td>
											<td>${user.brnd_catg}</td>
											<td>${user.brnd_desc}</td>
											<td><button onclick="location.href='deletebrand/${user.brnd_id}'">Delete</button></td>
										</tr>
							</c:forEach>
                                                                                       
                                                                                 </tbody> 
                                                                                
                                                                            </table>
                                                                            
									</div>
                                                                    </div>
                                                                </div>
                                                	</div>
                                <!--//outer-wp-->
                                <!--//outer-wp-->
                    
                    <div class="outter-wp">
                        <div class="forms-main">
                            <div class="forms-inner">
                                <div class="set-1">
                                    <div class="graph-2 general">
                                        <h3 class="inner-tittle two">Delete Form</h3>
                                        <div class="grid-1">
                                            <div class="form-body">
                                                <form class="form-horizontal" >
                                                    <div class="form-group">
                                                        <label for="focusedinput" class="col-sm-2 control-label">Brand_Id</label>
                                                        <div class="col-sm-6">
                                                            <input type="text" class="form-control1"  id="Item_id_del" placeholder="Brand_Id">
                                                        </div>
                                                    </div>
                                                    <p class="four">
                                                        <a class="a_demo_four" onclick="del()" > Delete </a>
                                                    </p>
                                                    <p class="four">
                                                       <a class="a_demo_four" data-toggle="modal" data-target="#Update" >Update</a>
                                                    </p>  
                                                  
                                                    <div class="clearfix"> </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                             </div>
                         </div> 
                     </div>
                    
                    <!--//outer-wp-->
                                       <!--pop up-->
                                <div class="modal fade" id="Update" role="dialog">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                <h3 class="inner-tittle two">Edit Form</h3>
                                            </div>
                                            <!--update form-->  
                                           <!--//outer-wp-->
								<div class="outter-wp">
									<div class="forms-main">
										<div class="forms-inner">
											<!--/set-2-->
												<div class="set-1">
													<div class="graph-2 general">
														
															<div class="grid-1">
																<div class="form-body">
																	<form class="form-horizontal">
																		<div class="form-group">
																			<label for="focusedinput" class="col-sm-5 control-label">Brand_Id</label>
																				<div class="col-sm-6">
                                                                                                                                                                    <input type="text" class="form-control1" id="Brand_Ide" placeholder="Brand_Id" readonly>
                                                                                                                                                                </div>
                                                                                                                                                                
																		</div>
                                                                                                                                                <div class="form-group">
                                                                                                                                                            <label for="focusedinput" class="col-sm-5 control-label">Brand_Title</label>
                                                                                                                                                                    <div class="col-sm-6">
                                                                                                                                                                            <input type="text" class="form-control1" id="Brand_Titlee" placeholder="Brand_Title">
                                                                                                                                                                    </div>
                                                                                                                                                                    
                                                                                                                                                </div>
                                                                                                                                                <div class="form-group">
																			<label for="focusedinput" class="col-sm-5 control-label">Brand_Category</label>
																				<div class="col-sm-6">
																					<input type="text" class="form-control1" id="Brand_Categorye" placeholder="Brand_Category">
                                                                                                                                                                </div>
                                                                                                                                                </div>
                                                                                                                                                           <div class="form-group">
																			<label for="focusedinput" class="col-sm-5 control-label">Brand_Description</label>
																				<div class="col-sm-6">
																					<input type="text" class="form-control1" id="Brand_Descriptione" placeholder="Brand_Description">
                                                                                                                                                                </div>
                                                                                                                                                </div>  
                                                                                                                                                                <p class="four">
																			<a class="a_demo_four" onclick="edit()">
																				Edit
																			</a>
															</p>
                                                                                                                                         </form>
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
                                            
                                            <!--//update form-->
                                        </div>
                                    </div>
                                </div>
                           <!-- //pop up-ends -->
                    
                             <script>
                        function del()

                        {
                            
                            var u;
                           
                            var i = document.getElementById("Item_id_del").value;
                            var req=new XMLHttpRequest();
                            req.onreadystatechange = function()
                                             {
                                                    if(req.readyState=='4' && req.status=='200')
                                                        { 
                                                            
                                                            u=req.responseText;
                                                             alert(u);
                                                             window.location.href="Brands.jsp";
                                                             
                                                         }
                                             }
                            req.open("GET","/Inventory/DeleteBrands?id="+i,true);
                            req.send(null);
                           
                        }
                        
 </script>
                         <script> 
                       function edit()

                         {
                                              var u;
                                              
                                                var i = document.getElementById("Brand_Ide").value;
                                                var j = document.getElementById("Brand_Titlee").value;
                                                var k = document.getElementById("Brand_Categorye").value;
                                                var l = document.getElementById("Brand_Descriptione").value;
                                                
                                                var req=new XMLHttpRequest();
                                                req.onreadystatechange = function()
                                                                 {
                                                                        if(req.readyState=='4' && req.status=='200')
                                                                            { 

                                                                                u=req.responseText;
                                                                                alert(u);
                                                                                window.location.href="Brands.jsp";
                                                                                 
                                                                                 
                                                                             }
                                                                 }
                                                req.open("GET","/Inventory/EditBrands?Brand_Id="+i+"&Brand_Title="+j+"&Brand_Category="+k+"&Brand_Description="+l,true);
                                                req.send(null);

                        }
                       
                       </script>
                  
                                <!--//outer-wp-->
								<div class="outter-wp">
									<div class="forms-main">
										<div class="forms-inner">
											<!--/set-2-->
												<div class="set-1">
													<div class="graph-2 general">
														<h3 class="inner-tittle two">New Form</h3>
															<div class="grid-1">
																<div class="form-body">
																	
																	 <form:form class="form-horizontal" id="brandform" modelAttribute="iteam" action="addbrand" method="post">
																		<div class="form-group">
																			<label for="focusedinput" class="col-sm-2 control-label">Brand_Id</label>
																				<div class="col-sm-6">
																					<form:input  type="text" class="form-control1" path="brnd_id" id="brnd_id" name="brnd_id" placeholder="Brand_Id"/>
                                                                                                                                                                </div>
                                                                                                                                                                
																		</div>
                                                                         <div class="form-group">
                                                                         <label for="focusedinput" class="col-sm-2 control-label">Brand_Title</label>
                                                                         <div class="col-sm-6">
                                                                        <form:input type="text" class="form-control1" path="brnd_title" id="brnd_title" placeholder="Brand_Title"/>
                                                                        </div>
                                                                                                                                                                    
                                                                          </div>
                                                                          <div class="form-group">
																			<label for="focusedinput" class="col-sm-2 control-label">Brand_Category</label>
																				<div class="col-sm-6">
																					<form:input type="text" class="form-control1" path="brnd_catg" id="brand_catg" placeholder="Brand_Category"/>
                                                                                                                                                                </div>
                                                                                                                                                </div>
                                                                                                                                                           <div class="form-group">
																			<label for="focusedinput" class="col-sm-2 control-label">Brand_Description</label>
																				<div class="col-sm-6">
																					<form:input type="text" class="form-control1" path="brnd_desc" id="brnd_desc" placeholder="Brand_Description"/>
                                                                                                                                                                </div>
                                                                                                                                                </div> 
                                                                                          
																					 <p class="four">
																			
																				<input  type="submit"  value="SUBMIT">
																		
															</p>   </form:form>
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
                                
                                  <script>
                              function add1()
                                        {
                                                
                                                var u;
                                              
                                                var i = document.getElementById("Brand_Id").value;
                                                var j = document.getElementById("Brand_Title").value;
                                                var k = document.getElementById("Brand_Category").value;
                                                var l = document.getElementById("Brand_Description").value;
                                                
                                                var req=new XMLHttpRequest();
                                                req.onreadystatechange = function()
                                                                 {
                                                                        if(req.readyState=='4' && req.status=='200')
                                                                            { 

                                                                                u=req.responseText;
                                                                                alert(u);
                                                                                window.location.href="Brands.jsp";
                                                                                 
                                                                                 
                                                                             }
                                                                 }
                                                req.open("GET","/Inventory/AddBrands?Brand_Id="+i+"&Brand_Title="+j+"&Brand_Category="+k+"&Brand_Description="+l,true);
                                                req.send(null);

                        }
                                                            
                                                        
                                                        </script>
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
                                                        <script>
            window.onload = function () 
                    {
                        document.getElementById("Item_id_del").onchange = give;
                        
                    }
                    function give()
                  {
                     
                      var u=document.getElementById("Item_id_del").value;
                      document.getElementById("Brand_Ide").value = u;
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
                                                            alert("Loggedout Successfully");
                                                            window.location.href="logout.html";
                                                              
                                                         }
                                             }
                            req.open("GET","/Inventory/logout",true);
                            req.send(null);
                           
                        }
                    
                    
                         </script> 
<!--js -->
<link rel="stylesheet" href="<c:url value="/resources/css/vroom.css"/>" />
<script type="text/javascript" src="<c:url value="/resources/js/vroom.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/TweenLite.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/resources/js/CSSPlugin.min.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.nicescroll.js"/>"></script>
<script src="<c:url value="/resources/js/scripts.js"/>"></script>

<!-- Bootstrap Core JavaScript -->
   <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
</body>
</html>
