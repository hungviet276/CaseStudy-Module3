<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 25/06/2020
  Time: 05:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manager Product</title>
    <c:import url="head.jsp"/>
</head>
<body>
<c:import url="header.jsp"/>
<div class="container">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">


        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Danh Mục Sản Phẩm
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">Áo Nữ</a>
                        <a class="dropdown-item" href="#">Váy Nữ</a>
                        <a class="dropdown-item" href="#">Quần Nữ</a>
                        <a class="dropdown-item" href="#">Tất Cả Sản Phẩm</a>

                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/products?action=create">Thêm sản phẩm mới</a>
                </li>

            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </nav>
</div>

<div class="container">
    <div class="row">
        <c:forEach var="product" items="${listProduct}">
        <div class="col-lg-3 col-md-6 col-sm-12 hover13" style="padding-top: 20px">
            <div class="card" style="width: auto;">
                <img alt="Card image cap" class="card-img-top" src="${product.pathImage}">
                <div class="card-body">
                    <h5 class="card-title">${product.name}</h5>
                    <p class="card-text">${product.price}</p>
                    <a class="btn btn-outline-danger btn-rounded waves-effect" href="${pageContext.request.contextPath}/products?action=edit" style="width: 90px">Edit</a>
                    <a class="btn btn-outline-danger btn-rounded waves-effect" href="${pageContext.request.contextPath}/products?action=delete" style="width: 90px">Delete</a>
                </div>
            </div>
        </div>
        </c:forEach>
    </div>
</div>
<c:import url="footer.jsp"/>

</body>
</html>
