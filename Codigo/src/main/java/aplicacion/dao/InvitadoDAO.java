package aplicacion.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import aplicacion.model.Invitado;

public class InvitadoDAO {
    public List<Invitado> getInvitados() throws SQLException {
        List<Invitado> lista = new ArrayList<>();
        String sql = "SELECT * FROM invitados";

        try (Connection conn = ConexionBD.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                lista.add(new Invitado(rs.getInt("id"), rs.getString("nombre")));
            }
        }
        return lista;
    }

    public void agregarInvitado(String nombre) throws SQLException {
        String sql = "INSERT INTO invitados (nombre) VALUES (?)";

        try (Connection conn = ConexionBD.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, nombre);
            stmt.executeUpdate();
        }
    }

    public void eliminarInvitado(int id) throws SQLException {
        String sql = "DELETE FROM invitados WHERE id = ?";

        try (Connection conn = ConexionBD.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, id);
            stmt.executeUpdate();
        }
    }
}
