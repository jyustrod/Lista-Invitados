package aplicacion.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionBD {

    public static Connection getConnection() throws SQLException {
        String URL = System.getenv("DB_URL");
        String USUARIO = System.getenv("DB_USER");
        String CONTRASEÑA = System.getenv("DB_PSW");
        return DriverManager.getConnection(URL, USUARIO, CONTRASEÑA);
    }
}