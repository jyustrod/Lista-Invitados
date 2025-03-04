package aplicacion.controller;

import aplicacion.service.InvitadoService;
import aplicacion.model.Invitado;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/invitados")
public class InvitadoController extends HttpServlet {

    private final InvitadoService invitadoService = new InvitadoService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Obtener la lista de invitados
            List<Invitado> invitados = invitadoService.getInvitados();
            request.setAttribute("invitados", invitados);

            // Redirigir a la vista lista.jsp
            request.getRequestDispatcher("/views/lista.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error al obtener la lista de invitados");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        try {
            if ("agregar".equals(action)) {
                // Agregar un nuevo invitado
                String nombre = request.getParameter("nombre");
                invitadoService.agregarInvitado(nombre);
            } else if ("eliminar".equals(action)) {
                // Eliminar un invitado
                int id = Integer.parseInt(request.getParameter("id"));
                invitadoService.eliminarInvitado(id);
            }

            // Redirigir a la lista de invitados después de la acción
            response.sendRedirect(request.getContextPath() + "/invitados");
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error al procesar la solicitud");
        } catch (NumberFormatException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "ID de invitado no válido");
        }
    }
}