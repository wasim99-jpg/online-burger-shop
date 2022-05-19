<%-- 
    Document   : registration
    Created on : Jan 17, 2022, 9:31:39 PM
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
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
        <title>Registration - Burgermbira</title>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
        <link rel="stylesheet" href="assets/css/Login-Form-Clean.css">
        <link rel="stylesheet" href="assets/css/Registration-Form-with-Photo.css">
        <link rel="stylesheet" href="assets/css/styles.css">
    </head>

    <body>
        

        <nav class="navbar navbar-dark navbar-expand-lg fixed-top bg-dark" id="mainNav">
            <div class="container"><a class="navbar-brand" href="#page-top">Burgermbira</a><button data-toggle="collapse" data-target="#navbarResponsive" class="navbar-toggler navbar-toggler-right" type="button" data-toogle="collapse" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
                <div class="collapse navbar-collapse" id="navbarResponsive" style="margin-left: 0px;padding-left: 0px;">
                    <ul class="navbar-nav ml-auto text-uppercase" style="margin-bottom: 0px;margin-left: 0px;padding-left: 0px;">
                        <li class="nav-item" style="margin-left: 0px;"><a class="nav-link js-scroll-trigger" href="index.html" style="margin-left: 0px;">Home</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="menuNotlogin.html">menu</a></li>
                        <li class="nav-item" style="padding-right: 205px;padding-left: 0px;"><a class="nav-link js-scroll-trigger" href="aboutNotlogin.html">About</a></li>
                        <li class="nav-item" style="padding-left: 0px;padding-right: 14px;padding-bottom: 13px;"><a class="nav-link js-scroll-trigger" href="login.jsp">sign in</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="registration.jsp">sign up</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <br><br><br><br>       
        <section class="register-photo">
            <div class="form-container">
                <div class="image-holder"></div>
                <form action="registrationCheck.jsp" method="post">
                    
                    <h2 class="text-center"><strong>Create</strong> an account.</h2>
                    <div class="mb-3"><input class="form-control" type="text" name="USERIC" placeholder="identification card no."></div>
                    <div class="mb-3"><input class="form-control" type="email" name="EMAIL" placeholder="Email"></div>
                    <div class="mb-3"><input class="form-control" type="tel" name="PHONENUM" placeholder="phone number"></div>
                    <div class="mb-3"><input class="form-control" type="text" name="ADDRESS_1" placeholder="address line 1"></div>
                    <div class="mb-3"><input class="form-control" type="text" name="ADDRESS_2" placeholder="address line 2"></div>
                    <div class="mb-3"><input class="form-control" type="password" name="PASSWORD" placeholder="Password"></div>
                    <div class="mb-3"></div>
                    <div class="mb-3"></div>
                    <div class="mb-3"><button class="btn btn-primary d-block w-100" type="submit" style="color: rgb(0,0,0);background: rgb(255,214,0);">Sign Up</button></div>
                    <a class="already" href="login.jsp">You already have an account? Login here.</a>
                    
                </form>
            </div>
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
