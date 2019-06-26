<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 6/25/2019
  Time: 11:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Create new product</h1>
<p>
    <c:if test='${requestScope["message"]!=null}'>
        <span>${requestScope["message"]}</span>
    </c:if>
</p>
<h2><a href="/products">Comback list</a></h2>
<form method="post">
    <fieldset>
        <legend>Product infomation</legend>
        <table>
            <tr>
                <td>Name: </td>
                <td><input type="text" name="name" id="name"></td>
            </tr>
            <tr>
                <td>Price: </td>
                <td><input type="text" name="price" id="price"></td>
            </tr>
            <tr>
                <td>Description: </td>
                <td><input type="text" name="description" id="description"></td>
            </tr>
            <tr>
                <td>producer: </td>
                <td><input type="text" name="producer" id="producer"></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Create product"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
