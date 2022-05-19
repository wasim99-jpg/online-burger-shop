<%-- 
    Document   : StaffTransaction
    Created on : Jan 20, 2022, 11:01:33 PM
    Author     : deskt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<sql:setDataSource var="myDatasource" 
                   driver="org.apache.derby.jdbc.ClientDriver" 
                   url="jdbc:derby://localhost:1527/Burgermbira" user="app" 
                   password="app"/>

<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
        <title>ORDER TO DELIVER - BurgermbiraStaff</title>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Kaushan+Script">
        <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/Product-Details.css">
        <link rel="stylesheet" href="assets/css/Projects-Horizontal.css">
        <link rel="stylesheet" href="assets/css/untitled.css">
    </head>

    <body class="text-body">



        <sql:query var="result" dataSource="${myDatasource}">
            SELECT * FROM APP.PURCHASE 
            INNER JOIN CART ON PURCHASE.PURCHASEID = CART.PURCHASEID 
            INNER JOIN BURGER ON CART.BURGERID=BURGER.BURGERID
            ORDER BY PURCHASE.PURCHASEID DESC
        </sql:query>


        





        <nav class="navbar navbar-dark navbar-expand-lg fixed-top bg-dark" id="mainNav">
            <div class="container"><a class="navbar-brand" href="#page-top">BurgermbiraStaff</a><button data-toggle="collapse" data-target="#navbarResponsive" class="navbar-toggler navbar-toggler-right" type="button" data-toogle="collapse" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
                <div class="collapse navbar-collapse" id="navbarResponsive" style="margin-left: 0px;padding-left: 0px;">
                    <ul class="navbar-nav ml-auto text-uppercase" style="margin-bottom: 0px;margin-left: 0px;padding-left: 0px;">
                        <li class="nav-item" style="margin-left: 0px;"><a class="nav-link js-scroll-trigger" href="Staffindex.jsp" style="margin-left: 0px;">Sales</a></li>
                        <li class="nav-item" style="margin-left: 0px;"><a class="nav-link js-scroll-trigger" href="StaffTransaction.jsp" style="margin-left: 0px;">Transaction</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="StaffFeedbackRead.jsp">feedback</a></li>
                        <li class="nav-item" style="padding-right: 100px;padding-left: 0px;"><a class="nav-link js-scroll-trigger" href="StaffUserList.jsp">User list</a></li>
                        
                        <li class="nav-item"><a  class="btn btn-primary" role="button" style="color: rgb(0,0,0);background: rgb(254,102,54);" href="LogoutStaffServlet">logout</a></li>
                    </ul>
                </div>
            </div>
        </nav>






        <br><br><br><br><br><br>
        <!-- Feature -->
        <h1 class="text-center">ORDER TO DELIVER</h1><center>

        <p>---------------------------------------------------</p>


        <div class="shopping-cart">
            <div class="px-4 px-lg-0" align="center">

                <div class="pb-5">
                    <div class="container">
                        <div class="row" pt-5>
                            <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">

                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="p-2 px-3 text-uppercase">Purchase ID</div>
                                                </th>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="p-2 px-3 text-uppercase">Product</div>
                                                </th>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="py-2 text-uppercase">Phone number</div>
                                                </th>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="py-2 text-uppercase">Quantity</div>
                                                </th>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="py-2 text-uppercase">Address</div>
                                                </th>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="py-2 text-uppercase">Notes to seller</div>
                                                </th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                            <c:forEach var="row" items="${result.rows}">
                                                <tr>  
                                            <td class="border-0 align-middle"><c:out value="${row.PURCHASEID}"/></td>
                                            <td class="border-0 align-middle"><c:out value="${row.BURGERNAME}"/></td>
                                            <td class="border-0 align-middle"><c:out value="${row.PUR_PHONE}"/></td> 
                                            <td class="border-0 align-middle"><c:out value="${row.QUANTITY}"/></td> 
                                            <td class="border-0 align-middle"><c:out value="${row.PUR_ADDRESS}"/></td>
                                            <td class="border-0 align-middle"><c:out value="${row.TRANS_NOTES}"/></td> 
                                            </tr>
                                        </c:forEach>
                                        <br>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <footer>
            <div class="container text-center">
                <div class="row justify-content-center">
                    <div class="col-md-4"><span class="copyright">Copyright&nbsp;© Burgermbira 2022</span></div>
                </div>
            </div>
        </footer>
        
        
        
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
        <script src="assets/js/agency.js"></script>
    </body>

</html>
