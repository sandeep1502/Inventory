     
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>+
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Create New Indents</title>
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
<style>
		
	 </style>
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
								 <h3 class="inner-tittle two">Indent Items</h3>
                                                                 <div class="graph">
                                                                     <div class="tables">
                                                                         
                                                                 <form name="indents">
                                                                     
                                                                     
                                                                         <label for="focusedinput" class="col-sm-2 control-label">Outlet Id:</label>
								<div class="col-sm-2">
									<input type="text" class="form-control1" id="oid" name="oid" placeholder=" " onchange="ot()">
                                                                </div>&nbsp;&nbsp;
                                                                      <label for="focusedinput" class="col-sm-2 control-label">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Date:</label>
								<div class="col-sm-2">
									<input type="date" class="form-control1" id="date" name="date" placeholder=" ">
                                                                </div>
                                                                      <div class="col-sm-2">
									<p class="help-block">DD/MM/YY</p>
									</div>
                                                                     <br><br><br>
                                                                     <div id="cont" class="ff"></div>
                                                                   
									
                                                                            <table class="table table-hover" id="table">
                                                                                <tr></tr>
                                                                               </table>
                                                                       
                                                                        <p class="four" align="top-right">
							<input type="button" class="a_demo_four" id="addRow" value="Add" onclick="addRR()" />
						</p> 
						
                                                        <label for="focusedinput" class="col-sm-2 control-label">Total Amount</label>
								<div class="col-sm-6">
									<input type="text" class="form-control1" id="total" name="total" placeholder=" " readonly>
                                                                </div><br><br>
                                                         <p class="four">
							<input type="button" class="a_demo_four" id="bt" value="SUBMIT" onclick="my()" />
							<input type="button" class="a_demo_four" id="bt" value="CLEAR" onclick="submit()" />
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
                                                          
							</script>
                                                        
                                                       <script>
                                                            var k=1;
                                                              var arr=[];
                                                            	var arrHead = new Array();
				arrHead = ['Item_Id','Item_Quantity','Amount','Remove'];     
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
														ele.setAttribute('id', 'id'+k);
                                                                                                                ele.setAttribute('onchange','it()');
														td.appendChild(ele);
													}
										
												else if(c == 1)
													{
														var ele = document.createElement('input');
														ele.setAttribute('type', 'text');
														ele.setAttribute('id', k);
                                                                                                                ele.setAttribute('onkeyup','call(this)');
														td.appendChild(ele);
													}
												else if(c == 2)
												{
														var ele = document.createElement('input');
														ele.setAttribute('type', 'text');
														ele.setAttribute('id', 'amt'+k);
                                                                                                                ele.setAttribute('readonly','true');
														td.appendChild(ele);
												}
												else if (c == 3) 
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
									}
				// DELETE TABLE ROW.
						function removeRow(oButton) 
							{
                                                            //var s=oButton.id;
                                                             //var sum=Number(0);
								var empTab = document.getElementById('empTable');
								empTab.deleteRow(oButton.parentNode.parentNode.rowIndex); 
                                                                /*arr[s]=0;
                                                              
                                                                document.getElementById("amt"+s).value = 0;
                                                              
                                                               for(var i=1;i<=Number(s);i++)
                                                                {
                                                                    alert(sum);
                                                                    sum=sum+Number(arr[i]);
                                                                }
                                                                
                                                                document.getElementById("total").value = Number(sum);*/
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
                                                         var totalf =Number(0);
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
                                               alert("Item with Item Id-"+id+" is not available.");
                                               document.getElementById("id"+i).value="";
                                           }
                                        }
                                             
                                         };
                X.open("GET","/Inventory/itemavl?id="+id,true);
                X.send(null);
                                                                        }
function ot()
                                                                        {
                                                                             var i=Number(k)-Number(1);
   
var id=document.getElementById("oid").value;

var X= new XMLHttpRequest();

X.onreadystatechange = function(){ 
                                      
                                         if (X.readyState== '4' && X.status == '200') 
                                             { 
                                                var p=X.responseText;
                                                if(p=="0")
                                                {
                                               alert("Outlet with OutletId-"+id+" is not available.");
                                               document.getElementById("oid").value="";
                                           }
                                        }
                                             
                                         };
                X.open("GET","/Inventory/outletavl?id="+id,true);
                X.send(null);
                                                                        }
                                                         
                                                        function call(x)
                                                        {
                                                            var s=x.id;
                                                            var sum=Number(0);
                                                            var no="id"+s;
                                                            var amt="amt"+s;
                                                            var id = document.getElementById(no).value;
                //   alert(Fs);
                var qty = document.getElementById(s).value;
              
                                                             req = new XMLHttpRequest();//for Chrome, mozilla etc  
                req.onreadystatechange = function ()
                {
                    if (req.readyState == '4' && req.status == '200')
                    {
                        var p = req.responseText;

                        document.getElementById(amt).value = p;
                        //totalf = Number(totalf) + Number(p);
                        arr[s]=Number(p);
                        for(var i=1;i<=Number(arr.length-1);i++)
                        {
                            sum=Number(sum)+Number(arr[i]);
                        }
                        document.getElementById("total").value = Number(sum);
                        //totalfare(p);
                        
                    }
                };
                req.open("GET", "/Inventory/indncal?id=" + id + "&qty=" + qty, true);
                req.send(null);
            }
            /* function totalfare(y) {

                var tf = Number(y);
                var s = Number(document.getElementById("f").value);
                var k = s + tf;
                document.getElementById("totalfare").value = k;

            }*/
                                                            
function my()
{
    var items2=[];
for(var i=1;i<=k-1;i++)
{
   
var id=document.getElementById("id"+i).value;
var qty=document.getElementById(i).value;
var amt=document.getElementById("amt"+i).value;
var Items={"pid":id,"pqty":qty,"pamt":amt};
items2.push(Items);
}


//document.getElementById("demo").innerHTML=obj;
//var X= new XMLHttpRequest();
//X.onreadystatechange = function(){     
                                        // if (X.readyState== '4' && X.status == '200') 
                                          //   { 
                                                 
                                            // }
                                        // };
               // X.open("GET","http://localhost:8088/projectin/GoodsitemsServlet?item="+,true);
              //  X.send(null);
            indentreq(items2);
            alert("Submitted Successfully");
           window.location.href="Create_New_Indents.jsp";
}                     
function indentreq(Items){
    
    var oid=document.getElementById("oid").value;
    var date=document.getElementById("date").value;
    var amt=document.getElementById("total").value;
    
        $.ajax({
            url: "/Inventory/IndentsServlet",
            type: 'GET',
            data: { 
                id:oid,
                Date:date,
                amount:amt,
                itemList:JSON.stringify(Items)
            },
            success: function (successResponse, textStatus, jqXHR) {
                console.log(successResponse)
            },
           error: function (errorResponse, textStatus, errorThrown) {
                  console.log(errorResponse)
              }
       });
      
   };
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