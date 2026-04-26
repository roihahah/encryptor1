package Application;

import file.FileHandlingDecryptor;
import file.FileHandlingEncryptor;
import service.CryptoService;

import java.io.IOException;
import java.nio.file.Path;
import java.util.Collections;
import java.util.Scanner;

public class EncryptionApplication {
    private static final String ENCRYPT_OPTION = "E";
    private static final String DECRYPT_OPTION = "D";

    public static void run() throws IOException {
        Scanner scanner = new Scanner(System.in);
        System.out.println("-- Welcome to the most program of programs --");
        System.out.println("Enter " + ENCRYPT_OPTION + " for Encryption of a file or " + DECRYPT_OPTION + " for Decryption and press enter to confirm: ");
        String userChoice =  (scanner.nextLine()).toUpperCase();
        switch (userChoice)
        {
            case "E":
                runEncryptionProgram(scanner);
                break;
            case "D":
                runDecryptionProgram(scanner);
                break;
            default:
                System.out.println("Unrecognizable Option");
        }

    }
    public static void runEncryptionProgram(Scanner scanner) throws IOException
    {
        System.out.println("Welcome to the encryption");

        CryptoService cryptoService = new CryptoService();
        FileHandlingEncryptor fileHandler = new FileHandlingEncryptor();

        Path path = fileHandler.getSourceFilePath(scanner);
        byte[] data = fileHandler.getFileData(path);

        int key = cryptoService.createKey();
        byte[] encryptedData = cryptoService.encrypt(data , key);

        fileHandler.saveEncryptedData(encryptedData , path , key);
    }
    public static void runDecryptionProgram(Scanner scanner) throws IOException
    {
        System.out.println("Welcome to the decryption");

        CryptoService cryptoService = new CryptoService();
        FileHandlingDecryptor fileHandler = new FileHandlingDecryptor();

        Path path = fileHandler.getSourceFilePath(scanner);
        byte[] data = fileHandler.getFileData(path);

        int key = fileHandler.getKey(path);
        byte[] decryptedData = cryptoService.decrypt(data , key);

        fileHandler.saveDecryptedData(decryptedData , path);
    }
}
