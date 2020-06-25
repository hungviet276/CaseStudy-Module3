<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 24/06/2020
  Time: 09:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>header</title>
</head>
<body>
<header class="container-fluid ">
    <nav class="navbar navbar-expand-md bg-white navbar-white fixed-top">
        <a class="nav-link navbar-brand" href="#"><img height="50" src="view/img/background/logo.png" width="145"/></a>
        <button class="navbar-toggler" data-target="#collapsibleNavbar" data-toggle="collapse" type="button">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#"><span class="text-dark">Trang chủ</span></a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" id="navbardropComputer">
                        <span class="text-dark">Giới Thiệu</span>
                    </a>

                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">Tổng quan về Shop</a>
                        <a class="dropdown-item" href="#">Lịch sử hình thành</a>
                        <a class="dropdown-item" href="#">Tầm nhìn sứ mệnh</a>
                        <a class="dropdown-item" href="#">Câu chuyện thương hiệu</a>

                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" id="navbardropAccessories">
                        <span class="text-dark">Sản Phẩm</span>
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">Áo Nữ</a>
                        <a class="dropdown-item" href="#">Váy Nữ</a>
                        <a class="dropdown-item" href="#">Quần Nữ</a>
                        <a class="dropdown-item" href="#">Sản phẩm Sale</a>

                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><span class="text-dark">Hệ Thống Cửa Hàng</span></a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" id="navbardropShop">
                        <span class="text-dark">Liên Hệ</span>
                    </a>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="#">Surface Deals</a>
                        <a class="dropdown-item" href="#">Surface Bundles</a>
                        <a class="dropdown-item" href="#">All Surface Device</a>
                        <a class="dropdown-item" href="#">Where to buy</a>
                    </div>
                </li>

            </ul>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#"><img height="20" src="view/img/background/iconSearch.png" width="20"/></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><img height="20" src="view/img/background/shopping-cart.png" width="20"/></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><img height="20" src="view/img/background/login.png" width="20"/></a>
                </li>
            </ul>
        </div>
    </nav>

</header>
</body>
</html>
