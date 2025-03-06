package aplicacion.dao;

import com.azure.identity.DefaultAzureCredential;
import com.azure.identity.DefaultAzureCredentialBuilder;
import com.azure.security.keyvault.secrets.SecretClient;
import com.azure.security.keyvault.secrets.SecretClientBuilder;
import com.azure.security.keyvault.secrets.models.KeyVaultSecret;

public class KeyVault {

    // Reemplaza <tu-keyvault> por el nombre de tu Key Vault
    private static final String KEY_VAULT_URL = "https://invitados.vault.azure.net/secrets/UnaxDespierta/834a191e3b9c46d59f70bd3b6cc290f2";

    // Inicializamos el cliente con Managed Identity
    private static final SecretClient secretClient = new SecretClientBuilder()
            .vaultUrl(KEY_VAULT_URL)
            .credential(new DefaultAzureCredentialBuilder().build())
            .buildClient();

    /**
     * Metodo para obtener el valor de un secreto.
     *
     * @param secretName Nombre del secreto en Key Vault.
     * @return Valor del secreto.
     */
    public static String getSecret(String secretName) {
        KeyVaultSecret secret = secretClient.getSecret(secretName);
        return secret.getValue();
    }
}
