<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Eliminar Invitado</title>
</head>
<body>
<h2>Confirmar Eliminación</h2>

<% if (request.getParameter("id") == null || request.getParameter("id").trim().isEmpty()) { %>
<p>Error: No se proporcionó un ID válido.</p>
<a href="${pageContext.request.contextPath}/invitados">Volver a la lista</a>
<% } else { %>
<form action="${pageContext.request.contextPath}/invitados" method="post">
    <input type="hidden" name="action" value="eliminar">
    <input type="hidden" name="id" value="${param.id}">
    ¿Está seguro de eliminar este invitado?
    <button type="submit">Sí, eliminar</button>
</form>
<a href="${pageContext.request.contextPath}/invitados">Cancelar</a>
<% } %>

</body>
</html>
