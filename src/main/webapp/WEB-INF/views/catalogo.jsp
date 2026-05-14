<%--
  Created by IntelliJ IDEA.
  User: Camilo
  Date: 14/05/2026
  Time: 12:32 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Catálogo de Productos</title>
</head>
<body>
<h1>Catálogo de Productos</h1>

<form method="get" action="catalogo">
    <input type="text" name="q" placeholder="Buscar..." value="${busqueda}">
    <select name="cat">
        <option value="">Todas las categorías</option>
        <c:forEach var="c" items="${categorias}">
            <option value="${c}" ${c == catActual ? 'selected' : ''}>${c}</option>
        </c:forEach>
    </select>
    <button type="submit">Filtrar</button>
</form>

<table border="1">
    <tr>
        <th>Nombre</th>
        <th>Categoría</th>
        <th>Precio</th>
        <th>Stock</th>
        <th>Acción</th>
    </tr>
    <c:forEach var="p" items="${productos}">
        <tr>
            <td>${p.nombre}</td>
            <td>${p.categoria}</td>
            <td>${p.precio}</td>
            <td>${p.stock}</td>
            <td>
                <form method="post" action="carrito">
                    <input type="hidden" name="accion" value="agregar">
                    <input type="hidden" name="idProducto" value="${p.id}">
                    <button type="submit">Agregar al carrito</button>
                </form>
            </td>
        </tr>
    </c:forEach>
</table>

<a href="carrito">Ver carrito</a>
</body>
</html>
