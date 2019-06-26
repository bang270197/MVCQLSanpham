<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 6/26/2019
  Time: 3:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>View Product</h1>
<p><a href="/products">Comback List</a></p>
<form >
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td>Name :</td>
                <td><input type="text" value="${requestScope["product"].getName()}"></td>
            </tr>
            <tr>
                <td>Price :</td>
                <td><input type="text" value="${requestScope["product"].getPrice()}"></td>
            </tr>
            <tr>
                <td>Description :</td>
                <td><input type="text" value="${requestScope["product"].getDescription()}"></td>
            </tr>
            <tr>
                <td>Producer :</td>
                <td><input type="text" value="${requestScope["product"].getProducer()}"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
