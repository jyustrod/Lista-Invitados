<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="aplicacion.service.InvitadoService" %>
<%
    String nombre = request.getParameter("nombre");
    if (nombre != null) {
        InvitadoService.agregarInvitado(nombre);
    }
    response.sendRedirect("lista.jsp");
%>
<html>
<head>
    <title>Agregar Invitado</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>
    <nav>
        <ul>
            <li><a href="agregar.jsp">Agregar</a></li>
            <li><a href="eliminar.jsp">Eliminar</a></li>
            <li><a href="lista.jsp">Lista</a></li>
        </ul>
    </nav>
    <h1>Agregar Invitado</h1>
    <form action="invitados" method="post">
        <input type="hidden" name="action" value="agregar">
        <label for="nombre">Nombre:</label>
        <input type="text" id="nombre" name="nombre" required>
        <button type="submit">Agregar</button>
    </form>
</body>
</html>