<%-- 
    Document   : Dashboard
    Created on : 18 Sep, 2019, 2:20:16 PM
    Author     : pennantstaff
--%>

<%@page import="db.Dbcon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>     

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
   
      
           <%
           
            String ls=null;
            
            try{
              
            //validating login status
           hs=request.getSession(true);
           ls=(String)hs.getAttribute("loginstatus");
         
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
                                        
                                        <!--custom-widgets-->
                                       <%  
                                                    String a,b,c,d;
                                                    int x=0,y=0,z=0,w=0;
                                                    String l,m,n;
                                                    try
                                                        {
                                                           Dbcon dc=new Dbcon();
                                                            Class.forName(dc.getDriver());
                                                            Connection con=DriverManager.getConnection(dc.getUrl(),dc.getUser(),dc.getPassword());
                                                            PreparedStatement ps1=con.prepareStatement("select sum(item_stock)  from item_stock");
                                                            ResultSet rs1=ps1.executeQuery();
                                                       %>
                                                <div class="outter-wp">
								
												<div class="custom-widgets">
												   <div class="row-one">
														<div class="col-md-5 widget">
															<div class="stats-left ">
																<h5>Total</h5>
																<h4>Item Stock</h4>
															</div>
															<div class="stats-right">
                                        <%
                                                            while(rs1.next())
                                                                {
                                                                    a=rs1.getString(1);
                                                                    
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
																<h5>Total</h5>
																<h4>Indents</h4>
															</div>
															<div class="stats-right">
                                          <% 
                                               PreparedStatement ps2=con.prepareStatement("select * from outlets");
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
														<div class="col-md-5 widget states-thrd">
															<div class="stats-left">
																<h5>Total</h5>
																<h4>Outlets</h4>
															</div>
															<div class="stats-right">
                                          <% 
                                               PreparedStatement ps3=con.prepareStatement("select * from INDENTS_TAB");
                                               ResultSet rs3=ps3.executeQuery();
                                              while(rs3.next())
                                                                {
                                                                   x=x+1;}
                                          %>
                                                                                                                 <label><%=x %> </label>
                                         <%
                                                          rs3.close(); 
                                        %>
															</div>
															<div class="clearfix"> </div>	
                                                                                                                </div>
														<div class="col-md-5 widget states-last">
															<div class="stats-left">
																<h5>Total</h5>
																<h4>StockIssues</h4>
															</div>
															<div class="stats-right">
                                          <% 
                                               PreparedStatement ps4=con.prepareStatement("select * from INDENTS_TAB");
                                               ResultSet rs4=ps4.executeQuery();
                                              while(rs4.next())
                                                                {
                                                                   z=z+1;}
                                          %>
                                                                                                                 <label><%=z %> </label>
                                         <%
                                                          rs4.close(); 
                                        %>
															</div>
															<div class="clearfix"> </div>	
														</div>
														<div class="clearfix"> </div>	
													</div>
												</div>
                                        
												<!--//custom-widgets-->
												<!--/candile-->
													<div class="candile"> 
															<div class="candile-inner">
																	<h3 class="sub-tittle">Candlestick Chart </h3>
															    <div id="center"><div id="fig">
																<script type="text/javascript+protovis">

															/* Parse dates. */
															var dateFormat = pv.Format.date("%d-%b-%y");
															vix.forEach(function(d) d.date = dateFormat.parse(d.date));

															/* Scales. */
															var w =1220,
																h = 300,
																x = pv.Scale.linear(vix, function(d) d.date).range(0, w),
																y = pv.Scale.linear(vix, function(d) d.low, function(d) d.high).range(0, h).nice();

															var vis = new pv.Panel()
																.width(w)
																.height(h)
																.margin(10)
																.left(30);

															/* Dates. */
															vis.add(pv.Rule)
																 .data(x.ticks())
																 .left(x)
																 .strokeStyle("#eee")
															   .anchor("bottom").add(pv.Label)
																 .text(x.tickFormat);

															/* Prices. */
															vis.add(pv.Rule)
																 .data(y.ticks(7))
																 .bottom(y)
																 .left(-10)
																 .right(-10)
																 .strokeStyle(function(d) d % 10 ? "#ddd" : "#ddd")
															   .anchor("left").add(pv.Label)
																 .textStyle(function(d) d % 10 ? "#999" : "#ddd")
																 .text(y.tickFormat);

															/* Candlestick. */
															vis.add(pv.Rule)
																.data(vix)
																.left(function(d) x(d.date))
																.bottom(function(d) y(Math.min(d.high, d.low)))
																.height(function(d) Math.abs(y(d.high) - y(d.low)))
																.strokeStyle(function(d) d.open < d.close ? "#052963" : "#00C6D7")
															  .add(pv.Rule)
																.bottom(function(d) y(Math.min(d.open, d.close)))
																.height(function(d) Math.abs(y(d.open) - y(d.close)))
																.lineWidth(10);

															vis.render();

																</script>
																	<script type="text/javascript" src="js/protovis-d3.2.js"></script>
																	<script type="text/javascript" src="js/vix.js"></script>

															</div>
														</div>
																				
															</div>
															
														</div>
													<!--/candile-->
												
												<!--/charts-->
												<div class="charts">
												  <div class="chrt-inner">
												    <div class="chrt-bars">
														<div class="col-md-6 chrt-two">
														 <h3 class="sub-tittle">Bar Chart </h3>
															<div id="chart2"></div>
                                                                                            <% 
                                               PreparedStatement ps7=con.prepareStatement("select * from i");
                                                           ResultSet rs7=ps7.executeQuery(); 
                                                                                            %>
                                                                                                    
                                                                                                                        
                                                            <script src="js/fabochart.js"></script>
				<script>
					$(document).ready(function () {
																data = {
                                                                                                                                    <%
                                               while(rs7.next())
                                                                {
                                                                  a=rs7.getString(1);
                                                                    m=rs7.getString(2);
                                                                    l=rs7.getString(3);
                                                                
                                          %>                    
                                                                                                                                    '<%= m %>' : <%= l %>,
																                         <%
                                                                }
                                                          rs7.close(); 
                                        %>  
																};
                                                              
                                                                                
																$("#chart1").faBoChart({
																  time: 500,
																  animate: true,
																  instantAnimate: true,
																  straight: false,
																  data: data,
																  labelTextColor : "#002561",
																});
																$("#chart2").faBoChart({
																  time: 2500,
																  animate: true,
																  data: data,
																  straight: true,
																  labelTextColor : "#002561",
																});
															});
															</script>
                                                                                               
                                                                                                                        
                                                                                                                        
														</div>
															<div class="col-md-6 chrt-three">
															<h3 class="sub-tittle">Error Chart </h3>
																<div id="chartdiv"></div>	
																			<script>
																			   var chart = AmCharts.makeChart( "chartdiv", {
																					  "type": "serial",
																					  "theme": "light",
																					  "dataProvider": [ {
																						"year": 2005,
																						"value": 11.5,
																						"error": 5
                                                                                                                                                                                
                                                                                                                                                                                
																					  }, {
																						"year": 2006,
																						"value": 26.2,
																						"error": 5
																					  }, {
																						"year": 2007,
																						"value": 30.1,
																						"error": 5
																					  }, {
																						"year": 2008,
																						"value": 29.5,
																						"error": 7
																					  }, {
																						"year": 2009,
																						"value": 24.6,
																						"error": 10
																					  } ],
																					  "balloon": {
																						"textAlign": "left"
																					  },
																					  "valueAxes": [ {
																						"id": "v1",
																						"axisAlpha": 0
																					  } ],
																					  "startDuration": 1,
																					  "graphs": [ {
																						"balloonText": "value:<b>[[value]]</b><br>error:<b>[[error]]</b>",
																						"bullet": "yError",
																						"bulletSize": 10,
																						"errorField": "error",
																						"lineThickness": 2,
																						"valueField": "value",
																						"bulletAxis": "v1",
																						"fillAlphas": 0
                                                                                                                                                                                
																					  }, {
																						"bullet": "round",
																						"bulletBorderAlpha": 1,
																						"bulletBorderColor": "#FFFFFF",
																						"lineAlpha": 0,
																						"lineThickness": 2,
																						"showBalloon": false,
																						"valueField": "value"

																					  } ],
																					  "chartCursor": {
																						"cursorAlpha": 0,
																						"cursorPosition": "mouse",
																						"graphBulletSize": 1,
																						"zoomable": false
																					  },
																					  "categoryField": "year",
																					  "categoryAxis": {
																						"gridPosition": "start",
																						"axisAlpha": 0
																					  },
																					  "export": {
																						"enabled": true
																					  }
																					} );
																			</script>
															
																	
																</div>
																<div class="clearfix"> </div>
															</div>										
												<!--/float-charts-->
												<div class="pie">
														<div class="col-md-6 chrt-two">
														<h3 class="sub-tittle">Reversed Value Axis Chart</h3>
														<div id="chartdiv2"></div>
                                                                                                                    <% 
                                                          String e,g;
                                               PreparedStatement ps8=con.prepareStatement("Select * from item_Stock");
                                                           ResultSet rs8=ps8.executeQuery(); 
                                                                                            %>
                                                                                                
														<script>
															var chart = AmCharts.makeChart("chartdiv2", {
																	"type": "serial",
																	"theme": "patterns",
																	"legend": {
																		"useGraphSettings": true
																	},
																	"dataProvider": 
                                                                                                                                    [
                                                                                                                                
                                                                                                                                        <% 
                                                                                                                                                      while(rs8.next())
                                                                                                                                                              {
                                                                                                                                                                  
                                                                                                                                                                  
                                                                                                                                                             
                                                                                                                                                                  a=rs8.getString(1);
                                                                                                                                                                  b=rs8.getString(2);
                                                                                                                                                                  c=rs8.getString(3);
                                                                                                                                                                  d=rs8.getString(4);
                                                                                                                                                                  e=rs8.getString(5);
                                                                                                                                                                  g=rs8.getString(6);

                                                                                                                                        %>
                                                                                                                                                                    {
                                                                                                                                                                        "year": <%=a %>,
                                                                                                                                                                        "SP":<%=d%>,
                                                                                                                                                                        "CP":  <%=e %>,
                                                                                                                                                                        "MRP":  <%=g %>
                                                                                                                                                                    },



                                                                                                                                        <%            
                                                                                                                                                            }
                                                                                                                                                         rs8.close();

                                                                                                                                        %>
                                                                                                                                    ] ,
                                                                                                                                     
																	"valueAxes": [{
																		"integersOnly": true,
																		"maximum": 100000,
																		"minimum": 1,
																		"reversed": true,
																		"axisAlpha": 0,
																		"dashLength": 5,
																		"gridCount": 10,
																		"position": "left",
																		"title": "PRICE"
																	}],
																	"startDuration": 0.5,
																	"graphs": [{
																		"balloonText": "place taken by Italy in [[category]]: [[value]]",
																		"bullet": "round",
																		
																		"title": "SP",
																		"valueField": "SP",
																		"fillAlphas": 0
																	}, {
																		"balloonText": "place taken by Germany in [[category]]: [[value]]",
																		"bullet": "round",
																		"title": "CP",
																		"valueField": "CP",
																		"fillAlphas": 0
																	}, {
																		"balloonText": "place taken by UK in [[category]]: [[value]]",
																		"bullet": "round",
																		"title": "MRP",
																		"valueField": "MRP",
																		"fillAlphas": 0
																	}],
																	"chartCursor": {
																		"cursorAlpha": 0,
																		"zoomable": false
																	},
																	"categoryField": "year",
																	"categoryAxis": {
																		"gridPosition": "start",
																		"axisAlpha": 0,
																		"fillAlpha": 0.05,
																		"fillColor": "#000000",
																		"gridAlpha": 0,
																		"position": "top"
																	},
																	"export": {
																		"enabled": true,
																		"position": "bottom-left"
																	 }
																});
																</script>
				
														 </div>
														<div class="col-md-6 chrt-three second">
															<h3 class="sub-tittle">Radar chart</h3>
														<div id="chartdiv4"></div>	
														      <script>
															    var chart = AmCharts.makeChart( "chartdiv4", {
																	  "type": "radar",
																	  "theme": "light",
																	  "dataProvider": [ {
																		"direction": "N",
																		"value": 8
																	  }, {
																		"direction": "NE",
																		"value": 9
																	  }, {
																		"direction": "E",
																		"value": 4.5
																	  }, {
																		"direction": "SE",
																		"value": 3.5
																	  }, {
																		"direction": "S",
																		"value": 9.2
																	  }, {
																		"direction": "SW",
																		"value": 8.4
																	  }, {
																		"direction": "W",
																		"value": 11.1
																	  }, {
																		"direction": "NW",
																		"value": 10
																	  } ],
																	  "valueAxes": [ {
																		"gridType": "circles",
																		"minimum": 0,
																		"autoGridCount": false,
																		"axisAlpha": 0.2,
																		"fillAlpha": 0.05,
																		"fillColor": "#FFFFFF",
																		"gridAlpha": 0.08,
																		"guides": [ {
																		  "angle": 225,
																		  "fillAlpha": 0.7,
																		  "fillColor": "#052963",
																		  "tickLength": 0,
																		  "toAngle": 315,
																		  "toValue": 14,
																		  "value": 0,
																		  "lineAlpha": 0,

																		}, {
																		  "angle": 45,
																		  "fillAlpha": 0.6,
																		  "fillColor": "#ea4c89",
																		  "tickLength": 0,
																		  "toAngle": 135,
																		  "toValue": 14,
																		  "value": 0,
																		  "lineAlpha": 0,
																		} ],
																		"position": "left"
																	  } ],
																	  "startDuration": 1,
																	  "graphs": [ {
																		"balloonText": "[[category]]: [[value]] m/s",
																		"bullet": "round",
																		"fillAlphas": 0.3,
																		"valueField": "value"
																	  } ],
																	  "categoryField": "direction",
																	  "export": {
																		"enabled": true
																	  }
																	} );
															  </script>
													        
														</div>
																<div class="clearfix"> </div>
														</div>
												<div class="area">
												<div class="col-md-6 chrt-two area">
															<h3 class="sub-tittle">Line Multi Chart</h3>
															 <div style="area">
																	<canvas id="canvas" style="width:100%;height:100%"></canvas>
																</div>
																<button id="randomizeData">Randomize Data</button>
																<script>
																var randomScalingFactor = function() {
																	return Math.round(Math.random() * 100 * (Math.random() > 0.5 ? -1 : 1));
																};
																var randomColor = function(opacity) {
																	return 'rgba(' + Math.round(Math.random() * 255) + ',' + Math.round(Math.random() * 255) + ',' + Math.round(Math.random() * 255) + ',' + (opacity || '.3') + ')';
																};

																var lineChartData = {
																	labels: ["January", "February", "March", "April", "May", "June", "July"],
																	datasets: [{
																		label: "My First dataset",
																		data: [randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor()],
																		yAxisID: "y-axis-1",
																	}, {
																		label: "My Second dataset",
																		data: [randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor()],
																		yAxisID: "y-axis-2"
																	}]
																};

																$.each(lineChartData.datasets, function(i, dataset) {
																	dataset.borderColor = randomColor(0.4);
																	dataset.backgroundColor = randomColor(1);
																	dataset.pointBorderColor = randomColor(0.7);
																	dataset.pointBackgroundColor = randomColor(0.5);
																	dataset.pointBorderWidth = 1;
																});

																console.log(lineChartData);

																window.onload = function() {
																	var ctx = document.getElementById("canvas").getContext("2d");
																	window.myLine = Chart.Line(ctx, {
																		data: lineChartData,
																		options: {
																			
																			hoverMode: 'label',
																			stacked: false,
																			scales: {
																				xAxes: [{
																					display: true,
																					gridLines: {
																						offsetGridLines: false
																					}
																				}],
																				yAxes: [{
																					type: "linear", // only linear but allow scale type registration. This allows extensions to exist solely for log scale for instance
																					display: true,
																					position: "left",
																					id: "y-axis-1",
																				}, {
																					type: "linear", // only linear but allow scale type registration. This allows extensions to exist solely for log scale for instance
																					display: true,
																					position: "right",
																					id: "y-axis-2",

																					// grid line settings
																					gridLines: {
																						drawOnChartArea: false, // only want the grid lines for one axis to show up
																					},
																				}],
																			}
																		}
																	});
																};

																$('#randomizeData').click(function() {
																	lineChartData.datasets[0].data = [randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor()];

																	lineChartData.datasets[1].data = [randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor()];

																	window.myLine.update();
																});
																</script>
																<script src="js/Chart.js"></script>
															</div>
															<div class="col-md-6 chrt-three">
															<h3 class="sub-tittle">Stacked bar chart</h3>
															    <div id="chartdiv1"></div>	
																
																<script>
																var chart = AmCharts.makeChart("chartdiv1", {
																				  "type": "serial",
																				  "theme": "light",
																				  "rotate": true,
																				  "marginBottom": 50,
																				  "dataProvider": [{
																					"age": "85+",
																					"male": -0.1,
																					"female": 0.3
																				  }, {
																					"age": "80-54",
																					"male": -0.2,
																					"female": 0.3
																				  }, {
																					"age": "75-79",
																					"male": -0.3,
																					"female": 0.6
																				  }, {
																					"age": "70-74",
																					"male": -0.5,
																					"female": 0.8
																				  }, {
																					"age": "65-69",
																					"male": -0.8,
																					"female": 1.0
																				  }, {
																					"age": "60-64",
																					"male": -1.1,
																					"female": 1.3
																				  }, {
																					"age": "55-59",
																					"male": -1.7,
																					"female": 1.9
																				  }, {
																					"age": "50-54",
																					"male": -2.2,
																					"female": 2.5
																				  }, {
																					"age": "45-49",
																					"male": -2.8,
																					"female": 3.0
																				  }, {
																					"age": "40-44",
																					"male": -3.4,
																					"female": 3.6
																				  }, {
																					"age": "35-39",
																					"male": -4.2,
																					"female": 4.1
																				  }, {
																					"age": "30-34",
																					"male": -5.2,
																					"female": 4.8
																				  }, {
																					"age": "25-29",
																					"male": -5.6,
																					"female": 5.1
																				  }, {
																					"age": "20-24",
																					"male": -5.1,
																					"female": 5.1
																				  }, {
																					"age": "15-19",
																					"male": -3.8,
																					"female": 3.8
																				  }, {
																					"age": "10-14",
																					"male": -3.2,
																					"female": 3.4
																				  }, {
																					"age": "5-9",
																					"male": -4.4,
																					"female": 4.1
																				  }, {
																					"age": "0-4",
																					"male": -5.0,
																					"female": 4.8
																				  }],
																				  "startDuration": 1,
																				  "graphs": [{
																					"fillAlphas": 0.8,
																					"lineAlpha": 0.2,
																					"type": "column",
																					"valueField": "male",
																					"title": "Male",
																					"labelText": "[[value]]",
																					"clustered": false,
																					"labelFunction": function(item) {
																					  return Math.abs(item.values.value);
																					},
																					"balloonFunction": function(item) {
																					  return item.category + ": " + Math.abs(item.values.value) + "%";
																					}
																				  }, {
																					"fillAlphas": 0.8,
																					"lineAlpha": 0.2,
																					"type": "column",
																					"valueField": "female",
																					"title": "Female",
																					"labelText": "[[value]]",
																					"clustered": false,
																					"labelFunction": function(item) {
																					  return Math.abs(item.values.value);
																					},
																					"balloonFunction": function(item) {
																					  return item.category + ": " + Math.abs(item.values.value) + "%";
																					}
																				  }],
																				  "categoryField": "age",
																				  "categoryAxis": {
																					"gridPosition": "start",
																					"gridAlpha": 0.2,
																					"axisAlpha": 0
																				  },
																				  "valueAxes": [{
																					"gridAlpha": 0,
																					"ignoreAxisWidth": true,
																					"labelFunction": function(value) {
																					  return Math.abs(value) + '%';
																					},
																					"guides": [{
																					  "value": 0,
																					  "lineAlpha": 0.2
																					}]
																				  }],
																				  "balloon": {
																					"fixedPosition": true
																				  },
																				  "chartCursor": {
																					"valueBalloonsEnabled": false,
																					"cursorAlpha": 0.05,
																					"fullWidth": true
																				  },
																				  "allLabels": [{
																					"text": "Male",
																					"x": "28%",
																					"y": "97%",
																					"bold": true,
																					"align": "middle"
																				  }, {
																					"text": "Female",
																					"x": "75%",
																					"y": "97%",
																					"bold": true,
																					"align": "middle"
																				  }],
																				 "export": {
																					"enabled": true
																				  }   

																				});
																		</script>
																</div>
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
										
                                                                                		<div class="col-md-6 profile-info two">
															   <h3 class="inner-tittle two">My Office </h3>
																<div class="main-grid3 map">
	
																		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3902.2536867765943!2d83.38750401488235!3d17.811759287825602!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a394337db073fc3%3A0x17250d1fa3f6b7a6!2sPennant%20Technologies%20Private%20Limited!5e1!3m2!1sen!2sin!4v1568809566615!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
																							<div class="gmap-info">
																									<h4> <i class="fa fa-map-marker"></i> <b><a href="#" class="text-dark">PENNANT TECHNOLOGIES:</a></b></h4>
																									<p>Plot No:D2, IT PARK, HILL No:2 </p>
																									 <p>RISHIKONDA,Madhurawada,Visakhapatnam</p>
																									<p>Andhra Pradesh 530003</p>
																								</div>
																	
																	</div>
																	
																	
																	<!--//map-->
																</div>
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
                                 <%
                                                        con.close();   
                                                         }   
                                                    catch(Exception ex)
                                                        {
                                                             ex.printStackTrace();
                                                        }
                                         %>
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