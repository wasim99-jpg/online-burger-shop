<%-- 
    Document   : Adminlogin
    Created on : Jan 20, 2022, 8:20:04 PM
    Author     : deskt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<sql:setDataSource var="myDatasource" driver="org.apache.derby.jdbc.ClientDriver" url="jdbc:derby://localhost:1527/Burgermbira" user="app" password="app"/>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
        <title>Admin login</title>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
        <link rel="stylesheet" href="assets/css/Login-Form-Clean.css">
        <link rel="stylesheet" href="assets/css/Registration-Form-with-Photo.css">
        <link rel="stylesheet" href="assets/css/styles.css">
    </head>

    <body>

        <nav class="navbar navbar-dark navbar-expand-lg fixed-top bg-dark" id="mainNav">
            <div class="container"><a class="navbar-brand" href="#page-top">BurgermbiraStaff</a><button data-toggle="collapse" data-target="#navbarResponsive" class="navbar-toggler navbar-toggler-right" type="button" data-toogle="collapse" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
                <div class="collapse navbar-collapse" id="navbarResponsive" style="margin-left: 0px;padding-left: 0px;">
                    <ul class="navbar-nav ml-auto text-uppercase" style="margin-bottom: 0px;margin-left: 0px;padding-left: 0px;">
                    </ul>
                </div>
            </div>
        </nav>


        <br><br><br><br>
        <section class="login-clean">
            <form action="LoginStaffServlet" method="post">
                <h5 class="visually-hidden">Admin Login Form</h5>
                <div class="illustration"><i  style="border-color: rgb(255,247,54);color: rgb(0,0,0);"></i></div>
                <div class="mb-3"><input class="form-control" type="email" name="STAFF_EMAIL" placeholder="Email"></div>
                <div class="mb-3"><input class="form-control" type="password" name="STAFF_PASS" placeholder="Password"></div>
                <div class="mb-3"><button class="btn btn-primary d-block w-100" type="submit" style="background: rgb(244,227,71);color: rgb(0,0,0);">Log In</button></div>
            </form>
        </section>


        <footer>
            <div class="container text-center">
                <div class="row justify-content-center">
                    <div class="col-md-4"><span class="copyright">Copyright&nbsp;© Burgermbira 2022</span></div>
                </div>
            </div>
        </footer

        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>
