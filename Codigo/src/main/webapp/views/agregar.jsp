<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="common/header.jsp">
    <jsp:param name="titulo" value="Agregar Invitado" />
</jsp:include>

<div class="card">
    <div class="card-header">
        <h2 class="card-title">
            <i class="fas fa-user-plus"></i> Agregar Nuevo Invitado
        </h2>
    </div>

    <div class="card-body">
        <form action="${pageContext.request.contextPath}/invitados" method="post" id="formAgregar" class="needs-validation">
            <input type="hidden" name="action" value="agregar">

            <div class="form-group">
                <label for="nombre" class="form-label">Nombre del Invitado</label>
                <div class="input-group">
                    <span class="input-icon">
                        <i class="fas fa-user"></i>
                    </span>
                    <input type="text" id="nombre" name="nombre" class="form-control"
                           placeholder="Ingrese el nombre completo" required>
                </div>
                <div class="invalid-feedback">
                    Por favor ingrese un nombre válido.
                </div>
                <small class="form-text">Ingrese el nombre completo del invitado que desea registrar.</small>
            </div>

            <div class="form-actions">
                <button type="submit" class="btn btn-primary">
                    <i class="fas fa-save"></i> Guardar Invitado
                </button>
                <a href="${pageContext.request.contextPath}/invitados" class="btn btn-outline">
                    <i class="fas fa-arrow-left"></i> Volver a la Lista
                </a>
            </div>
        </form>
    </div>
</div>

<style>
    .form-actions {
        display: flex;
        gap: 1rem;
        margin-top: 2rem;
    }

    .input-group {
        position: relative;
    }

    .input-icon {
        position: absolute;
        left: 1rem;
        top: 50%;
        transform: translateY(-50%);
        color: var(--gray);
        z-index: 10;
    }

    .input-group .form-control {
        padding-left: 2.5rem;
    }

    .form-text {
        display: block;
        margin-top: 0.5rem;
        font-size: 0.875rem;
        color: var(--gray);
    }

    .invalid-feedback {
        display: none;
        color: var(--danger);
        font-size: 0.875rem;
        margin-top: 0.25rem;
    }

    .form-control.is-invalid {
        border-color: var(--danger);
    }

    .form-control.is-invalid + .invalid-feedback {
        display: block;
    }
</style>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        const form = document.getElementById('formAgregar');
        const nombreInput = document.getElementById('nombre');

        form.addEventListener('submit', function(event) {
            let isValid = true;

            // Validar nombre
            if (nombreInput.value.trim() === '') {
                nombreInput.classList.add('is-invalid');
                isValid = false;
            } else {
                nombreInput.classList.remove('is-invalid');
            }

            if (!isValid) {
                event.preventDefault();
            }
        });

        // Validación en tiempo real
        nombreInput.addEventListener('input', function() {
            if (this.value.trim() !== '') {
                this.classList.remove('is-invalid');
            }
        });
    });
</script>

<jsp:include page="common/footer.jsp" />
