<%-- 
    Document   : Transaction
    Created on : Jan 19, 2022, 7:19:10 PM
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
        <title>Transaction - Burgermbira</title>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
        <link rel="stylesheet" href="assets/css/Login-Form-Clean.css">
        <link rel="stylesheet" href="assets/css/Registration-Form-with-Photo.css">
        <link rel="stylesheet" href="assets/css/styles.css">
    </head>



    <c:set var="USERIC" value="<%= session.getAttribute("userId")%>" /> 

    <c:set var="tootal" value="<%=request.getParameter("total")%>"/>

    <c:set var="NOTES" value="<%=request.getParameter("notes")%>"/>



    <%--insert to purchase database --%>
    <sql:update var="resulty" dataSource="${myDatasource}">

        INSERT INTO PURCHASE (TRANS_TOTAL,TRANS_NOTES) 
        VALUES (${tootal},'${NOTES}')
    </sql:update>   

    <%-- select purchase id to put in cart--%>
    <sql:query var="result" dataSource="${myDatasource}">
        SELECT PURCHASEID FROM APP.PURCHASE WHERE TRANS_TOTAL=${tootal} AND TRANS_NOTES='${NOTES}'
    </sql:query>

    <c:forEach var="row" items="${result.rows}">
        <c:set var="PUR_ID" value="${row.PURCHASEID}" />
        <c:set var="fulladdress" value="${row.PUR_ADDRESS}" />
        <c:set var="realnumber" value="${row.PUR_PHONE}" />
        <c:set var="currentdate" value="${row.TRANS_DATE}" />
    </c:forEach>

    <%-- update status --%>
    <sql:update var="resultup" dataSource="${myDatasource}">
        UPDATE APP.CART set STATUS='YES',PURCHASEID=${PUR_ID}
        WHERE  STATUS='NO' AND USERIC='${USERIC}'
    </sql:update>

    <sql:query var="resultcustomer" dataSource="${myDatasource}">
        SELECT * FROM APP.CUSTOMER where USERIC='${USERIC}'
    </sql:query>

    <c:forEach var="row" items="${resultcustomer.rows}">
        <c:set var="address" value="${row.ADDRESS_1}" />
        <c:set var="address2" value="${row.ADDRESS_2}" />
        <c:set var="pnum" value="${row.PHONENUM}" />
    </c:forEach>

    <sql:update var="concatenate" dataSource="${myDatasource}">
        UPDATE APP.PURCHASE 
        SET PUR_ADDRESS='${address}' || '${address2}', PUR_PHONE='${pnum}',TRANS_DATE = CURRENT_DATE, USERIC='${USERIC}'
        WHERE PURCHASEID=${PUR_ID}
    </sql:update>

     <sql:query var="resu3" dataSource="${myDatasource}">
        SELECT * FROM PURCHASE 
        where PURCHASE.PURCHASEID=${PUR_ID} 
    </sql:query>   

    <sql:query var="resu" dataSource="${myDatasource}">
        SELECT * FROM CART 
        INNER JOIN PURCHASE ON CART.PURCHASEID = PURCHASE.PURCHASEID 
        INNER JOIN BURGER ON CART.BURGERID=BURGER.BURGERID
        where CART.PURCHASEID=${PUR_ID} 
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
        <h1 class="text-center">RECEIPT</h1><center>
        <c:forEach var="row" items="${resu3.rows}"><p align="center">DATE : <c:out value="${row.TRANS_DATE}"/></p></c:forEach>
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
                                                        <div class="py-2 text-uppercase">Price (RM)</div>
                                                    </th>
                                                    <th scope="col" class="border-0 bg-light">
                                                        <div class="py-2 text-uppercase">Quantity</div>
                                                    </th>
                                                    <th scope="col" class="border-0 bg-light">
                                                        <div class="py-2 text-uppercase">NOTES TO SELLER</div>
                                                    </th>
                                                </tr>
                                            </thead>

                                            <tbody>
                                            <c:forEach var="row" items="${resu.rows}">
                                                <tr>
                                                    <th scope="row" class="border-0">
                                                        <div class="p-2">
                                                            
                                                            <div class="ml-3 d-inline-block align-middle">
                                                                <h5 class="mb-0"><a class="text-dark d-inline-block align-middle"><c:out value="${row.BURGERNAME}"/></a></h5>
                                                            </div>
                                                        </div> 
                                                    </th>
                                                    <td class="border-0 align-middle"><strong><c:out value="${row.TOTAL}"/></strong></td>
                                            <td class="border-0 align-middle"><strong><c:out value="${row.QUANTITY}"/></strong></td>
                                            <td class="border-0 align-middle"><strong><c:out value="${row.TRANS_NOTES}"/></strong></td> 

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
            
        <c:forEach var="row" items="${resu3.rows}"><p align="center">Incase if you have problem this your Purchase ID : <c:out value="${row.PURCHASEID}"/></p></c:forEach>
        <c:forEach var="row" items="${resultcustomer.rows}"><p align="center">PHONE NUMBER : <c:out value="${row.PHONENUM}"/></p></c:forEach>
        <c:forEach var="row" items="${resultcustomer.rows}"><p align="center">address : <c:out value="${row.ADDRESS_1}"/> <c:out value="${row.ADDRESS_2}"/></p></c:forEach>

            <h1 align="center" ">TOTAL : RM<c:out value="${tootal}"/></h5>



            <footer>
                <div class="container text-center">
                    <div class="row justify-content-center">
                        <div class="col-md-4"><span class="copyright">Copyright&nbsp;© Burgermbira 2022</span></div>
                        <div class="col-md-4" style="padding-left: 114px;"><span class="copyright">017-2077226</span></div>
                    </div>
                </div>
            </footer


            



            <script src="assets/bootstrap/js/bootstrap.min.js"></script>
            </body>
            </html>
