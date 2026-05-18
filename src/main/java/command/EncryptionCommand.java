package command;

import file.FileHandlingEncryptor;
import Utils.CryptoUtils;

import java.nio.file.Path;

public class EncryptionCommand implements CryptoCommand
{
    @Override
    public void execute(String data, Path path)
    {
        FileHandlingEncryptor fileHandlerEncryptor = new FileHandlingEncryptor();

        int key = CryptoUtils.createKey();
        String encryptedData = CryptoUtils.encrypt(data, key);

        Path encryptedFilePath = fileHandlerEncryptor.buildEncryptedFilePath(path);
        Path keyFilePath = fileHandlerEncryptor.buildSecretKeyFilePath(path);

        fileHandlerEncryptor.saveFileData(encryptedData, encryptedFilePath);
        fileHandlerEncryptor.saveFileData(String.valueOf(key), keyFilePath);

        System.out.println("The encrypted file and the secret key (don't share it, its במ)\n" +
                "saved in the paths " + encryptedFilePath.toString() + " for the encrypted file\n " +
                "and " + keyFilePath.toString() + " for the secret key");
    }
}
