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
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet("/invitados")
public class InvitadoController extends HttpServlet {

    private final InvitadoService invitadoService = new InvitadoService();
    private static final Logger LOGGER = Logger.getLogger(InvitadoController.class.getName());

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        try {
            if ("agregar".equals(action)) {
                request.getRequestDispatcher("/webApp/views/agregar.jsp").forward(request, response);
            } else if ("eliminar".equals(action)) {
                request.getRequestDispatcher("/webApp/views/eliminar.jsp").forward(request, response);
            } else {
                List<Invitado> invitados = invitadoService.getInvitados();
                request.setAttribute("invitados", invitados);
                request.getRequestDispatcher("/webApp/views/lista.jsp").forward(request, response);
            }
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error al obtener datos", e);
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error al obtener datos");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        try {
            if ("agregar".equals(action)) {
                String nombre = request.getParameter("nombre");
                if (nombre == null || nombre.trim().isEmpty()) {
                    response.sendError(HttpServletResponse.SC_BAD_REQUEST, "El nombre no puede estar vacío");
                    return;
                }
                invitadoService.agregarInvitado(nombre);
            } else if ("eliminar".equals(action)) {
                int id = Integer.parseInt(request.getParameter("id"));
                invitadoService.eliminarInvitado(id);
            }
            response.sendRedirect(request.getContextPath() + "/invitados");
        } catch (SQLException e) {
            LOGGER.log(Level.SEVERE, "Error en la operación", e);
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error en la operación");
        } catch (NumberFormatException e) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "ID inválido");
        }
    }
}
