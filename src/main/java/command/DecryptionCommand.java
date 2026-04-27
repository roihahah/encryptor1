package command;

import file.FileHandlingDecryptor;
import service.CryptoService;

import java.io.IOException;
import java.nio.file.Path;

public class DecryptionCommand implements Command
{
    @Override
    public void execute() throws IOException
    {
        System.out.println("Welcome to the decryption");

        CryptoService cryptoService = new CryptoService();
        FileHandlingDecryptor fileHandler = new FileHandlingDecryptor();

        Path path = fileHandler.getSourceFilePath();
        String data = fileHandler.getFileData(path);

        int key = fileHandler.getKey(path);
        String decryptedData = cryptoService.decrypt(data , key);

        fileHandler.saveDecryptedData(decryptedData , path);
    }
}
