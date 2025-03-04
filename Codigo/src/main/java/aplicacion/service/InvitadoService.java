package aplicacion.service;

import aplicacion.dao.InvitadoDAO;
import aplicacion.model.Invitado;
import java.sql.SQLException;
import java.util.List;

public class InvitadoService {
    private static final InvitadoDAO invitadoDAO = new InvitadoDAO();

    public static List<Invitado> getInvitados() throws SQLException {
        return invitadoDAO.getInvitados();
    }

    public static void agregarInvitado(String nombre) throws SQLException {
        invitadoDAO.agregarInvitado(nombre);
    }

    public static void eliminarInvitado(int id) throws SQLException {
        invitadoDAO.eliminarInvitado(id);
    }
}