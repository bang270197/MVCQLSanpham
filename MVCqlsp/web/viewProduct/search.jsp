<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 6/26/2019
  Time: 3:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<p><a href="/products">Com back list</a></p>
<form >
    <fieldset>
        <legend>Search</legend>
        <table border="1px">
            <tr>
                <td>Name</td>
                <td>Price</td>
                <td>Description</td>
                <td>Producer</td>
            </tr>
            <tr>
                <td>${requestScope["product"].getName()}</td>
                <td>${requestScope["product"].getPrice()}</td>
                <td>${requestScope["product"].getDescription()}</td>
                <td>${requestScope["product"].getProducer()}</td>
            </tr>

        </table>
    </fieldset>
</form>

</body>
</html>
