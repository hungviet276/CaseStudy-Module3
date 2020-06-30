<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 25/06/2020
  Time: 09:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>banner</title>
</head>
<body>
<section class="pt-5 pb-5 mt-0 align-items-center d-flex bg-dark"
         style="height:100vh; background-size: cover; background-image: url(https://images.unsplash.com/photo-1525130413817-d45c1d127c42?ixlib=rb-0.3.5&s=c3d0603820b595592d80f5a239938c67&auto=format&fit=crop&w=1500&q=80);">

    <div class="container-fluid">
        <div class="row  justify-content-center align-items-center d-flex text-center h-100">
            <div class="col-12 col-md-8  h-50 ">
                <h1 class="display-2  text-light mb-2 mt-5"><strong>Bông Boutique</strong></h1>
                <p class="lead  text-light mb-5">Be comfortable, Be inspired, Be right at home</p>
                <p><a class="btn bg-danger shadow-lg btn-round text-light btn-lg btn-rised"
                      href="${pageContext.request.contextPath}/products?action=display">Shopping Now</a></p>

                <div class="btn-container-wrapper p-relative d-block  zindex-1">
                    <a class="btn btn-link btn-lg   mt-md-3 mb-4 scroll align-self-center text-light"
                       href="http://google.com">
                        <i class="fa fa-angle-down fa-4x text-light"></i>
                    </a>
                </div>
            </div>

        </div>
    </div>
</section>


<div class="container" style="padding-top: 20px">
    <div class="carousel slide border" data-ride="carousel" id="myCarousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li class="active" data-slide-to="0" data-target="#myCarousel"></li>
            <li data-slide-to="1" data-target="#myCarousel"></li>
            <li data-slide-to="2" data-target="#myCarousel"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img alt="Leopard" class="d-block w-100" src="view/img/background/banner1.png" width="100%">
                <div class="carousel-caption">
                    <a href="#">Learn more ></a>
                </div>
            </div>
            <div class="carousel-item">
                <img alt="Cat" class="d-block w-100" src="view/img/background/banner2.jpg" width="100%">
                <div class="carousel-caption">
                    <a href="#">Learn more ></a>
                </div>
            </div>

            <div class="carousel-item">
                <img alt="Lion" class="d-block w-100" src="view/img/background/banner3.jpg" width="100%">
                <div class="carousel-caption">
                    <a href="#">Learn more ></a>
                </div>
            </div>
        </div>
        <!-- Controls -->
        <a class="carousel-control-prev" data-slide="prev" href="#myCarousel" role="button">
            <span aria-hidden="true" class="carousel-control-prev-icon"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" data-slide="next" href="#myCarousel" role="button">
            <span aria-hidden="true" class="carousel-control-next-icon"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>
</body>
</html>
