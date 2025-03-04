package aplicacion.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import aplicacion.model.Invitado;

public class InvitadoDAO {
    private Connection getConnection() throws SQLException {
        return DriverManager.getConnection("jdbc:mysql://localhost:3306/gestion_invitados", "usuario", "contraseña");
    }

    public List<Invitado> getInvitados() throws SQLException {
        List<Invitado> lista = new ArrayList<>();
        try (Connection conn = getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT * FROM invitados")) {
            while (rs.next()) {
                lista.add(new Invitado(rs.getInt("id"), rs.getString("nombre")));
            }
        }
        return lista;
    }
}
