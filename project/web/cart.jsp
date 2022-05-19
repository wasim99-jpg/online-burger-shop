<%-- 
    Document   : cart
    Created on : Jan 17, 2022, 10:03:35 AM
    Author     : admin
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
        <title>Cart - Burgermbira</title>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Kaushan+Script">
        <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/Product-Details.css">
        <link rel="stylesheet" href="assets/css/Projects-Horizontal.css">
        <link rel="stylesheet" href="assets/css/untitled.css">
    </head>

    <body class="text-body">

        <c:set var="USERID" value="<%= session.getAttribute("userId")%>"/>

        <sql:query var="result" dataSource="${myDatasource}">
            SELECT * FROM APP.CART 
            INNER JOIN APP.BURGER ON APP.CART.BURGERID = APP.BURGER.BURGERID 
            where APP.CART.USERIC='${USERID}' AND APP.CART.STATUS='NO'
        </sql:query>



        <nav class="navbar navbar-dark navbar-expand-lg fixed-top bg-dark" id="mainNav">
            <div class="container"><a class="navbar-brand" href="#page-top">Burgermbira</a><button data-toggle="collapse" data-target="#navbarResponsive" class="navbar-toggler navbar-toggler-right" type="button" data-toogle="collapse" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
                <div class="collapse navbar-collapse" id="navbarResponsive" style="margin-left: 0px;padding-left: 0px;">
                    <ul class="navbar-nav ml-auto text-uppercase" style="margin-bottom: 0px;margin-left: 0px;padding-left: 0px;">
                        <li class="nav-item" style="margin-left: 0px;"><a class="nav-link js-scroll-trigger" href="index.jsp" style="margin-left: 0px;">Home</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="menu.jsp">Menu</a></li>
                        <li class="nav-item" style="padding-right: 205px;padding-left: 0px;"><a class="nav-link js-scroll-trigger" href="about.jsp">About</a></li>
                        <li class="nav-item" style="padding-left: 0px;padding-right: 14px;padding-bottom: 13px;"><a class="btn btn-primary" role="button" style="color: rgb(0,0,0);opacity: 1;" href="cart.jsp">CART</a></li>
                        <li class="nav-item"><a class="btn btn-primary" role="button" style="color: rgb(0,0,0);margin-right: 19px;" href="profile.jsp">Profile</a></li>
                        <li class="nav-item"><a  class="btn btn-primary" role="button" style="color: rgb(0,0,0);background: rgb(254,102,54);" href="LogoutServlet">logout</a></li>
                    </ul>
                </div>
            </div>
        </nav><div class="shopping-cart">
            <div class="px-4 px-lg-0" align="center">


                <br><br><br><br>

                <div class="pb-5">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">

                                <span></span><span></span><span></span>

                                <!-- Shopping cart table -->
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="p-2 px-3 text-uppercase">Product</div>
                                                </th>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="py-2 text-uppercase">Price</div>
                                                </th>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="py-2 text-uppercase">Quantity</div>
                                                </th>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="py-2 text-uppercase">Remove</div>
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                        <form action="deleteCart.jsp" method="post">

                                            <c:set var="TotalAll" value="0"/>
                                            <c:forEach var="row" items="${result.rows}">
                                                <tr>
                                                    <th scope="row" class="border-0">
                                                        <div class="p-2">
                                                            <img src="<c:out value="${row.BURGERIMAGE}"/>" alt="" width="70" class="img-fluid rounded shadow-sm">

                                                            <div class="ml-3 d-inline-block align-middle">
                                                                <h5 class="mb-0"><a href="#" class="text-dark d-inline-block align-middle"><c:out value="${row.BURGERNAME}"/></a></h5>
                                                            </div>
                                                        </div> 
                                                    </th>
                                                    <td class="border-0 align-middle"><strong><c:out value="${row.TOTAL}"/></strong></td> 
                                                    <td class="border-0 align-middle"><strong><c:out value="${row.QUANTITY}"/></strong></td>  

                                                    <td class="remove"><a href="deleteCart.jsp?cartId=<c:out value="${row.CARTID}"/>"><button type="button" class="btn btn-primary"type="submit">Delete</button></a></td>

                                                </tr>      

                                                <c:set var="TotalAll" value="${TotalAll+row.TOTAL}"/>

                                            </c:forEach>

                                        </form>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- End -->
                            </div>
                        </div>

                        <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Instructions for seller</div>
                        <div class="p-4">
                            <form action="Transaction.jsp" method="post">
                                <p class="font-italic mb-4">If you have some information for the seller you can leave them in the box below</p>

                                <textarea cols="30" rows="2" class="form-control" type="text" name="notes" placeholder="dont leave blank, write 'none' if no extra info were given">none</textarea>


                        </div>
                    </div>


                    <div class="col-lg-6" align="center">
                        <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold" align="center">Order summary </div>
                        <div class="p-4">
                            <p class="font-italic mb-4">Shipping and additional costs are calculated based on values you have entered.</p>
                            <ul class="list-unstyled mb-4">
                                <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Order Subtotal </strong><strong><c:out value="${TotalAll}"/></strong></li>
                                <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Shipping and handling</strong><strong>FREE(Launch day)</strong></li>
                                <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Total</strong>
                                    <h5 class="font-weight-bold">RM<c:out value="${TotalAll}"/></h5>
                                </li>
                            </ul>

                            <input type="hidden" id="sum" name="total" value="<c:out value="${TotalAll}"/>" />
                            <c:if test="${TotalAll >=1}"> 
                                <input  class="btn btn-dark rounded-pill py-2 btn-block"  type="submit" name="checkout" value='Procceed to checkout'/>
                            </c:if>  



                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>





        <footer>
            <div class="container text-center">
                <div class="row justify-content-center">
                    <div class="col-md-4" style="margin-left: 337px;"><span class="copyright">Copyright © Burgermbira 2022</span></div>
                    <div class="col-md-4" style="padding-left: 114px;"><span class="copyright">017-2077226</span></div>
                </div>
            </div>
        </footer>











        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
        <script src="assets/js/agency.js"></script>
    </body>

    <script type="text/javascript">


        if (total == 0)) {
            txt = "You pressed OK!";
        } else {
            txt = "You pressed Cancel!";
        }



    </script>


</html>