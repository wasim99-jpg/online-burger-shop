<%-- 
    Document   : TransactionHistoryDetails
    Created on : Jan 21, 2022, 9:24:02 AM
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

    <c:set var="USERID" value="<%= session.getAttribute("userId")%>" /> 
    <c:set var="purid" value="<%=request.getParameter("purId")%>"/>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
        <title>History Details - Burgermbira</title>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
        <link rel="stylesheet" href="assets/css/Login-Form-Clean.css">
        <link rel="stylesheet" href="assets/css/Registration-Form-with-Photo.css">
        <link rel="stylesheet" href="assets/css/styles.css">
    </head>




    <sql:query var="result" dataSource="${myDatasource}">
            SELECT * FROM APP.CART 
            INNER JOIN APP.BURGER ON APP.CART.BURGERID = APP.BURGER.BURGERID
            INNER JOIN APP.PURCHASE ON APP.CART.PURCHASEID = APP.PURCHASE.PURCHASEID 
            WHERE APP.CART.PURCHASEID=${purid}
        </sql:query>

    

    <body>
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
        </nav>

        <br><br><br><br><br><br>
        <!-- Feature -->
        <h1 class="text-center">HISTORY DETAILS</h1><center>

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
                                                    <div class="p-2 px-3 text-uppercase">Product</div>
                                                </th>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="py-2 text-uppercase">Price</div>
                                                </th>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="py-2 text-uppercase">Quantity</div>
                                                </th>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="py-2 text-uppercase">Payment status</div>
                                                </th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                            <c:forEach var="row" items="${result.rows}">
                                                <tr>
                                                    <th scope="row" class="border-0">
                                                        <div class="p-2">

                                                            <div class="ml-3 d-inline-block align-middle">
                                                                <h5 class="mb-0"><a class="text-dark d-inline-block align-middle"><c:out value="${row.BURGERNAME}"/></a></h5>
                                                            </div>
                                                        </div> 
                                                    </th>
                                                    <td class="border-0 align-middle"><strong><c:out value="${row.TOTAL}"/></strong></td><br> 
                                            <td class="border-0 align-middle"><strong><c:out value="${row.QUANTITY}"/></strong></td><br> 
                                            <td class="border-0 align-middle"><strong><c:out value="${row.STATUS}"/></strong></td>
                                             
                                            
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
        
        
        
        
        <a href="TransactionHistory.jsp"><input type="submit" class="btn btn-primary btn-xl text-uppercase" id="sendMessageButton" name="update" value="BACK" align="center"  style="color:white"></a></button>


<footer>
    <div class="container text-center">
        <div class="row justify-content-center">
            <div class="col-md-4" style="margin-left: 337px;"><span class="copyright">Copyright???? Burgermbira 2022</span></div>
            <div class="col-md-4" style="padding-left: 114px;"><span class="copyright">017-2077226</span></div>
        </div>
    </div>
</footer>
        
        
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
        <script src="assets/js/agency.js"></script>
    </body>

</html>