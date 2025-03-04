<%--
  Created by IntelliJ IDEA.
  User: pablo
  Date: 03/03/2025
  Time: 18:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="aplicacion.model.Invitado" %>
<html>
<head>
    <title>Lista de Invitados</title>
</head>
<body>
<h2>Lista de Invitados</h2>
<ul>
    <% List<Invitado> invitados = (List<Invitado>) request.getAttribute("invitados");
        for (Invitado inv : invitados) { %>
    <li><%= inv.getNombre() %>
        <form action="${pageContext.request.contextPath}/invitados" method="post" style="display:inline;">
            <input type="hidden" name="action" value="eliminar" />
            <input type="hidden" name="id" value="<%= inv.getId() %>" />
            <button type="submit">Eliminar</button>
        </form>
    </li>
    <% } %>
</ul>
<form action="${pageContext.request.contextPath}/invitados" method="post">
    <input type="hidden" name="action" value="agregar" />
    <input type="text" name="nombre" required />
    <button type="submit">Añadir Invitado</button>
</form>
</body>
</html>