<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 6/25/2019
  Time: 9:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Product</h1>
<p>
    <a href="/products?action=create">Create new Product</a>
</p>
<form method="post" action="/products?action=search">
    <fieldset>
        <legend>Search</legend>
        <table>
            <tr>
                <td>Tim kiem</td>
                <td><input type="text" name="searchname" id="searchname" placeholder="Nhap ten can tim kiem"></td>
               <td><input type="submit" value="Search"></td>
            </tr>
        </table>
    </fieldset>
</form>
<table border="1px">
    <tr>
        <td>Name</td>
        <td>Price</td>
        <td>Description</td>
        <td>Producer</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items='${requestScope["products"]}' var="product">
        <tr>
            <td><a href="/products?action=view&id=${product.getId()}">${product.getName()}</a></td>
            <td>${product.getPrice()}</td>
            <td>${product.getDescription()}</td>
            <td>${product.getProducer()}</td>
            <td><a href="/products?action=edit&id=${product.getId()}">edit</a></td>
            <td><a href="/products?action=delete&id=${product.getId()}">delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
