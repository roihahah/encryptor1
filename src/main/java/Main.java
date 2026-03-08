import file.FileHandlingDecryptor;
import file.FileHandlingEncryptor;
import service.CryptoService;

import java.io.IOException;
import java.nio.file.Path;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) throws IOException {

        Scanner scanner = new Scanner(System.in);
        System.out.println("-- Welcome to the most program of programs --");
        System.out.println("Enter E for Encryption of a file or D for Decryption : ");

        String ans =  (scanner.next()).toUpperCase();
        scanner.nextLine();

        if(ans.equals("E")){
            System.out.println("Welcome to the encryption");

            CryptoService cryptoService = new CryptoService();
            FileHandlingEncryptor  fileHandler = new FileHandlingEncryptor();

            Path path = fileHandler.getSourceFilePath(scanner);
            byte[] data = fileHandler.getFileData(path);

            int key = cryptoService.createKey();
            byte[] encryptedData = cryptoService.encrypt(data , key);

            fileHandler.saveEncryptedData(encryptedData , path , key);
            
        } else if (ans.equals("D")) {
            System.out.println("Welcome to the decryption");
            //for the file handling class
            CryptoService cryptoService = new CryptoService();
            FileHandlingDecryptor fileHandler = new FileHandlingDecryptor();

            Path path = fileHandler.getSourceFilePath(scanner);
            byte[] data = fileHandler.getFileData(path);


            int key = fileHandler.getKey(path);
            byte[] decryptedData = cryptoService.decrypt(data , key);

            //file handling decryption
            fileHandler.saveDecryptedData(decryptedData , path);


        }


    }
}
