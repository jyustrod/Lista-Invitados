<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Agregar Invitado</title>
    <script>
        function validarFormulario() {
            let nombre = document.getElementById("nombre").value.trim();
            if (nombre === "") {
                alert("El nombre no puede estar vacío.");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
<h2>Agregar Nuevo Invitado</h2>
<form action="${pageContext.request.contextPath}/invitados" method="post" onsubmit="return validarFormulario()">
    <input type="hidden" name="action" value="agregar">
    Nombre: <input type="text" id="nombre" name="nombre" required>
    <button type="submit">Agregar</button>
</form>
<a href="${pageContext.request.contextPath}/invitados">Volver a la lista</a>
</body>
</html>
