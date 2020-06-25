<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 25/06/2020
  Time: 09:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Product</title>
    <c:import url="head.jsp"/>
</head>
<body>
<c:import url="header.jsp"/>
<form class="form-horizontal">
    <fieldset>

        <!-- Form Name -->
        <legend>PRODUCTS</legend>

        <!-- Text input-->
        <div class="form-group ">
            <label class="col-md-4 control-label" for="product_id">PRODUCT ID</label>
            <div class="col-md-4">
                <input id="product_id" name="product_id" placeholder="PRODUCT ID" class="form-control input-md" required="" type="text">

            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="product_name">PRODUCT NAME</label>
            <div class="col-md-4">
                <input id="product_name" name="product_name" placeholder="PRODUCT NAME" class="form-control input-md" required="" type="text">

            </div>
        </div>

        <!-- Select Basic -->
        <div class="form-group">
            <label class="col-md-4 control-label" for="product_categorie">PRODUCT CATEGORY</label>
            <div class="col-md-4">
                <select id="product_categorie" name="product_categorie" class="form-control">
                    <option value="volvo">dress</option>
                    <option value="saab">shirt</option>
                    <option value="opel">trousers</option>
                </select>
            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="product_quantity">AVAILABLE QUANTITY</label>
            <div class="col-md-4">
                <input id="product_quantity" name="product_quantity" placeholder="AVAILABLE QUANTITY" class="form-control input-md" required="" type="text">

            </div>
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label" for="product_img">PATH IMAGE</label>
            <div class="col-md-4">
                <input id="product_img" name="product_img" placeholder="IMAGE" class="form-control input-md" required="" type="text">

            </div>
        </div>



        <!-- Button -->
        <div class="form-group">
            <label class="col-md-4 control-label" for="accept"></label>
            <div class="col-md-4">
                <button id="accept" name="accept" class="btn btn-primary">Accept</button>
            </div>
        </div>
        </div>
        </div>
    </fieldset>

</form>
<c:import url="footer.jsp"/>
</body>
</html>
