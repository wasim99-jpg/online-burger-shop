<%-- 
    Document   : StaffAdd
    Created on : Jan 20, 2022, 11:01:04 PM
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
        <title>Home - BurgermbiraStaff</title>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Kaushan+Script">
        <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/Product-Details.css">
        <link rel="stylesheet" href="assets/css/Projects-Horizontal.css">
        <link rel="stylesheet" href="assets/css/untitled.css">
    </head>

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

        <br><br><br><br>       
        <section id="contact" style="background-image:url('team/map-image.png');">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2 class="text-uppercase section-heading">ADD NEW STAFF</h2>
                        <h3 class="section-subheading text-muted">              </h3>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <form action="StaffAddCheck.jsp" method="post">
                            <div class="form-row" style="padding-left: 0px;padding-right: 0px;">
                                <div class="col col-md-6" style="padding-right: 1px;padding-left: 71px;margin-left: 240px;margin-bottom: 45px;margin-top: -32px;">
                                    <div class="form-group"><input name="staff_name"  id="name" class="form-control" type="name" placeholder="Your Name *" required /><small class="form-text text-danger flex-grow-1 help-block lead"></small></div>
                                    <div class="form-group"><input name="staff_email" id="email" class="form-control" type="email" placeholder="Your Email *" required /><small class="form-text text-danger help-block lead"></small></div>
                                    <div class="form-group"><input name="staff_pass" class="form-control" type="password" placeholder="Your Pass *" required /><small class="form-text text-danger help-block lead"></small></div>
                                </div>
                                <div class="col-lg-12 text-center">
                                    <div id="success"></div><button href="staffAdd.jsp" id="sendMessageButton" class="btn btn-primary btn-xl text-uppercase" type="submit" style="margin-right: 20px;background: rgb(95,207,8);">Add Staff</button>
                                </div>
                            </div>
                        </form>
                        
                    </div>
                </div>
            </div>
        </section>







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

</html>
