import file.FileHandlingDecryptor;
import file.FileHandlingEncryptor;
import service.CryptoService;

import java.io.IOException;
import java.nio.file.Path;
import java.util.Scanner;

public class Main
{
    private static final String ENCRYPT_OPTION = "E";
    private static final String DECRYPT_OPTION = "D";

    public static void main(String[] args) throws IOException
    {
        Scanner scanner = new Scanner(System.in);
        System.out.println("-- Welcome to the most program of programs --");
        System.out.println("Enter " + ENCRYPT_OPTION + " for Encryption of a file or " + DECRYPT_OPTION + " for Decryption: ");

        String userChoice =  (scanner.next()).toUpperCase();
        scanner.nextLine();

        if (userChoice.equals(ENCRYPT_OPTION))
        {
            System.out.println("Welcome to the encryption");

            CryptoService cryptoService = new CryptoService();
            FileHandlingEncryptor  fileHandler = new FileHandlingEncryptor();

            Path path = fileHandler.getSourceFilePath(scanner);
            byte[] data = fileHandler.getFileData(path);

            int key = cryptoService.createKey();
            byte[] encryptedData = cryptoService.encrypt(data , key);


            fileHandler.saveEncryptedData(encryptedData , path , key);
        }
        else if (userChoice.equals(DECRYPT_OPTION))
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
}
