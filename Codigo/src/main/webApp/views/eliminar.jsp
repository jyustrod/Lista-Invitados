<%--
  Created by IntelliJ IDEA.
  User: pablo
  Date: 03/03/2025
  Time: 18:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="aplicacion.service.InvitadoService" %>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    Servicio.eliminarInvitado(id);
    response.sendRedirect("lista.jsp");
%>
<html>
<head>
    <title>Eliminar Invitado</title>
</head>
<body>
</body>
</html>