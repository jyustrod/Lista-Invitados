<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="aplicacion.service.InvitadoService" %>
<%@ page import="aplicacion.model.Invitado" %>
<%@ page import="java.util.List" %>
<%
    List<Invitado> invitados = InvitadoService.getInvitados();
%>
<html>
<head>
    <title>Eliminar Invitado</title>
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
    <h1>Eliminar Invitado</h1>
    <form action="eliminar.jsp" method="get">
        <label for="buscarId">Buscar por ID:</label>
        <input type="text" id="buscarId" name="id">
        <button type="submit">Buscar</button>
    </form>
    <h2>Lista de Invitados</h2>
    <ul>
        <% for (Invitado invitado : invitados) { %>
            <li>
                <%= invitado.getId() %> - <%= invitado.getNombre() %>
                <form action="invitados" method="post" style="display:inline;">
                    <input type="hidden" name="action" value="eliminar">
                    <input type="hidden" name="id" value="<%= invitado.getId() %>">
                    <button type="submit">Eliminar</button>
                </form>
            </li>
        <% } %>
    </ul>
</body>
</html>