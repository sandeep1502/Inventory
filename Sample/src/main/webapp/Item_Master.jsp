
<%@ page import="java.sql.*" %>
<!DOCTYPE HTML>
<html>
    <head>
        <title>Item Master</title>
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
                            <h3 class="inner-tittle two">Item Master Table</h3>
                            <div class="graph">
                                <div class="tables">
                                    <table class="table table-hover">
                                        <thead>
                                            <tr>

                                                <th scope="col">Item_Id</th>
                                                <th scope="col">Item_Type_Id</th>
                                                <th scope="col">Item_Category</th>
                                                <th scope="col">Item_Title</th>
                                                <th scope="col">Item_Brand_Id</th>
                                                <th scope="col">Item_Os_Type</th>   
                                                <th scope="col">Item_Device Version</th> 
                                            </tr>
                                        </thead>
                                

                                        <tbody>
                                            <tr>
                                             



                                            </tr>

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
                                                        <label for="focusedinput" class="col-sm-2 control-label">Item_Id</label>
                                                        <div class="col-sm-6">
                                                            <input type="text" class="form-control1"  id="Item_id_del" placeholder="Item_Id">
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
                                                <form class="form-horizontal" action="dummymaster.jsp">
                                                    <div class="form-group">
                                                        <label for="focusedinput" class="col-sm-5 control-label">Item_Id</label>
                                                        <div class="col-sm-6">
                                                            <input type="text" class="form-control1" id="Item_Ide" placeholder="Item_Id" readonly>
                                                        </div>

                                                    </div>
                                                    <div class="form-group">
                                                        <label for="focusedinput" class="col-sm-5 control-label">Item_Type_Id</label>
                                                        <div class="col-sm-6">
                                                            <input type="text" class="form-control1" id="Item_Type_Ide" placeholder="Item_Type_Id">
                                                        </div>

                                                    </div>
                                                    <div class="form-group">
                                                        <label for="focusedinput" class="col-sm-5 control-label">Item_Category</label>
                                                        <div class="col-sm-6">
                                                            <input type="text" class="form-control1" id="Item_Categorye" placeholder="Item_Category">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="focusedinput" class="col-sm-5 control-label">Item_Title</label>
                                                        <div class="col-sm-6">
                                                            <input type="text" class="form-control1" id="Item_Titlee" placeholder="Item_Title">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="focusedinput" class="col-sm-5 control-label">Item_Brand_Id</label>
                                                        <div class="col-sm-6">
                                                            <input type="text" class="form-control1" id="Item_Brand_Ide" placeholder="Item_Brand_Id">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="focusedinput" class="col-sm-5 control-label">Item_OS_Type</label>
                                                        <div class="col-sm-6">
                                                            <input type="text" class="form-control1" id="Item_OS_Typee" placeholder="Item_OS_Type">
                                                        </div>
                                                    </div>         
                                                    <div class="form-group">
                                                        <label for="focusedinput" class="col-sm-5 control-label">Item_Device_Version</label>
                                                        <div class="col-sm-6">
                                                            <input type="text" class="form-control1" id="Item_Device_Versione" placeholder="Item_Device_Version">
                                                        </div>
                                                    </div> 
                                                    <div class="form-group">
                                                        <label for="focusedinput" class="col-sm-5 control-label">Item_Os_Version</label>
                                                        <div class="col-sm-6">
                                                            <input type="text" class="form-control1" id="Item_Os_Versione" placeholder="Item_Os_Version">
                                                        </div>
                                                    </div> 
                                                    <div class="form-group">
                                                        <label for="focusedinput" class="col-sm-5 control-label">Item_Reldate</label>
                                                        <div class="col-sm-6">
                                                            <input type="date" class="form-control1" id="Item_Reldatee" placeholder="Item_Reldate">
                                                        </div>
                                                    </div> 
                                                    <div class="form-group">
                                                        <label for="focusedinput" class="col-sm-5 control-label">Item_Avldate</label>
                                                        <div class="col-sm-6">
                                                            <input type="date" class="form-control1" id="Item_Avldatee" placeholder="Item_Avldate">
                                                        </div>
                                                    </div> 
                                                    <div class="form-group">
                                                        <label for="focusedinput" class="col-sm-5 control-label">Item_Reorderlevel</label>
                                                        <div class="col-sm-6">
                                                            <input type="text" class="form-control1" id="Item_Reorderlevele" placeholder="Item_Reorderlevel">
                                                        </div>
                                                    </div> 
                                                    <div class="form-group">
                                                        <label for="focusedinput" class="col-sm-5 control-label">Item_Minstock</label>
                                                        <div class="col-sm-6">
                                                            <input type="text" class="form-control1" id="Item_Minstocke" placeholder="Item_Minstock">
                                                        </div>
                                                    </div> 
                                                    <p class="four">
                                                        <a class="a_demo_four"  onclick="edit()">
                                                            EDIT
                                                        </a>
                                                        

                                                    </p>
                                                    <div class="clearfix"> </div>

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
                            var k="Deleted";
                            var i = document.getElementById("Item_id_del").value;
                            var req=new XMLHttpRequest();
                            req.onreadystatechange = function()
                                             {
                                                    if(req.readyState=='4' && req.status=='200')
                                                        { 
                                                            
                                                            u=req.responseText;
                                                          
                                                           if(u.localeCompare(k)==0)
                                                                {
                                                                   alert("Deleted Successfully");
                                                                    window.location.href="Item_Master.jsp";
                                                                }
                                                             else
                                                                {
                                                                   alert("Sorry Try Again"); 
                                                                   window.location.href="Item_Master.jsp";
                                                                }
                                                         }
                                             }
                            req.open("GET","/Inventory/DeleteItemMaster?id="+i,true);
                            req.send(null);
                           
                        }
                        
 </script>
                      <script>
                              function edit()
                                        {
                                              
                                                var u;
                                               
                                                var i = document.getElementById("Item_Ide").value;
                                                var j = document.getElementById("Item_Type_Ide").value;
                                                var k = document.getElementById("Item_Categorye").value;
                                                var l = document.getElementById("Item_Titlee").value;
                                                var m =document.getElementById("Item_Brand_Ide").value;
                                                var n = document.getElementById("Item_OS_Typee").value;
                                                var o =  document.getElementById("Item_Device_Versione").value;
                                                var p = document.getElementById("Item_Os_Versione").value ;
                                                var q = document.getElementById("Item_Reldatee").value;
                                                var r = document.getElementById("Item_Avldatee").value;
                                                var s = document.getElementById("Item_Reorderlevele").value;
                                                var t = document.getElementById("Item_Minstocke").value;
                                                var req=new XMLHttpRequest();
                                                req.onreadystatechange = function()
                                                                 {
                                                                        if(req.readyState=='4' && req.status=='200')
                                                                            {
                                                                               
                                                                                u=req.responseText;
                                                                                    alert(u);
                                                                                   
                                                                         
                                                                                     window.location.href="Item_Master.jsp";
                                                                                 
                                                                                 
                                                                             }
                                                                 };
                                                req.open("GET","/Inventory/EditItemMaster?Item_Id="+i+"&Item_Type_Id="+j+"&Item_Category="+k+"&Item_Title="+l+"&Item_Brand_Id="+m+"&Item_OS_Type="+n+"&Item_Device_Version="+o+"&Item_Os_Version="+p+"&Item_Reldate="+q+"&Item_Avldate="+r+"&Item_Reorderlevel="+s+"&Item_Minstock="+t,true);
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
                                        <h3 class="inner-tittle two">New Form </h3>
                                        <div class="grid-1">
                                            <div class="form-body">
                                                <form class="form-horizontal" action="dummymaster.jsp">
                                                    <div class="form-group">
                                                        <label for="focusedinput" class="col-sm-2 control-label">Item_Id</label>
                                                        <div class="col-sm-6">
                                                            <input type="text" class="form-control1" id="Item_Id" placeholder="Item_Id">
                                                        </div>

                                                    </div>
                                                    <div class="form-group">
                                                        <label for="focusedinput" class="col-sm-2 control-label">Item_Type_Id</label>
                                                        <div class="col-sm-6">
                                                            <input type="text" class="form-control1" id="Item_Type_Id" placeholder="Item_Type_Id">
                                                        </div>

                                                    </div>
                                                    <div class="form-group">
                                                        <label for="focusedinput" class="col-sm-2 control-label">Item_Category</label>
                                                        <div class="col-sm-6">
                                                            <input type="text" class="form-control1" id="Item_Category" placeholder="Item_Category">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="focusedinput" class="col-sm-2 control-label">Item_Title</label>
                                                        <div class="col-sm-6">
                                                            <input type="text" class="form-control1" id="Item_Title" placeholder="Item_Title">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="focusedinput" class="col-sm-2 control-label">Item_Brand_Id</label>
                                                        <div class="col-sm-6">
                                                            <input type="text" class="form-control1" id="Item_Brand_Id" placeholder="Item_Brand_Id">
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="focusedinput" class="col-sm-2 control-label">Item_OS_Type</label>
                                                        <div class="col-sm-6">
                                                            <input type="text" class="form-control1" id="Item_OS_Type" placeholder="Item_OS_Type">
                                                        </div>
                                                    </div>         
                                                    <div class="form-group">
                                                        <label for="focusedinput" class="col-sm-2 control-label">Item_Device_Version</label>
                                                        <div class="col-sm-6">
                                                            <input type="text" class="form-control1" id="Item_Device_Version" placeholder="Item_Device_Version">
                                                        </div>
                                                    </div> 
                                                    <div class="form-group">
                                                        <label for="focusedinput" class="col-sm-2 control-label">Item_Os_Version</label>
                                                        <div class="col-sm-6">
                                                            <input type="text" class="form-control1" id="Item_Os_Version" placeholder="Item_Os_Version">
                                                        </div>
                                                    </div> 
                                                    <div class="form-group">
                                                        <label for="focusedinput" class="col-sm-2 control-label">Item_Reldate</label>
                                                        <div class="col-sm-6">
                                                            <input type="date" class="form-control1" id="Item_Reldate" placeholder="Item_Reldate">
                                                        </div>
                                                    </div> 
                                                    <div class="form-group">
                                                        <label for="focusedinput" class="col-sm-2 control-label">Item_Avldate</label>
                                                        <div class="col-sm-6">
                                                            <input type="date" class="form-control1" id="Item_Avldate" placeholder="Item_Avldate">
                                                        </div>
                                                    </div> 
                                                    <div class="form-group">
                                                        <label for="focusedinput" class="col-sm-2 control-label">Item_Reorderlevel</label>
                                                        <div class="col-sm-6">
                                                            <input type="text" class="form-control1" id="Item_Reorderlevel" placeholder="Item_Reorderlevel">
                                                        </div>
                                                    </div> 
                                                    <div class="form-group">
                                                        <label for="focusedinput" class="col-sm-2 control-label">Item_Minstock</label>
                                                        <div class="col-sm-6">
                                                            <input type="text" class="form-control1" id="Item_Minstock" placeholder="Item_Minstock">
                                                        </div>
                                                    </div> 
                                                    <p class="four">
                                                        <a class="a_demo_four"  onclick="add1()">
                                                            Add
                                                        </a>
                                                        

                                                    </p>
                                                    <div class="clearfix"> </div>

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
                                                var k="Succesfully added";
                                                var i = document.getElementById("Item_Id").value;
                                                var j = document.getElementById("Item_Type_Id").value;
                                                var k = document.getElementById("Item_Category").value;
                                                var l = document.getElementById("Item_Title").value;
                                                var m =document.getElementById("Item_Brand_Id").value;
                                                var n = document.getElementById("Item_OS_Type").value;
                                                var o =  document.getElementById("Item_Device_Version").value;
                                                var p = document.getElementById("Item_Os_Version").value ;
                                                var q = document.getElementById("Item_Reldate").value;
                                                var r = document.getElementById("Item_Avldate").value;
                                                var s = document.getElementById("Item_Reorderlevel").value;
                                                var t = document.getElementById("Item_Minstock").value;
                                                var req=new XMLHttpRequest();
                                                req.onreadystatechange = function()
                                                                 {
                                                                        if(req.readyState=='4' && req.status=='200')
                                                                            {
                                                                               
                                                                                u=req.responseText;
                                                                                    alert(u);
                                                                                   
                                                                         
                                                                                     window.location.href="Item_Master.jsp";
                                                                                 
                                                                                 
                                                                             }
                                                                 };
                                                req.open("GET","/Inventory/AddItemMaster?Item_Id="+i+"&Item_Type_Id="+j+"&Item_Category="+k+"&Item_Title="+l+"&Item_Brand_Id="+m+"&Item_OS_Type="+n+"&Item_Device_Version="+o+"&Item_Os_Version="+p+"&Item_Reldate="+q+"&Item_Avldate="+r+"&Item_Reorderlevel="+s+"&Item_Minstock="+t,true);
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

            $(".sidebar-icon").click(function () {
                if (toggle)
                {
                    $(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
                    $("#menu span").css({"position": "absolute"});
                }
                else
                {
                    $(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
                    setTimeout(function () {
                        $("#menu span").css({"position": "relative"});
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
                      document.getElementById("Item_Ide").value = u;
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
