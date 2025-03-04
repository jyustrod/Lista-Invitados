<%--
  Created by IntelliJ IDEA.
  User: pablo
  Date: 03/03/2025
  Time: 18:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.List" %>
<%@ page import="aplicacion.model.Invitado" %>
<html>
<head>
    <title>Lista de Invitados</title>
</head>
<body>
<h2>Lista de Invitados</h2>
<ul>
    <% List<Invitado> invitados = Servicio.getInvitados();
        for (Invitado inv : invitados) { %>
    <li><%= inv.getNombre() %>
        <a href="eliminar.jsp?id=<%= inv.getId() %>">Eliminar</a>
    </li>
    <% } %>
</ul>
<form action="agregar.jsp" method="post">
    <input type="text" name="nombre" required />
    <button type="submit">Añadir Invitado</button>
</form>
</body>
</html>