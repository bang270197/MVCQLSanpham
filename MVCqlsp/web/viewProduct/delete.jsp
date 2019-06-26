<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 6/26/2019
  Time: 3:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Remove Product</h1>
<p>
    <c:if test='${requestScope["message"]!=null}'>
       <h1 style="color: crimson"><span >${requestScope["message"]}</span></h1>
    </c:if>
</p>
<p>
    <a href="/products">Comback list</a>
</p>
<form method="post">
    <fieldset>
        <legend>Detele Form</legend>
        <table>
            <tr>
                <td>Name: </td>
                <td><input type="text" value="${requestScope["product"].getName()}"></td>
            </tr>
            <tr>
                <td>Price: </td>
                <td><input type="text" value="${requestScope["product"].getPrice()}"></td>
            </tr>
            <tr>
                <td>Description: </td>
                <td><input type="text" value="${requestScope["product"].getDescription()}"></td>
            </tr>
            <tr>
                <td>Producer: </td>
                <td><input type="text" value="${requestScope["product"].getProducer()}"></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Delete"></td>
            </tr>
        </table>
    </fieldset>
</form>

</body>
</html>
