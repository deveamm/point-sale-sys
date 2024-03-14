<%-- 
    Document   : index
    Created on : 15-03-2023
    Author     : Deveamm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Product</title>
    </head>
    <body>
        <h1>New Register</h1>

        <form action="ProductosController?accion=insertar" method="POST" autocomplete="off">
            <p>
                Code: <input type="text" id="codigo" name="codigo" required autofocus="true" />
            </p>

            <p>
                Name: <input type="text" id="nombre" name="nombre" required />
            </p>

            <p>
                Price: <input type="text" id="precio" name="precio" required />
            </p>

            <p>
                Exist <input type="text" id="existencia" name="existencia" required />
            </p>

            <button id="guardar" name="guardar" type="submit">Save</button>
        </form>
    </body>
</html>
