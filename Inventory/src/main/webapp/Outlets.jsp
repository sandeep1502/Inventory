     
<%@page import="db.Dbcon"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE HTML>
<html>
<head>
<title>Outlets</title>
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
<script src="js/css3clock.js"></script>
<script src="js/skycons.js"></script>
<script src="js/jquery.easydropdown.js"></script>
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
							    <div class="graph-visual tables-main">
								<h3 class="inner-tittle two">Outlets</h3>
                                                                    <div class="graph">
									<div class="tables">
                                                                            <table class="table table-hover">
                                                                                <thead>
                                                                                    <tr>

                                                                                        <th scope="col">Outlet_Id</th>
                                                                                        <th scope="col">Outlet_Location</th>
                                                                                        <th scope="col">Outlet_Address</th>
                                                                                        <th scope="col">Outlet_Dealer</th>
                                                                                         <th scope="col">Outlet_Contact_no</th>
                                                                                          <th scope="col">Outlet_Ph_no</th> 
                                                                                          <th scope="col">Outlet_mail</th>
                                                                                     </tr>
                                                                                </thead>
                                                                                <%  
                                                    String a,b,c,d,e,f,g;
                                                    try
                                                        {
                                                           Dbcon dc=new Dbcon();
                                                     Class.forName(dc.getDriver());
                                                     Connection con=DriverManager.getConnection(dc.getUrl(),dc.getUser(),dc.getPassword());
                                                            PreparedStatement ps=con.prepareStatement("Select * from Outlets");
                                                            ResultSet rs=ps.executeQuery();
                                                            while(rs.next())
                                                                {
                                                                    a=rs.getString(1);
                                                                    b=rs.getString(2);
                                                                    c=rs.getString(3);
                                                                    d=rs.getString(4);
                                                                    e=rs.getString(5);
                                                                    f=rs.getString(6);
                                                                    g=rs.getString(7);
                                
            %>
                                                                                
                                                                                <tbody>
                                                                                        <tr>
                                                                                            <td><%=a %></td>
                                                                                            <td><%=b %></td>
                                                                                            <td><%=c %></td>
                                                                                             <td><%=d %></td>
                                                                                            <td><%=e%></td>
                                                                                            <td><%=f%></td>
                                                                                             <td><%=g %></td>
                                                                                            
                                                                                        
                                                                                        </tr>
                                                                                       
                                                                                 </tbody> 
                                                                                 <%              } %> 
                                                                            </table>
                                                                             <%        rs.close();
                        ps.close();
                        con.close();
                    }
                catch(Exception ex)
                    {
                         ex.printStackTrace();
                    }
            %>
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
                                                        <label for="focusedinput" class="col-sm-2 control-label">Outlet_Id</label>
                                                        <div class="col-sm-6">
                                                            <input type="text" class="form-control1"  id="Item_id_del" placeholder="Outlet_Id">
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
																			<label for="focusedinput" class="col-sm-5 control-label">Outlet_Id</label>
																				<div class="col-sm-6">
																					<input type="text" class="form-control1" id="Outlet_Ide" placeholder="Outlet_Id" readonly>
                                                                                                                                                                </div>
                                                                                                                                                                
																		</div>
                                                                                                                                                <div class="form-group">
                                                                                                                                                            <label for="focusedinput" class="col-sm-5 control-label">Outlet_Location</label>
                                                                                                                                                                    <div class="col-sm-6">
                                                                                                                                                                            <input type="text" class="form-control1" id="Outlet_Locatione" placeholder="Outlet_Location">
                                                                                                                                                                    </div>
                                                                                                                                                                    
                                                                                                                                                </div>
                                                                                                                                                <div class="form-group">
																			<label for="focusedinput" class="col-sm-5 control-label">Outlet_Address</label>
																				<div class="col-sm-6">
																					<input type="text" class="form-control1" id="Outlet_Addresse" placeholder="Outlet_Address">
                                                                                                                                                                </div>
                                                                                                                                                </div>
                                                                                                                                            <div class="form-group">
																			<label for="focusedinput" class="col-sm-5 control-label">Outlet_Dealer</label>
																				<div class="col-sm-6">
																					<input type="text" class="form-control1" id="Outlet_Dealere" placeholder="Outlet_Dealer">
                                                                                                                                                                </div>
                                                                                                                                                                
																		</div>
                                                                                                                                                <div class="form-group">
                                                                                                                                                            <label for="focusedinput" class="col-sm-5 control-label">Outlet_Contact_Number</label>
                                                                                                                                                                    <div class="col-sm-6">
                                                                                                                                                                            <input type="text" class="form-control1" id="Outlet_Contact_Numbere" placeholder="Outlet_Contact_Number">
                                                                                                                                                                    </div>
                                                                                                                                                                    
                                                                                                                                                </div>
                                                                                                                                                <div class="form-group">
																			<label for="focusedinput" class="col-sm-5 control-label">Outlet_Phone_Number</label>
																				<div class="col-sm-6">
																					<input type="text" class="form-control1" id="Outlet_Phone_Numbere" placeholder="Outlet_Phone_Number">
                                                                                                                                                                </div>
                                                                                                                                                </div>
                                                                                                                                                           <div class="form-group">
																			<label for="focusedinput" class="col-sm-5 control-label">Outlet_Email_Id</label>
																				<div class="col-sm-6">
																					<input type="text" class="form-control1" id="Outlet_Email_Ide" placeholder="Outlet_Email_Id">
                                                                                                                                                                </div>
                                                                                                                                                </div>  
                                                                                                                                                                <p class="four">
																			<a class="a_demo_four" onclick="edit()">
																				EDIT
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
                                                             window.location.href="Outlets.jsp";
                                                             
                                                         }
                                             }
                            req.open("GET","/Inventory/DeleteOutlet?id="+i,true);
                            req.send(null);
                           
                        }
                        
                                </script>
                                
                                <script> 
                       function edit()

                         {
                                                
                                                var u;
                                              
                                                var i = document.getElementById("Outlet_Ide").value;
                                                var j = document.getElementById("Outlet_Locatione").value;
                                                var k = document.getElementById("Outlet_Addresse").value;
                                                var l = document.getElementById("Outlet_Dealere").value;
                                                var m = document.getElementById("Outlet_Contact_Numbere").value;
                                                var n = document.getElementById("Outlet_Phone_Numbere").value;
                                                var o = document.getElementById("Outlet_Email_Ide").value;
                                                var req=new XMLHttpRequest();
                                                req.onreadystatechange = function()
                                                                 {
                                                                        if(req.readyState=='4' && req.status=='200')
                                                                            { 

                                                                                u=req.responseText;
                                                                                alert(u);
                                                                                window.location.href="Outlets.jsp";
                                                                                 
                                                                                 
                                                                             }
                                                                 }
                                                req.open("GET","/Inventory/EditOutlets?Outlet_Id="+i+"&Outlet_Location="+j+"&Outlet_Address="+k+"&Outlet_Dealer="+l+"&Outlet_Contact_Number="+m+"&Outlet_Phone_Number="+n+"&Outlet_Email_Id="+o,true);
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
																	<form class="form-horizontal">
																		<div class="form-group">
																			<label for="focusedinput" class="col-sm-2 control-label">Outlet_Id</label>
																				<div class="col-sm-6">
																					<input type="text" class="form-control1" id="Outlet_Id" placeholder="Outlet_Id">
                                                                                                                                                                </div>
                                                                                                                                                                
																		</div>
                                                                                                                                                <div class="form-group">
                                                                                                                                                            <label for="focusedinput" class="col-sm-2 control-label">Outlet_Location</label>
                                                                                                                                                                    <div class="col-sm-6">
                                                                                                                                                                            <input type="text" class="form-control1" id="Outlet_Location" placeholder="Outlet_Location">
                                                                                                                                                                    </div>
                                                                                                                                                                    
                                                                                                                                                </div>
                                                                                                                                                <div class="form-group">
																			<label for="focusedinput" class="col-sm-2 control-label">Outlet_Address</label>
																				<div class="col-sm-6">
																					<input type="text" class="form-control1" id="Outlet_Address" placeholder="Outlet_Address">
                                                                                                                                                                </div>
                                                                                                                                                </div>
                                                                                                                                            <div class="form-group">
																			<label for="focusedinput" class="col-sm-2 control-label">Outlet_Dealer</label>
																				<div class="col-sm-6">
																					<input type="text" class="form-control1" id="Outlet_Dealer" placeholder="Outlet_Dealer">
                                                                                                                                                                </div>
                                                                                                                                                                
																		</div>
                                                                                                                                                <div class="form-group">
                                                                                                                                                            <label for="focusedinput" class="col-sm-2 control-label">Outlet_Contact_Number</label>
                                                                                                                                                                    <div class="col-sm-6">
                                                                                                                                                                            <input type="text" class="form-control1" id="Outlet_Contact_Number" placeholder="Outlet_Contact_Number">
                                                                                                                                                                    </div>
                                                                                                                                                                    
                                                                                                                                                </div>
                                                                                                                                                <div class="form-group">
																			<label for="focusedinput" class="col-sm-2 control-label">Outlet_Phone_Number</label>
																				<div class="col-sm-6">
																					<input type="text" class="form-control1" id="Outlet_Phone_Number" placeholder="Outlet_Phone_Number">
                                                                                                                                                                </div>
                                                                                                                                                </div>
                                                                                                                                                           <div class="form-group">
																			<label for="focusedinput" class="col-sm-2 control-label">Outlet_Email_Id</label>
																				<div class="col-sm-6">
																					<input type="text" class="form-control1" id="Outlet_Email_Id" placeholder="Outlet_Email_Id">
                                                                                                                                                                </div>
                                                                                                                                                </div>  
                                                                                                                                                                <p class="four">
																			<a class="a_demo_four" onclick="add1()">
																				ADD
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
                                
                                                                  <script>
                              function add1()
                                        {
                                                
                                                var u;
                                              
                                                var i = document.getElementById("Outlet_Id").value;
                                                var j = document.getElementById("Outlet_Location").value;
                                                var k = document.getElementById("Outlet_Address").value;
                                                var l = document.getElementById("Outlet_Dealer").value;
                                                  var m = document.getElementById("Outlet_Contact_Number").value;
                                                var n = document.getElementById("Outlet_Phone_Number").value;
                                                var o = document.getElementById("Outlet_Email_Id").value;
                                                var req=new XMLHttpRequest();
                                                req.onreadystatechange = function()
                                                                 {
                                                                        if(req.readyState=='4' && req.status=='200')
                                                                            { 

                                                                                u=req.responseText;
                                                                                alert(u);
                                                                                window.location.href="Outlets.jsp";
                                                                                 
                                                                                 
                                                                             }
                                                                 }
                                                req.open("GET","/Inventory/AddOutlet?Outlet_Id="+i+"&Outlet_Location="+j+"&Outlet_Address="+k+"&Outlet_Dealer="+l+"&Outlet_Contact_Number="+m+"&Outlet_Phone_Number="+n+"&Outlet_Email_Id="+o,true);
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
									  
									 <div id="uname"> <span class=" name-caret"><%= username %></span></div>
									 <p><%= usertype %><br>In <br>Company</p>
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
                      document.getElementById("Outlet_Ide").value = u;
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
<script type="text/javascript" src="js/vroom.js"></script>
<script type="text/javascript" src="js/TweenLite.min.js"></script>
<script type="text/javascript" src="js/CSSPlugin.min.js"></script>
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>

<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.min.js"></script>
</body>
</html>
