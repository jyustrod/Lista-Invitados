package aplicacion.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionBD {
    private static final String URL = "jdbc:sqlserver://gestioninvitados.database.windows.net:1433;"
            + "databaseName=InvitadosBD00;encrypt=true;trustServerCertificate=false;loginTimeout=30;";
    private static final String USUARIO = "UnaxDespierta";
    private static final String CONTRASEÑA = "mmFySMi5oHx2wG$Sz!$8^&Bg2";

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USUARIO, CONTRASEÑA);
    }
}
