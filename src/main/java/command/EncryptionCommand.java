package command;

import file.FileHandlingEncryptor;
import Utils.CryptoUtils;

import java.nio.file.Path;

public class EncryptionCommand implements CryptoCommand
{
    @Override
    public void execute(String data, Path path) {
        int key = CryptoUtils.createKey();
        String encryptedData = CryptoUtils.encrypt(data, key);

        FileHandlingEncryptor fileHandler = new FileHandlingEncryptor();
        fileHandler.saveEncryptedData(encryptedData, path, key);
    }
}
