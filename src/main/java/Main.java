import encryption.*;
import file.FileEncryptor;
import file.FileUtils;

import java.io.IOException;
import java.nio.file.Path;
import java.util.HashMap;
import java.util.Map;

public class Main {

    public static void main(String[] args) throws IOException {

        //a map to map each encryption type and its string which will be used to save the encrypted file
        Map<String , EncryptionAlgorithm> algorithmMap = new HashMap<>();
        algorithmMap.put("Shift up" , new ShiftUpEncryption());
        algorithmMap.put("Shift multiply" , new ShiftMultiplyEncryption());
        algorithmMap.put("Double" , new DoubleEncryption(new ShiftUpEncryption()));
        algorithmMap.put("Repeat" , new RepeatEncryption(3 , new ShiftUpEncryption()));
        algorithmMap.put("XOR" , new XorEncryption());

        //paths of the text and key to encrypt and decrypt
        Path originalFilePath = FileUtils.getValidatedFilePath( "C:\\temp\\text.txt");
        Path keyFilePath = FileUtils.getValidatedFilePath("C:\\temp\\key.txt");

        //checks the each crypto algo
        for(Map.Entry<String , EncryptionAlgorithm> entry : algorithmMap.entrySet()){
            //get the target paths for the encryption and the decryption
            String name = entry.getKey();
            Path encryptedFilePath = Path.of("C:", "temp", name, "encrypted.txt");
            Path decryptedFilePath = Path.of("C:", "temp", name, "decrypted.txt");
            System.out.println("checking : " + name);


            FileEncryptor fileEncryptor = new FileEncryptor(entry.getValue());
            //encrypt and saves the file
            fileEncryptor.encryptFile(originalFilePath , encryptedFilePath , keyFilePath);
            //decrypt and save the file
            fileEncryptor.decryptFile(encryptedFilePath , decryptedFilePath , keyFilePath);

        }



    }
}
