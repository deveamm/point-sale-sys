<%-- 
    Document   : index
    Created on : 15-03-2023
    Author     : Deveamm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Products</title>
    </head>
    <body>
        <h1>Productos</h1>

        <p><a href="ProductosController?accion=nuevo">New Register</a></p>

        <table border="1" width="80%">
            <thead>
            <th>Code</th>
            <th>Name</th>
            <th>Price</th>
            <th>Exist</th>
            <th></th>
            <th></th>
        </thead>

        <tbody>
            <c:forEach var="producto" items="${lista}">
                <tr>
                    <td><c:out value="${producto.codigo}" /></td>
                    <td><c:out value="${producto.nombre}" /></td>
                    <td><c:out value="${producto.precio}" /></td>
                    <td><c:out value="${producto.existencia}" /></td>
                    <td><a href="ProductosController?accion=modificar&id=<c:out value="${producto.id}" />">Modify</a></td>
                    <td><a href="ProductosController?accion=eliminar&id=<c:out value="${producto.id}" />">Delete</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
