<%-- 
    Document   : menu
    Created on : Jan 17, 2022, 10:04:40 AM
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
    <title>Menu - Burgermbira</title>
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
    
    <section class="projects-horizontal">
        <div class="container">
            <div class="intro">
                <h2 class="text-center">MENU</h2>
                <p class="text-center">Choose your Desire Burger</p>
            </div>
            <div class="row projects">
                <div class="col-sm-6 item">
                    <div class="row">
                        <div class="col-md-12 col-lg-5"><a href="burgerwagyu.jsp"><img class="img-fluid" src="assets/img/menu/burgerwagyu.jpg"></a></div>
                        <div class="col">
                            <h3 class="name">Burger Wagyu</h3>
                            <p class="description">1 Burger Wagyu<br>1 Paipsi Cup (Large)<br>1 Fries (Large)<br><br>RM69</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 item">
                    <div class="row">
                        <div class="col-md-12 col-lg-5"><a href="burgerwagmi.jsp"><img class="img-fluid" src="assets/img/menu/burgerwagmi.jpg"></a></div>
                        <div class="col">
                            <h3 class="name">Burger Wagmi</h3>
                            <p class="description">1 Burger Wagmi<br>1 Paipsi Cup (Large)<br>1 Fries (Large)<br><br>RM42<br><br></p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 item">
                    <div class="row">
                        <div class="col-md-12 col-lg-5"><a href="burgerlang.jsp"><img class="img-fluid" src="assets/img/menu/burgerlang.jpg"></a></div>
                        <div class="col">
                            <h3 class="name">Burger LANG</h3>
                            <p class="description">1 Burger LANG<br>1 Paipsi Cup (Large)<br>1 Fries (small)<br>1 onion ring (medium)<br><br>RM20<br><br></p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 item">
                    <div class="row">
                        <div class="col-md-12 col-lg-5"><a href="burgerklcc.jsp"><img class="img-fluid" src="assets/img/menu/burger%20klcc.jpg"></a></div>
                        <div class="col">
                            <h3 class="name">Burger KLCC</h3>
                            <p class="description">1 Pair of Burger KLCC<br>1 Paipsi Cup (Large)<br>1 Fries (Large)<br><br><br>RM50<br><br></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <footer style="padding-top: 0px;">
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
