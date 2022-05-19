<%-- 
    Document   : FeedbackRead
    Created on : Jan 20, 2022, 10:53:49 PM
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
    <title>Feedback - BurgermbiraStaff</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Kaushan+Script">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/Product-Details.css">
    <link rel="stylesheet" href="assets/css/Projects-Horizontal.css">
    <link rel="stylesheet" href="assets/css/untitled.css">
</head>

<c:set var="staffid" value="<%= session.getAttribute("staffId")%>" />

<sql:query var="result" dataSource="${myDatasource}">
            SELECT * FROM APP.FEEDBACK
        </sql:query>

<body class="text-body">
    
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
        <h1 class="text-center">FEEDBACK FROM CUSTOMER</h1><center>


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
                                            <div class="p-2 px-3 text-uppercase">NAME</div>
                                        </th>
                                        <th scope="col" class="border-0 bg-light">
                                            <div class="py-2 text-uppercase">EMAIL</div>
                                        </th>
                                        <th scope="col" class="border-0 bg-light">
                                            <div class="py-2 text-uppercase">PHONE</div>
                                        </th>
                                        <th scope="col" class="border-0 bg-light">
                                            <div class="py-2 text-uppercase">MESSAGE</div>
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>

                                

                                    
                                    <c:forEach var="row" items="${result.rows}">
                                        <tr>
                                            <th scope="row" class="border-0">
                                                <div class="p-2">
                                                    

                                                    <div class="ml-3 d-inline-block align-middle">
                                                        <h5 class="mb-0"><a href="#" class="text-dark d-inline-block align-middle"><c:out value="${row.FB_NAME}"/></a></h5>
                                                    </div>
                                                </div> 
                                            </th>
                                            <td class="border-0 align-middle"><strong><c:out value="${row.FB_EMAIL}"/></strong></td> 
                                            <td class="border-0 align-middle"><strong><c:out value="${row.FB_PHONE}"/></strong></td>  
                                            <td class="border-0 align-middle"><strong><c:out value="${row.FB_MESSAGE}"/></strong></td>
                                            

                                        </tr>      

                                        
                                    </c:forEach>

                                
                                </tbody>
                            </table>
                        </div>
                        <!-- End -->
                    </div>
                </div></div></div>
    
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
