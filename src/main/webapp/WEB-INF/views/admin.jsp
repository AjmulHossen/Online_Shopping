<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <title>Shoppy an Admin Panel Category Flat Bootstrap Responsive Website Template | Portlet :: w3layouts</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Shoppy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <link href="resources/plug/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
        <!-- Custom Theme files -->
        <link href="resources/plug/css/style.css" rel="stylesheet" type="text/css" media="all"/>
        <!--js-->
        <script src="resources/plug/js/jquery-2.1.1.min.js"></script> 
        <!--icons-css-->
        <link href="css/font-awesome.css" rel="stylesheet"> 
        <!--Google Fonts-->
        <link href='resources/plug//fonts.googleapis.com/css?family=Carrois+Gothic' rel='stylesheet' type='text/css'>
        <link href='resources/plug//fonts.googleapis.com/css?family=Work+Sans:400,500,600' rel='stylesheet' type='text/css'>
        
        
        
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Admin - Dashboard</title>
        <link href="resources/img/logo.ico" rel="shortcut icon" />
        <!-- Bootstrap core CSS-->
        <link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template-->
        <link href="resources/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

        <!-- Page level plugin CSS-->
        <link href="resources/datatables/dataTablesbootstrap4.css" rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="resources/cssnew/sb-admin.css" rel="stylesheet">
        <script src="resources/js/angular.js"></script>
        <script>
            var orderlist = ${orderlist};
            angular.module('organocartpackage', []).controller('ProductController',
                    function ($scope) {
                        $scope.orderlistobject = orderlist;
                        console.log($scope.orderlistobject);
                    });
        </script>
        
        
        <!--//skycons-icons-->
    </head>
    <body>	
        <div class="page-container">	
            <div class="left-content">
                <div class="mother-grid-inner">
                    <!--header start here-->
                    <div class="header-main">
                        <div class="header-left">
                            <div class="logo-name">
                                <a href="index.html"> <h1>Online Shopping</h1> 
                                    <!--<img id="logo" src="" alt="Logo"/>--> 
                                </a> 								
                            </div>
                            <!--search-box-->
                            <div class="search-box">
                                <form>
                                    <input type="text" placeholder="Search..." required="">	
                                    <input type="submit" value="">					
                                </form>
                            </div><!--//end-search-box-->
                            <div class="clearfix"> </div>
                        </div>
                        <div class="header-right">
                            <div class="profile_details_left"><!--notifications of menu start -->
                                <ul class="nofitications-dropdown">
                                    <li class="dropdown head-dpdn">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-envelope"></i><span class="badge">3</span></a>
                                        <ul class="dropdown-menu">
                                            <li>
                                                <div class="notification_header">
                                                    <h3>You have 3 new messages</h3>
                                                </div>
                                            </li>
                                            <li><a href="#">
                                                    <div class="user_img"><img src="images/p4.png" alt=""></div>
                                                    <div class="notification_desc">
                                                        <p>Lorem ipsum dolor</p>
                                                        <p><span>1 hour ago</span></p>
                                                    </div>
                                                    <div class="clearfix"></div>	
                                                </a></li>
                                            <li class="odd"><a href="#">
                                                    <div class="user_img"><img src="images/p2.png" alt=""></div>
                                                    <div class="notification_desc">
                                                        <p>Lorem ipsum dolor </p>
                                                        <p><span>1 hour ago</span></p>
                                                    </div>
                                                    <div class="clearfix"></div>	
                                                </a></li>
                                            <li><a href="#">
                                                    <div class="user_img"><img src="images/p3.png" alt=""></div>
                                                    <div class="notification_desc">
                                                        <p>Lorem ipsum dolor</p>
                                                        <p><span>1 hour ago</span></p>
                                                    </div>
                                                    <div class="clearfix"></div>	
                                                </a></li>
                                            <li>
                                                <div class="notification_bottom">
                                                    <a href="#">See all messages</a>
                                                </div> 
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="dropdown head-dpdn">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-bell"></i><span class="badge blue">3</span></a>
                                        <ul class="dropdown-menu">
                                            <li>
                                                <div class="notification_header">
                                                    <h3>You have 3 new notification</h3>
                                                </div>
                                            </li>
                                            <li><a href="#">
                                                    <div class="user_img"><img src="images/p5.png" alt=""></div>
                                                    <div class="notification_desc">
                                                        <p>Lorem ipsum dolor</p>
                                                        <p><span>1 hour ago</span></p>
                                                    </div>
                                                    <div class="clearfix"></div>	
                                                </a></li>
                                            <li class="odd"><a href="#">
                                                    <div class="user_img"><img src="images/p6.png" alt=""></div>
                                                    <div class="notification_desc">
                                                        <p>Lorem ipsum dolor</p>
                                                        <p><span>1 hour ago</span></p>
                                                    </div>
                                                    <div class="clearfix"></div>	
                                                </a></li>
                                            <li><a href="#">
                                                    <div class="user_img"><img src="images/p7.png" alt=""></div>
                                                    <div class="notification_desc">
                                                        <p>Lorem ipsum dolor</p>
                                                        <p><span>1 hour ago</span></p>
                                                    </div>
                                                    <div class="clearfix"></div>	
                                                </a></li>
                                            <li>
                                                <div class="notification_bottom">
                                                    <a href="#">See all notifications</a>
                                                </div> 
                                            </li>
                                        </ul>
                                    </li>	
                                    <li class="dropdown head-dpdn">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-tasks"></i><span class="badge blue1">9</span></a>
                                        <ul class="dropdown-menu">
                                            <li>
                                                <div class="notification_header">
                                                    <h3>You have 8 pending task</h3>
                                                </div>
                                            </li>
                                            <li><a href="#">
                                                    <div class="task-info">
                                                        <span class="task-desc">Database update</span><span class="percentage">40%</span>
                                                        <div class="clearfix"></div>	
                                                    </div>
                                                    <div class="progress progress-striped active">
                                                        <div class="bar yellow" style="width:40%;"></div>
                                                    </div>
                                                </a></li>
                                            <li><a href="#">
                                                    <div class="task-info">
                                                        <span class="task-desc">Dashboard done</span><span class="percentage">90%</span>
                                                        <div class="clearfix"></div>	
                                                    </div>
                                                    <div class="progress progress-striped active">
                                                        <div class="bar green" style="width:90%;"></div>
                                                    </div>
                                                </a></li>
                                            <li><a href="#">
                                                    <div class="task-info">
                                                        <span class="task-desc">Mobile App</span><span class="percentage">33%</span>
                                                        <div class="clearfix"></div>	
                                                    </div>
                                                    <div class="progress progress-striped active">
                                                        <div class="bar red" style="width: 33%;"></div>
                                                    </div>
                                                </a></li>
                                            <li><a href="#">
                                                    <div class="task-info">
                                                        <span class="task-desc">Issues fixed</span><span class="percentage">80%</span>
                                                        <div class="clearfix"></div>	
                                                    </div>
                                                    <div class="progress progress-striped active">
                                                        <div class="bar  blue" style="width: 80%;"></div>
                                                    </div>
                                                </a></li>
                                            <li>
                                                <div class="notification_bottom">
                                                    <a href="#">See all pending tasks</a>
                                                </div> 
                                            </li>
                                        </ul>
                                    </li>	
                                </ul>
                                <div class="clearfix"> </div>
                            </div>


                            <!--notification menu end -->

                            




                            <a href="<%=request.getContextPath()%>">Home</a>





                            <!--notification menu end -->
                            <div class="profile_details">		
                                <ul>
                                    <li class="dropdown profile_details_drop">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                            <div class="profile_img">	
                                                <span class="prfil-img"><img src="images/p1.png" alt=""> </span> 
                                                <div class="user-name">
                                                    <p><h4> ${sessionScope.UserLoggedIn}</h4></p>
                                                    <span>Administrator</span>
                                                </div>
                                                <i class="fa fa-angle-down lnr"></i>
                                                <i class="fa fa-angle-up lnr"></i>
                                                <div class="clearfix"></div>	
                                            </div>	
                                        </a>
                                        <ul class="dropdown-menu drp-mnu">
                                            <li> <a href="#"><i class="fa fa-cog"></i> Settings</a> </li> 
                                            <li> <a href="#"><i class="fa fa-user"></i> Profile</a> </li> 
                                            <li> <a href="logout"><i class="fa fa-sign-out"></i> Logout</a> </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <div class="clearfix"> </div>				
                        </div>
                        <div class="clearfix"> </div>	
                    </div>
                    <!--heder end here-->
                    <!-- script-for sticky-nav -->
                    <script>
                        $(document).ready(function () {
                            var navoffeset = $(".header-main").offset().top;
                            $(window).scroll(function () {
                                var scrollpos = $(window).scrollTop();
                                if (scrollpos >= navoffeset) {
                                    $(".header-main").addClass("fixed");
                                } else {
                                    $(".header-main").removeClass("fixed");
                                }
                            });

                        });
                    </script>
                    <!-- /script-for sticky-nav -->
                    <!--inner block start here-->
                    <div class="inner-block">
                        
                        
                        
                        
                        
                        <div class="container-fluid">

                    <!-- Breadcrumbs-->
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="#">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active">Overview</li>
                    </ol>

                    <!-- Icon Cards-->
                    

                    <!-- Area Chart Example-->
                    <!--          <div class="card mb-3">
                                <div class="card-header">
                                  <i class="fas fa-chart-area"></i>
                                  Area Chart Example</div>
                                <div class="card-body">
                                  <canvas id="myAreaChart" width="100%" height="30"></canvas>
                                </div>
                                <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                              </div>-->
                    <!--                    <div class="row" ng-app="organocartpackage" ng-controller="ProductController">
                    
                                            <div class="col-lg-4 col-md-6 mb-4 panel" ng-repeat="p in orderlistobject">
                                                <p>{{p.orderid}}</p>
                                            </div>
                                        </div>-->

                    <!-- DataTables Example -->
                    <div class="card mb-3" ng-app="organocartpackage" ng-controller="ProductController">
                        <div class="card-header">
                            <i class="fas fa-table"></i>
                            Order History</div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Order Id</th>
                                            <th>Date</th>
                                            <th>User</th>
                                            <th>Address</th>
                                            <th>Status</th>
                                            <th>Details</th>
                                             <th>Confirm</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Order Id</th>
                                            <th>Date</th>
                                            <th>User</th>
                                            <th>Address</th>
                                            <th>Status</th>
                                            <th>Details</th>
                                             <th>Confirm</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <tr ng-repeat="p in orderlistobject">
                                            <td>{{p.orderid}}</td>
                                            <td>{{p.orderdate}}</td>
                                            <td>{{p.useremail}}</td>
                                            <td>{{p.addressid}}</td>
                                            <td>{{p.orderstatus}}</td>
                                            <td>
                                                <table>
                                                    <tr>
                                                        <th>Product</th>
                                                        <th>Qty</th>
                                                        <th>Price</th>
                                                    </tr>
                                                    <tr ng-repeat="d in p.orderDetails">
                                                        <td>{{d.productid}}</td>
                                                        <td>{{d.quantity}}</td>
                                                        <td>{{d.price}}</td>
                                                        
                                                    </tr>
                                                </table>
                                            </td>
                                            <td><a href="confirm/{{p.orderid }}"><button id="editbuttons"
                                                                                                      type="submit" class="btn">Confirm</button></a> 
                                           </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                    </div>

                </div>
                        
                        
                        
                        
                        
                        
                    </div>
                    <!--inner block end here-->
                    <!--copy rights start here-->
                    <div class="copyrights">
                        <p>© 2016 Shoppy. All Rights Reserved | Design by  <a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
                    </div>	
                    <!--COPY rights end here-->
                </div>
            </div>
            <!--slider menu-->
            <div class="sidebar-menu">
                <div class="logo"> <a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span> </a> <a href="#"> <span id="logo" ></span> 
                        <!--<img id="logo" src="" alt="Logo"/>--> 
                    </a> </div>		  
                <div class="menu">
                    <ul id="menu" >
                        <li id="menu-home" ><a href="index.html"><i class="fa fa-tachometer"></i><span>Dashboard</span></a></li>
                        <li><a href="#"><i class="fa fa-cogs"></i><span>Pages</span><span class="fa fa-angle-right" style="float: right"></span></a>
                            <ul>
                                <li><a href="showingcategorypage">Add Category</a></li>
                                <li><a href="showsupplier">Add Supplier</a></li>		            
                                <li><a href="showproductpage">Add Product</a></li>
                                <li><a href="admin">Product Order List</a>
                                </li>		            
                            </ul>
                        </li>
                        <li id="menu-comunicacao" ><a href="#"><i class="fa fa-book nav_icon"></i><span>Show Save Data</span><span class="fa fa-angle-right" style="float: right"></span></a>
                            <ul id="menu-comunicacao-sub" >
                                <li id="menu-mensagens" style="width: 120px" ><a href="buttons.html">Buttons</a>		              
                                </li>
                                <li id="menu-arquivos" ><a href="showsaledetail2">Sale Confirm-List</a></li>
                                <li id="menu-arquivos" ><a href="icons.html">Icons</a></li>
                            </ul>
                        </li>
                        <li><a href="maps.html"><i class="fa fa-map-marker"></i><span>Maps</span></a></li>
                        <li id="menu-academico" ><a href="#"><i class="fa fa-file-text"></i><span>Report</span><span class="fa fa-angle-right" style="float: right"></span></a>
                            <ul id="menu-academico-sub" >
                                <li id="menu-academico-boletim" ><a href="reportView">Product_Report</a></li>
                                <li id="menu-academico-avaliacoes" ><a href="salereportView">Sale-Report</a></li>	
                                 <li id="menu-academico-avaliacoes" ><a href="orderreportView">Order-Report</a></li>
                                  <li id="menu-academico-avaliacoes" ><a href="orderView">Sub-Report</a></li>	
                            </ul>
                        </li>

                        <li><a href="charts.html"><i class="fa fa-bar-chart"></i><span>Charts</span></a></li>
                        <li><a href="#"><i class="fa fa-envelope"></i><span>Mailbox</span><span class="fa fa-angle-right" style="float: right"></span></a>
                            <ul id="menu-academico-sub" >
                                <li id="menu-academico-avaliacoes" ><a href="inbox.html">Inbox</a></li>
                                <li id="menu-academico-boletim" ><a href="inbox-details.html">Compose email</a></li>
                            </ul>
                        </li>
                        <li><a href="#"><i class="fa fa-cog"></i><span>System</span><span class="fa fa-angle-right" style="float: right"></span></a>
                            <ul id="menu-academico-sub" >
                                <li id="menu-academico-avaliacoes" ><a href="404.html">404</a></li>
                                <li id="menu-academico-boletim" ><a href="blank.html">Blank</a></li>
                            </ul>
                        </li>
                        
                    </ul>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
        <!--slide bar menu end here-->
        <script>
            var toggle = true;

            $(".sidebar-icon").click(function () {
                if (toggle)
                {
                    $(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
                    $("#menu span").css({"position": "absolute"});
                } else
                {
                    $(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
                    setTimeout(function () {
                        $("#menu span").css({"position": "relative"});
                    }, 400);
                }
                toggle = !toggle;
            });
        </script>
        <!--scrolling js-->
        <script src="resources/plug/js/jquery.nicescroll.js"></script>
        <script src="resources/plug/js/scripts.js"></script>
        <!--//scrolling js-->
        <script src="resources/plug/js/bootstrap.js"></script>
        
        <script src="resources/jquery/jquery.min.js"></script>
        <script src="resources/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="resources/jquery-easing/jquery.easing.min.js"></script>

        <!-- Page level plugin JavaScript-->
        <script src="resources/chart/Chartmin.js"></script>
        <script src="resources/datatables/jquerydataTables.js"></script>
        <script src="resources/datatables/dataTablesbootstrap4.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="resources/jsnew/sb-adminmin.js"></script>

        <!-- Demo scripts for this page-->
        <script src="resources/jsnew/demo/datatablesdemo.js"></script>
        <script src="resources/jsnew/demo/chartareademo.js"></script>
        
        <!-- mother grid end here-->
    </body>
</html>




