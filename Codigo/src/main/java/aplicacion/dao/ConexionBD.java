package aplicacion.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionBD {
    private static final String URL = "jdbc:sqlserver://gestioninvitados.database.windows.net:1433;database=InvitadosBD00;" +
            "user=UnaxDespierta@gestioninvitados;password={your_password_here};encrypt=true;" +
            "trustServerCertificate=false;hostNameInCertificate=*.database.windows.net;loginTimeout=30;";
    private static final String USUARIO = "UnaxDespierta";
    private static final String CONTRASEÑA = "mmFySMi5oHx2wG$Sz!$8^&Bg2";

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USUARIO, CONTRASEÑA);
    }
}
