<%-- 
    Document   : addproduct
    Created on : Dec 8, 2018, 5:20:38 PM
    Author     : Round-36
--%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>addproductsale Page</title>

        <style type="text/css">

            .panel>.panel-heading {
                color: #558b2f;
                background-color: #aed581;
                border-color: #aed581;
            }
            .panel>.panel-body
            {
                background-color: #f1f8e9;
                border-color: #aed581;
            }

            .form-control:FOCUS
            {
                border: 2px thin #9ccc65;
                border-radius: 5px;
            }
            .list-group-item {
                overflow: hidden;
            }
            #removebuttons
            {
                color: #ffffff;
                background-color: #e57373;
            }
            #removebuttons:HOVER {
                color: #ffffff;
                background-color: #e53935;
            }
            #editbuttons{
                color: #ffffff;
                background: linear-gradient(to bottom, #aed581 50%, #9ccc65 50%);	
            }
            #editbuttons:HOVER {
                color: #ffffff;
                background: linear-gradient(to bottom, #9ccc65 50%, #8bc34a 50%);	
            }
        </style>
        <script src="resources/js/angular.js"></script>

        <script>
          
            var allorderlist = ${productlists}
            angular.module('myapp', []).controller('ProductsaleController',
                    function ($scope) {
                        $scope.listorder = allorderlist;
                   

                        console.log($scope.listorder);
                      
                    });
        </script>
    </head>
    <body ng-app="myapp" ng-controller="ProductsaleController">
        <jsp:include page="header.jsp" />
        
        
        
       
        <div class="container-fluid"
             style="width: 90%; margin-top: 10px; margin-bottom: 10px">

 
            <!-- panel end -->
            <div class="panel animated fadeInUp delay-05s" id="panel-2">
                <div class="panel-heading">
                    <span class="lead">Products Order List</span>
                </div>
                <p><input type="text" ng-model="test" class="form-control" placeholder="Search Product"></p>
                <!-- end panel2 heading -->
                <div class="panel-body"> 
                    <ul class="list-group">
                        <li class="list-group-item" height="45px"
                            ng-repeat="ord in listorder | filter:test">
                            <table style="width: 100%">
                                <tr>
                                    <td><img class="img-responsive" style="width:125px ;height:150px" src="resources/pimage/{{ord.orderid}}.jpg" />
                                    </td>
                                    <td>
                                        <ul>
                                         
                                            <!--<li><span><b>Product sale id: </b></span>{{ord.orderid}}</li>-->
                                            <li><span><b>order id: </b></span>{{ord.orderid}}</li>
                                            
                                            <li><span><b>deleverydate: </b></span>{{ord.orderdate}}</li>
                                            <li><span><b>sales status: </b></span>{{ord.orderstatus}}</li>
                                             <li><span><b>address id: </b></span>{{ord.addressid}}</li>
                                            

                                        </ul>
                                    </td>
                                    <td> 
                                                                                                   <a
                                            href="adingsaleproduct?getId={{ord.orderid}}"><button id="removebuttons"
                                                                                          type="button" class="btn">Product Details</button></a></td>
                                </tr>
                            </table>
                        </li>
                    </ul>
                </div>
                <!-- panel2 body end -->
            </div>
            <!-- panel2 end -->
        </div>

        <jsp:include page="footer.jsp" />


        <!--<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>-->

        <!-- Include Date Range Picker -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

        <script>
                                                        $(document).ready(function () {
                                                            var date_input = $('input[name="deleverydate"]'); //our date input has the name "date"
                                                            var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
                                                            date_input.datepicker({
                                                                format: 'yyyy/mm/dd',
                                                                container: container,
                                                                todayHighlight: true,
                                                                autoclose: true,
                                                            })
                                                        })
        </script>

        <!--     Form code begins 
            <form method="post">
              <div class="form-group">  Date input 
                <label class="control-label" for="date">Date</label>
                <input class="form-control" id="date" name="date" placeholder="MM/DD/YYY" type="text"/>
              </div>
             </form>-->
    </body>
</html>
