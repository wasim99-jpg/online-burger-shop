<%-- 
    Document   : burgerlang
    Created on : Jan 17, 2022, 10:01:39 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Burgerlang - Burgermbira</title>
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
    

    <form action="cartInsert.jsp" method="post" >

            <div class="container" style="margin-bottom: 128px;margin-top: 151px;">
                <h1 class="text-center" style="margin-top: -30px;">Product Details</h1>
                <div class="row">
                    <div class="col-md-7">
                        <div class="row">
                            <div class="col-md-12"><img class="img-thumbnail img-fluid center-block" src="assets/img/menu/burgerlang.jpg"></div>
                        </div>
                    </div>

                    <div class="col-md-5">
                        <h1>BurgerLANG</h1>
                        <p style="margin-bottom: 176px;">1 Paipsi cup (Large)<br>1 bowl of french fries (small)<br>1 bowl of onion ring(Large)<br>1 BurgerLANG</p>
                        <h2 class="text-center text-success">RM 20.00</h2>
                        <div class="quanity-cart-row clearfix">


                            <div class="quantity" align="center">
                                <input type="number" name="quantity" min="1" value="1"  />
                            </div>

                            <div class="add-to-cart"  class="input-group" align="center">
                                <button class="btn btn-primary" type="button">
                                    <span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> 
                                    <input type="hidden" name="burgerid" value="B003"/>
                                    <input type="hidden" name="picture" value="assets/img/menu/burgerlang.jpg"/>
                                    <input type="submit" name="submit" value="Add To Cart" class="purchase button">
                                </button>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

        </form>
    
    
    
    
    
    
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