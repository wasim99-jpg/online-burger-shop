<%-- 
    Document   : about
    Created on : Jan 17, 2022, 9:41:31 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<sql:setDataSource var="myDatasource" driver="org.apache.derby.jdbc.ClientDriver" url="jdbc:derby://localhost:1527/Burgermbira" user="app" password="app"/>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>About - Burgermbira</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Kaushan+Script">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/Product-Details.css">
    <link rel="stylesheet" href="assets/css/Projects-Horizontal.css">
    <link rel="stylesheet" href="assets/css/untitled.css">
</head>

<body class="text-body">
    
    <c:set var="useric" value="<%= session.getAttribute("userId") %>"/>  
    <c:set var="NAME" value="<%= request.getParameter("name")%>"/>  
        <c:set var="EMAIL" value="<%= request.getParameter("email")%>"/>   
        <c:set var="PNUM" value="<%= request.getParameter("pnum")%>"/> 
        <c:set var="FEEDBACK" value="<%= request.getParameter("message")%>"/> 
        
        <c:if test="${(NAME!=null)&&(EMAIL!=null)&&(PNUM!=null)&& (FEEDBACK!=null)}" var="result">
            <sql:update var="result" dataSource="${myDatasource}">
                INSERT INTO APP.FEEDBACK (FB_NAME, FB_EMAIL, FB_PHONE, FB_MESSAGE) 
                VALUES  ('${NAME}','${EMAIL}','${PNUM}','${FEEDBACK}')
            </sql:update>    
        </c:if>
    
    
    
    
    
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
    <header class="masthead" style="background-image: url('assets/img/index/burgerhome.jpg');opacity: 1;filter: blur(0px) brightness(97%);margin-bottom: 0px;margin-top: 0px;background-repeat: space;">
        <div class="about-heading-content" style="margin-top: 148px;padding-top: 163px;margin-bottom: 83px;">
            <div class="row" style="margin-top: -1px;padding-top: 0px;filter: blur(0px);margin-bottom: 0px;">
                <div class="col-lg-10 col-xl-9 mx-auto" style="margin-bottom: 0px;margin-top: 0px;">
                    <div class="bg-faded rounded p-5" style="margin-top: 0px;padding: 48px;padding-top: 48px;background-position: center;margin-bottom: 154px;background-color: #fbd136;filter: blur(0px);">
                        <h2 class="section-heading mb-4"><span class="section-heading-upper" style="color: rgb(0,0,0);">About Us</span></h2>
                        <p style="color: rgb(0,0,0);">Founded in 2022 by the Five member of group of CS2534C, our establishment has been serving up premium burger sourced from artisan farmers in various regions of South and Central America. We are dedicated to serve the the best dish, finding the best meats, and bringing back to you here in our restaurant.</p>
                        <p class="mb-0"></p>
                    </div>
                </div>
            </div>
        </div>
    </header>
                
                <h1 align="center">FOUNDER</h1>
    <section id="team" class="bg-light">
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <div class="team-member"><img class="rounded-circle mx-auto" src="assets/img/team/ayad.jpg">
                        <h4>Muhd Wasim Ayyad</h4>
                        <p class="text-muted">Lead Developer</p>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="team-member"><img class="rounded-circle mx-auto" src="assets/img/team/ayman.jpeg">
                        <h4>Muhammad Ayman</h4>
                        <p class="text-muted">UX developer</p>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="team-member"><img class="rounded-circle mx-auto" src="assets/img/team/khalish.jpeg">
                        <h4>Khalish Haiqal</h4>
                        <p class="text-muted">UI Developer</p>
                    </div>
                </div>
                <div class="col-sm-4" style="padding: 0px;margin-left: 196px;">
                    <div class="team-member"><img class="rounded-circle mx-auto" src="assets/img/team/arif.jpeg">
                        <h4>Muhamad Arif</h4>
                        <p class="text-muted">Database developer</p>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="team-member"><img class="rounded-circle mx-auto" src="assets/img/team/hadi.jpeg">
                        <h4>Abdul Hadi</h4>
                        <p class="text-muted">Documentation</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section id="contact" style="background-image:url('assets/img/team/map-image.png');">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="text-uppercase section-heading">Contact Us</h2>
                    <h3 class="section-subheading text-muted">Give us feedback</h3>
                </div>
            </div>
            
            
            <div class="row">
                <div class="col-lg-12">
                    <form action="about.jsp" method="post">
                        <div class="form-row">
                            <div class="col col-md-6">
                                <div class="form-group"><input class="form-control" type="text" name="name" placeholder="Your Name *" required=""><small class="form-text text-danger flex-grow-1 help-block lead"></small></div>
                                <div class="form-group"><input class="form-control" type="email" name="email" placeholder="Your Email *" required=""><small class="form-text text-danger help-block lead"></small></div>
                                <div class="form-group"><input class="form-control" type="tel" name="pnum" placeholder="Your Phone *" required=""><small class="form-text text-danger help-block lead"></small></div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group"><textarea class="form-control" name="message" placeholder="Your Message *" required=""></textarea><small class="form-text text-danger help-block lead"></small></div>
                            </div>
                            <div class="col">
                                <div class="clearfix"></div>
                            </div>
                            <div class="col-lg-12 text-center">
                                <div id="success"></div><button class="btn btn-primary btn-xl text-uppercase" id="sendMessageButton" type="submit">Send Message</button>
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
