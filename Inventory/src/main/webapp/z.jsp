<%@ page import="java.sql.*" %>
<html>
    
<head>
<title>View All Issues</title>
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
                                                                                <a class="tooltips" href="logout.html"><i class="lnr lnr-power-switch"></i></a>
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
				<div class="outter-wp">
							    <div class="graph-visual tables-main">
								 <h3 class="inner-tittle two">Stock Issues Item</h3>
                                                                 <div class="graph">
                                                                     <div class="tables">
                                                                 <form name="railway">
                                                                    
                                                                     <label for="focusedinput" class="col-sm-2 control-label">Indent Id:</label>
								<div class="col-sm-2">
									<input type="text" class="form-control1" id="focusedinput" placeholder=" ">
                                                                </div>&nbsp;&nbsp;
                                                                      <label for="focusedinput" class="col-sm-2 control-label">Date:</label>
								<div class="col-sm-2">
									<input type="date" class="form-control1" id="focusedinput" placeholder=" ">
                                                                </div>
                                                                      <div class="col-sm-2">
									<p class="help-block">DD/MM/YY</p>
									</div>
                                                                     <br><br><br>
                                                                
                                                                     <div id="cont" class="ff"></div>
                                                                    <table class="table table-hover" id="table">
                                                                          
                                                                            <tr>
                                                                                 <td>S.No</td>
                                                                                <td>Issues_Id</td>
                                                                                <td>Issues_Item_Id</td>
                                                                                <td>Issues_Item_BatchNo</td>
                                                                                <td>Issues_Item_Quantity</td>
                                                                                <td>Issues_Item_Price</td>
                                                                               
                                                                            </tr>

                                                                       </table>
                                                                       
                                                                        <p class="four" align="top-right">
							<input type="button" class="a_demo_four" id="addButId" value="Add"  />
						</p> 
						
                                                        <label for="focusedinput" class="col-sm-2 control-label">Total Amount</label>
								<div class="col-sm-6">
									<input type="text" class="form-control1" id="focusedinput" placeholder=" ">
                                                                </div><br><br>
                                                         <p class="four">
							<input type="button" class="a_demo_four" id="bt" value="SUBMIT" onclick="submit()" />
							
							</p>

									
                                                                  
                                                                 </form>
                                                                        
																	
                                                                         </div>
                                                                       </div>
                                                            </div>
                                                	</div>
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
									  
									 <div id="uname"> <span class=" name-caret">SANDEEP</span></div>
									 <p>System Administrator <br>In <br>Company</p>
									             <ul>
									<li><a class="tooltips" href="Profile.jsp"><span>Profile</span><i class="lnr lnr-user"></i></a></li>
									
										<li><a class="tooltips" href="logout.html"><span>Log out</span><i class="lnr lnr-power-switch"></i></a></li>
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
										<li><a href="Create_New_Indents.jsp"> Create Indents</a></li>
									
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
 
function arrangeSno()
 
    {
           var i=0;
            $('#table tr').each(function() {
                $(this).find(".sNo").html(i);
                i++;
             });
 
    }
 
$(document).ready(function(){
$('#addButId').click(function(){
                   var sno=$('#table tr').length;
                       trow=  "<tr><td class='sNo'>"+sno+"</td>"+
                           "<td><input name='Issues_Id' type='text'></td>"+
                           "<td><input name='Issues_Item_Id' type='text'></td>"+
                           "<td><input name='Issues_Item_BatchNo' type='text'></td>"+
                            "<td><input name='Issues_Item_Quantity' type='text'></td>"+
                           "<td><input name='Issues_Item_Price' type='text'></td>"+
                           "<td><input type='button' class='rButton' id='reMove' value='Remove'></td>";
                      $('#table').append(trow);
                    });
                     });
 
$(document).on('click', 'input.rButton', function () {
       $(this).closest('tr').remove();
       arrangeSno();
     return false;
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