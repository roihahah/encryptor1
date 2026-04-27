package command;

import file.FileHandlingEncryptor;
import service.CryptoService;

import java.io.IOException;
import java.nio.file.Path;

public class EncryptionCommand implements Command
{
    @Override
    public void execute() throws IOException
    {
        System.out.println("Welcome to the encryption");

        CryptoService cryptoService = new CryptoService();
        FileHandlingEncryptor fileHandler = new FileHandlingEncryptor();

        Path path = fileHandler.getSourceFilePath();
        String data = fileHandler.getFileData(path);

        int key = cryptoService.createKey();
        String encryptedData = cryptoService.encrypt(data, key);

        fileHandler.saveEncryptedData(encryptedData, path, key);
    }
}
