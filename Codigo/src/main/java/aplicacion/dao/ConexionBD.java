package aplicacion.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionBD {

    // Define la URL de conexión a tu base de datos
    private static final String DB_URL = "jdbc:mysql://<tu-servidor>.database.windows.net:3306/tu_base";

    /**
     * Establece la conexión a la base de datos usando las credenciales de Key Vault.
     *
     * @return Objeto Connection.
     * @throws SQLException si falla la conexión.
     */
    public static Connection getConnection() throws SQLException {
        // Obtiene las credenciales de Key Vault
        String dbUser = KeyVault.getSecret("DB_USER");
        String dbPassword = KeyVault.getSecret("DB_PASSWORD");

        // Crea y devuelve la conexión
        return DriverManager.getConnection(DB_URL, dbUser, dbPassword);
    }
}
