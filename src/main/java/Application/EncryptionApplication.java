package Application;

import file.FileHandlingDecryptor;
import file.FileHandlingEncryptor;
import service.CryptoService;
import service.UserInputService;

import java.io.IOException;
import java.nio.file.Path;

public class EncryptionApplication {
    private static final String ENCRYPT_OPTION = "E";
    private static final String DECRYPT_OPTION = "D";

    public static void run() throws IOException {
        System.out.println("-- Welcome to the most program of programs --");

        UserInputService userInputService = new UserInputService();
        String userChoice = userInputService.getUserInput("Enter " + ENCRYPT_OPTION + " for Encryption of a file or " + DECRYPT_OPTION + " for Decryption and press enter to confirm: ");

        switch (userChoice)
        {
            case "E":
                runEncryptionProgram();
                break;
            case "D":
                runDecryptionProgram();
                break;
            default:
                System.out.println("Unrecognizable Option");
        }
    }

    public static void runEncryptionProgram() throws IOException
    {
        System.out.println("Welcome to the encryption");

        CryptoService cryptoService = new CryptoService();
        FileHandlingEncryptor fileHandler = new FileHandlingEncryptor();

        Path path = fileHandler.getSourceFilePath();
        byte[] data = fileHandler.getFileData(path);

        int key = cryptoService.createKey();
        byte[] encryptedData = cryptoService.encrypt(data, key);

        fileHandler.saveEncryptedData(encryptedData, path, key);
    }

    public static void runDecryptionProgram() throws IOException
    {
        System.out.println("Welcome to the decryption");

        CryptoService cryptoService = new CryptoService();
        FileHandlingDecryptor fileHandler = new FileHandlingDecryptor();

        Path path = fileHandler.getSourceFilePath();
        byte[] data = fileHandler.getFileData(path);

        int key = fileHandler.getKey(path);
        byte[] decryptedData = cryptoService.decrypt(data , key);

        fileHandler.saveDecryptedData(decryptedData , path);
    }
}
