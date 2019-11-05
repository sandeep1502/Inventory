     

<!DOCTYPE HTML>
<html>
<head>
<title>Goods Receipts</title>
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
<body onload="createTable()">
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
								 <h3 class="inner-tittle two">Goods Receipts Form</h3>
                                                                 <div class="graph">
                                                                     <div class="tables">
                                                                         
                                                                 <form name="railway">
                                                                     
                                                                     
                                                                         
                                                                
                                                                      <label for="focusedinput" class="col-sm-2 control-label">Date:</label>
								<div class="col-sm-2">
									<input type="date" class="form-control1" id="Date" placeholder=" ">
                                                                </div>
                                                                      
                                                                   
                                                                     <br><br><br>
                                                                      <label for="focusedinput" class="col-sm-2 control-label">Vndrid:</label>
								<div class="col-sm-2">
									<input type="text" class="form-control1" id="Vid" placeholder=" ">
                                                                </div>&nbsp;&nbsp;
                                                                         <label for="focusedinput" class="col-sm-2 control-label">Invoice No:</label>
								<div class="col-sm-2">
									<input type="text" class="form-control1" id="Ino" placeholder=" ">
                                                                </div>&nbsp;&nbsp;<br><br><br><br><br>
                                                                     <div id="cont" class="ff"></div>
                                                                   
									
                                                                            <table class="table table-hover" id="table">
                                                                                <tr></tr>
                                                                               </table>
                                                                       
                                                                        <p class="four" align="top-right">
							<input type="button" class="a_demo_four" id="addRow" value="Add" onclick="addRR()" />
						</p> 
						
                                                        <label for="focusedinput" class="col-sm-2 control-label">Total Amount</label>
								<div class="col-sm-6">
									<input type="text" class="form-control1" id="total" placeholder=" ">
                                                                </div><br><br>
                                                         <p class="four">
							<input type="button" class="a_demo_four" id="bt" value="SUBMIT" onclick="my()" />
							<input type="button" class="a_demo_four" id="bt" value="CLEAR" onclick="submit()" />
							</p>
                                                        <p id="demo"></p>

									
                                                                  
                                                                 </form>
                                                                        
																	
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
							 <script type="text/javascript">

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
                                                         
                                                              var k=1;
                                                              var arr=[];
                                                            	var arrHead = new Array();
				arrHead = ['PRD_Id','PRD_BatchNo','PRD_Qnty','PRD_Mnf','GST','Amount',''];     
						function createTable() 
									{
										var empTable = document.createElement('table');
										empTable.setAttribute('id', 'empTable');           
										var tr = empTable.insertRow(-1);
										for (var h = 0; h < arrHead.length; h++) 
											{
												var th = document.createElement('th');          
												th.innerHTML = arrHead[h];
												tr.appendChild(th);
											}
										var div = document.getElementById('cont');
										div.appendChild(empTable);    
										addRR();
									}
						function addRR() 
									{
										var empTab = document.getElementById('empTable');
										var rowCnt = empTab.rows.length;        
										var tr = empTab.insertRow(rowCnt);     
										tr = empTab.insertRow(rowCnt);
                                                                               
										for (var c = 0; c < arrHead.length; c++) 
											{
                                                                                        
												var td = document.createElement('td');         
												td = tr.insertCell(c);
												if(c == 0)
													{
														var ele = document.createElement('input');
														ele.setAttribute('type', 'text');
														
                                                                                                                ele.setAttribute('id', "id"+k);
                                                                                                                ele.setAttribute('onchange','items();it()');
														td.appendChild(ele);
													}
												else if(c == 1)
													{
														var ele = document.createElement('input');
														ele.setAttribute('type', 'text');
														ele.setAttribute('id', "batch"+k);
														td.appendChild(ele);
													}
												else if(c == 2)
													{
														var ele = document.createElement('input');
														ele.setAttribute('type', 'text');
														ele.setAttribute('id', "qty"+k);
														td.appendChild(ele);
													}
												else if(c == 3)
													{
														var ele = document.createElement('input');
														ele.setAttribute('type', 'text');
														ele.setAttribute('id', "mnf"+k);
														td.appendChild(ele);
													}
												else if(c == 4)
												{
														var ele = document.createElement('input');
														ele.setAttribute('type', 'text');
														ele.setAttribute('id', "gst"+k);
														td.appendChild(ele);
												}
                                                                                                else if(c == 5)
												{
														var ele = document.createElement('input');
														ele.setAttribute('type', 'text');
														ele.setAttribute('id',k);
                                                                                                                ele.setAttribute('onchange','call(this)');
														td.appendChild(ele);
												}
                                                                                                
                                                                                               
                                                                                              
												else if (c == 6) 
													{          
														var button = document.createElement('input');
														button.setAttribute('type', 'button');
														button.setAttribute('value', '-');
														button.setAttribute('onclick', 'removeRow(this)');
														td.appendChild(button);
													}
												else 
													{
													   var ele = document.createElement('input');
														ele.setAttribute('type', 'text');
														ele.setAttribute('value', '');
														td.appendChild(ele);
													}
                                                                                                        
											}
                                                                                        k++;
                                                                                          
									};
                                                                        function it()
                                                                        {
                                                                             var i=Number(k)-Number(1);
   
var id=document.getElementById("id"+i).value;

var X= new XMLHttpRequest();

X.onreadystatechange = function(){ 
                                      
                                         if (X.readyState== '4' && X.status == '200') 
                                             { 
                                                var p=X.responseText;
                                                if(p=="0")
                                                {
                                               alert("Item with Item Id-"+id+" is not available. Please add in the master entry");
                                               document.getElementById("id"+i).value="";
                                           }
                                        }
                                             
                                         };
                X.open("GET","/Inventory/itemavl?id="+id,true);
                X.send(null);
                                                                        }
                                                                        
                                                                        
function gs()
         {
             var a=Number(k)-Number(1);
             var gst="gst"+a;
             var amt=document.getElementById(a).value;
             req = new XMLHttpRequest();//for Chrome, mozilla etc  
                req.onreadystatechange = function ()
                {
                    if (req.readyState == '4' && req.status == '200')
                    {
                               document.getElementById(gst).value=req.responseText;
                    }
                }
              req.open("GET","/Inventory/GST?amt="+amt,true);
           req.send(null);
         }
				// DELETE TABLE ROW.
						function removeRow(oButton) 
							{
								var empTab = document.getElementById('empTable');
								empTab.deleteRow(oButton.parentNode.parentNode.rowIndex); 
							}
				// EXTRACT AND SUBMIT TABLE DATA.
						function submit() 
							{
								var myTab = document.getElementById('empTable');
								var values = new Array();
									// LOOP THROUGH EACH ROW OF THE TABLE.
										for (row = 1; row < myTab.rows.length - 1; row++) 
											{
												for (c = 0; c < myTab.rows[row].cells.length; c++)
														{   // EACH CELL IN A ROW.
															var element = myTab.rows.item(row).cells[c];
															if (element.childNodes[0].getAttribute('type') == 'text')
																{
																	values.push("'" + element.childNodes[0].value + "'");
																}
														}
											}							
									// SHOW THE RESULT IN THE CONSOLE WINDOW.
								console.log(values);
							} 
                                                        
                                                         
                                                            
                //   alert(Fs);
                
                function call(x)
                {
                 var amt=x.id;
                 var sum=Number(0);
                 var a=document.getElementById(amt).value;
                /*req = new XMLHttpRequest();//for Chrome, mozilla etc  
                req.onreadystatechange = function ()
                {
                    if (req.readyState == '4' && req.status == '200')
                    {*/
                    gs();
                        arr[amt]=Number(a);
                        for(var i=1;i<=Number(arr.length-1);i++)
                        {
                            sum=Number(sum)+Number(arr[i]);
                        }
                        //alert(sum);
                        document.getElementById("total").value = Number(sum);
                        
                        
                    }
        
              //  req.open("GET","http://localhost:8088/projectin/IssueCal?total=",true);
            //    req.send(null);
                                                        
                                                       
                                                         
                                                                   
                                                        
                                                     
                                                        
                                                        
                                                        
                                                        
                                                        
function my()
{
    var items2=[];
for(var i=1;i<=k-1;i++)
{
   
var id=document.getElementById("id"+i).value;
var batch=document.getElementById("batch"+i).value;
var qty=document.getElementById("qty"+i).value;
var mnf=document.getElementById("mnf"+i).value;
var gst=document.getElementById("gst"+i).value;
var amt=document.getElementById(i).value;
var Items={"pid":id,"pbatch":batch,"pqty":qty,"pmnf":mnf,"pgst":gst,"pamt":amt};
items2.push(Items);
}


          GoodsRec(items2);
    
}
function GoodsRec(Items){
    
    var Date=document.getElementById("Date").value;
    var Vid=document.getElementById("Vid").value;
    var Ino=document.getElementById("Ino").value;
    var total=document.getElementById("total").value;
    
        $.ajax({
            url: "/Inventory/GoodsitemsServlet",
            type: 'GET',
            data: { 
                Date:Date,
                Vid:Vid,
                Ino:Ino,
                total:total,
                itemList:JSON.stringify(Items)
            },
            success: function (successResponse, textStatus, jqXHR) {
                console.log(successResponse)
                window.location.href="goodsreceipt.jsp";
            },
           error: function (errorResponse, textStatus, errorThrown) {
                  console.log(errorResponse)
              }
       });
      
   };
function items()
{
    
    var i=Number(k)-Number(1);
   
var id=document.getElementById("id"+i).value;

var X= new XMLHttpRequest();

X.onreadystatechange = function(){ 
                                      
                                         if (X.readyState== '4' && X.status == '200') 
                                             { 
                                                 document.getElementById("mnf"+i).value=X.responseText;
                                                // alert("a");
                                             }
                                         };
                X.open("GET","/Inventory/goodsmanuf?id="+id,true);
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