<%--
  Created by IntelliJ IDEA.
  User: Camilo
  Date: 14/05/2026
  Time: 12:34 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>Carrito de Compras</title>
</head>
<body>
<h1>Carrito de Compras</h1>

<c:choose>
  <c:when test="${empty items}">
    <p>El carrito está vacío.</p>
  </c:when>
  <c:otherwise>
    <table border="1">
      <tr>
        <th>Producto</th>
        <th>Cantidad</th>
        <th>Precio Unitario</th>
        <th>Subtotal</th>
      </tr>
      <c:forEach var="item" items="${items}">
        <tr>
          <td>${item.producto.nombre}</td>
          <td>${item.cantidad}</td>
          <td>${item.producto.precio}</td>
          <td>${item.subtotal}</td>
        </tr>
      </c:forEach>
    </table>

    <form method="post" action="carrito">
      <input type="hidden" name="accion" value="limpiar">
      <button type="submit">Limpiar carrito</button>
    </form>
  </c:otherwise>
</c:choose>

<a href="catalogo">Volver al catálogo</a>
</body>
</html>
