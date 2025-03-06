<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="common/header.jsp">
    <jsp:param name="titulo" value="Eliminar Invitado" />
</jsp:include>

<% if (request.getParameter("id") == null || request.getParameter("id").trim().isEmpty()) { %>
<div class="alert alert-danger">
    <i class="fas fa-exclamation-triangle"></i> Error: No se proporcionó un ID válido para eliminar.
</div>

<div class="card">
    <div class="card-body" style="text-align: center; padding: 2rem;">
        <i class="fas fa-times-circle" style="font-size: 4rem; color: var(--danger); margin-bottom: 1.5rem;"></i>
        <h3>No se puede procesar la solicitud</h3>
        <p>No se ha proporcionado un identificador válido para el invitado que desea eliminar.</p>
        <a href="${pageContext.request.contextPath}/invitados" class="btn btn-primary" style="margin-top: 1rem;">
            <i class="fas fa-arrow-left"></i> Volver a la Lista de Invitados
        </a>
    </div>
</div>
<% } else { %>
<div class="card">
    <div class="card-header">
        <h2 class="card-title">
            <i class="fas fa-user-minus"></i> Confirmar Eliminación
        </h2>
    </div>

    <div class="card-body">
        <div class="confirmation-container">
            <div class="confirmation-icon">
                <i class="fas fa-trash-alt"></i>
            </div>

            <div class="confirmation-message">
                <h3>¿Está seguro de eliminar este invitado?</h3>
                <p>Esta acción no se puede deshacer. El invitado será eliminado permanentemente del sistema.</p>
            </div>

            <div class="confirmation-actions">
                <form action="${pageContext.request.contextPath}/invitados" method="post">
                    <input type="hidden" name="action" value="eliminar">
                    <input type="hidden" name="id" value="${param.id}">

                    <button type="submit" class="btn btn-danger">
                        <i class="fas fa-check"></i> Sí, Eliminar Invitado
                    </button>

                    <a href="${pageContext.request.contextPath}/invitados" class="btn btn-outline">
                        <i class="fas fa-times"></i> Cancelar
                    </a>
                </form>
            </div>
        </div>
    </div>
</div>
<% } %>

<style>
    .confirmation-container {
        display: flex;
        flex-direction: column;
        align-items: center;
        text-align: center;
        padding: 1.5rem;
    }

    .confirmation-icon {
        font-size: 4rem;
        color: var(--danger);
        margin-bottom: 1.5rem;
        animation: pulse 2s infinite;
    }

    @keyframes pulse {
        0% {
            transform: scale(1);
            opacity: 1;
        }
        50% {
            transform: scale(1.1);
            opacity: 0.8;
        }
        100% {
            transform: scale(1);
            opacity: 1;
        }
    }

    .confirmation-message {
        margin-bottom: 2rem;
    }

    .confirmation-message h3 {
        font-size: 1.5rem;
        font-weight: 600;
        margin-bottom: 0.75rem;
        color: var(--danger);
    }

    .confirmation-message p {
        color: var(--gray);
        max-width: 500px;
        margin: 0 auto;
    }

    .confirmation-actions {
        display: flex;
        gap: 1rem;
        justify-content: center;
    }

    .confirmation-actions form {
        display: flex;
        gap: 1rem;
    }
</style>

<jsp:include page="common/footer.jsp" />

