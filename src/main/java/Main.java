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

        //if the user chooses to encrypt a file
        if(ans.equals("E")){
            System.out.println("Welcome to the encryption");


            //initializing the crypto service and the file handling objects  for the encryption
            CryptoService cryptoService = new CryptoService();
            FileHandlingEncryptor  fileHandler = new FileHandlingEncryptor();

            //taking from the user the path to the file for the encryption and its data from the file
            Path path = fileHandler.getSourceFilePath(scanner);
            byte[] data = fileHandler.getFileData(path);

            //initializing a random key and encrypting the data
            int key = cryptoService.createKey();
            byte[] encryptedData = cryptoService.encrypt(data , key);


            //saving the encrypted data
            fileHandler.saveEncryptedData(encryptedData , path , key);
            
        }
        //if the user chooses to decrypt a file
        else if (ans.equals("D")) {
            System.out.println("Welcome to the decryption");
            //initializing the crypto service and the file handling objects for the decryption
            CryptoService cryptoService = new CryptoService();
            FileHandlingDecryptor fileHandler = new FileHandlingDecryptor();

            //taking from the user the path to the file for the decryption and its data from the file
            Path path = fileHandler.getSourceFilePath(scanner);
            byte[] data = fileHandler.getFileData(path);

            //taking the random key generated in the encryption phase
            int key = fileHandler.getKey(path);
            byte[] decryptedData = cryptoService.decrypt(data , key);

            //saving the decrypted data
            fileHandler.saveDecryptedData(decryptedData , path);


        }


    }
}
