<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Lista de Invitados</title>
</head>
<body>
<h2>Lista de Invitados</h2>
<a href="${pageContext.request.contextPath}/invitados?action=agregar">Agregar Nuevo</a>

<c:choose>
    <c:when test="${empty invitados}">
        <p>No hay invitados registrados.</p>
    </c:when>
    <c:otherwise>
        <ul>
            <c:forEach items="${invitados}" var="invitado">
                <li>
                        ${invitado.nombre}
                    <a href="${pageContext.request.contextPath}/invitados?action=eliminar&id=${invitado.id}">Eliminar</a>
                </li>
            </c:forEach>
        </ul>
    </c:otherwise>
</c:choose>

</body>
</html>
