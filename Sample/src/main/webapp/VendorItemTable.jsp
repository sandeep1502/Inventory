     
<%@page import="db.Dbcon"%>
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
                            <h3 class="inner-tittle two">Items Table</h3>
                            <div class="graph">
                                <div class="tables">
                                    <table class="table table-hover">
                                        <thead>
                                            <tr>

                                                <th scope="col">Item_Id</th>
                                                <th scope="col">Item_Type_Id</th>
                                               
                                                <th scope="col">Item_Title</th>
                                                <th scope="col">Item_Brand_Id</th>
                                                <th scope="col">Item_Os_Type</th>   
                                                <th scope="col">Item_Device Version</th> 
                                            </tr>
                                        </thead>
                                        <%
                                            String a, b, c, d, e, f, g;
                                            try {
                                                     Dbcon dc=new Dbcon();
                                                     Class.forName(dc.getDriver());
                                                     Connection con=DriverManager.getConnection(dc.getUrl(),dc.getUser(),dc.getPassword());
                                                PreparedStatement ps = con.prepareStatement("Select * from itemsMaster");
                                                ResultSet rs = ps.executeQuery();
                                                while (rs.next()) {
                                                    a = rs.getString(1);
                                                    b = rs.getString(2);
                                                  
                                                    d = rs.getString(4);
                                                    e = rs.getString(5);
                                                    f = rs.getString(6);
                                                    g = rs.getString(7);


                                        %>

                                        <tbody>
                                            <tr>
                                                <td><%=a%></td>
                                                <td><%=b%></td>
                                               
                                                <td><%=d%></td>
                                                <td><%=e%></td>
                                                <td><%=f%></td>
                                                <td><%=g%></td>



                                            </tr>

                                        </tbody> 
                                        <%              } %> 
                                    </table>
                                    <%        rs.close();
                                        ps.close();
                                    %>

                                </div>
                            </div>
                        </div>
                    </div>
                    <!--//outer-wp-->


                    <!--//outer-wp-->
                    
                 
                    
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

                <div class="clearfix"></div>		
            </div>
        </div>

        <%                                 con.close();
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        %>

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
