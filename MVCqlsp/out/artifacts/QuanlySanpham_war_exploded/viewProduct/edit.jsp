<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 6/26/2019
  Time: 1:34 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Update new Product</h1>
<p>
    <a href="/products">Comback list</a>
</p>
<p>
   <c:if test='${requestScope["message"]!=null}'>
       <span class="message">${requestScope["message"]}</span>
   </c:if>
</p>
<form method="post">
    <fieldset>
        <legend>Product infomation</legend>
        <table>
            <tr>
                <td>name: </td>
                <td><input type="text" name="name" id="name" value="${requestScope["product"].getName()}"></td>
            </tr>
            <tr>
                <td>price: </td>
                <td><input type="text" name="price" id="price" value="${requestScope["product"].getPrice()}"></td>
            </tr>
            <tr>
                <td>Description: </td>
                <td><input type="text" name="description" id="description" value="${requestScope["product"].getDescription()}"></td>
            </tr>
            <tr>
                <td>Producer: </td>
                <td><input type="text" name="producer" id="producer" value="${requestScope["product"].getProducer()}"></td>
            </tr>
            <tr>
                <td><input type="submit" value="Update"></td>
            </tr>
        </table>
    </fieldset>

</form>
</body>
</html>
