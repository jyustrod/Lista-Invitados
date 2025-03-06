<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="common/header.jsp">
    <jsp:param name="titulo" value="Lista de Invitados" />
</jsp:include>

<div class="card">
    <div class="card-header">
        <h2 class="card-title">
            <i class="fas fa-clipboard-list"></i> Lista de Invitados
        </h2>
        <a href="${pageContext.request.contextPath}/invitados?action=agregar" class="btn btn-primary">
            <i class="fas fa-plus"></i> Agregar Nuevo Invitado
        </a>
    </div>

    <div class="card-body">
        <c:choose>
            <c:when test="${empty invitados}">
                <div class="alert alert-info" role="alert">
                    <i class="fas fa-info-circle"></i> No hay invitados registrados actualmente.
                </div>
                <div style="text-align: center; padding: 2rem;">
                    <i class="fas fa-users" style="font-size: 4rem; color: var(--gray-light); margin-bottom: 1rem;"></i>
                    <p>Comience agregando su primer invitado usando el botón "Agregar Nuevo Invitado".</p>
                </div>
            </c:when>
            <c:otherwise>
                <div class="invitados-list">
                    <c:forEach items="${invitados}" var="invitado">
                        <div class="invitado-item">
                            <div class="invitado-info">
                                <i class="fas fa-user"></i>
                                <span class="invitado-nombre">${invitado.nombre}</span>
                            </div>
                            <div class="invitado-actions">
                                <a href="${pageContext.request.contextPath}/invitados?action=eliminar&id=${invitado.id}"
                                   class="btn btn-sm btn-danger">
                                    <i class="fas fa-trash-alt"></i> Eliminar
                                </a>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </c:otherwise>
        </c:choose>
    </div>
</div>

<style>
    .invitados-list {
        display: flex;
        flex-direction: column;
        gap: 0.75rem;
    }

    .invitado-item {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 1rem;
        background-color: var(--light);
        border-radius: var(--radius);
        transition: var(--transition);
        border-left: 3px solid var(--primary);
    }

    .invitado-item:hover {
        background-color: white;
        box-shadow: var(--shadow);
        transform: translateX(3px);
    }

    .invitado-info {
        display: flex;
        align-items: center;
        gap: 0.75rem;
    }

    .invitado-info i {
        color: var(--primary);
        font-size: 1.25rem;
    }

    .invitado-nombre {
        font-weight: 500;
        font-size: 1.1rem;
    }

    .invitado-actions {
        display: flex;
        gap: 0.5rem;
    }
</style>

<jsp:include page="common/footer.jsp" />

