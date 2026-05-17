import encryption.*;
import file.FileEncryptor;
import file.FileUtils;

import java.io.IOException;
import java.nio.file.Path;
import java.util.HashMap;
import java.util.Map;

public class Main
{

    public static void main(String[] args) throws IOException
    {
        Map<String , EncryptionAlgorithm> algorithmMap = new HashMap<>();
        algorithmMap.put("Shift up" , new ShiftUpEncryption());
        algorithmMap.put("Shift multiply" , new ShiftMultiplyEncryption());
        algorithmMap.put("Double" , new DoubleEncryption(new ShiftUpEncryption()));
        algorithmMap.put("Repeat" , new RepeatEncryption(3 , new ShiftUpEncryption()));
        algorithmMap.put("XOR" , new XorEncryption());

        Path originalFilePath = FileUtils.getValidatedFilePath( "C:\\temp\\text.txt");
        Path keyFilePath = FileUtils.getValidatedFilePath("C:\\temp\\key.txt");

        for(Map.Entry<String , EncryptionAlgorithm> entry : algorithmMap.entrySet())
        {
            String name = entry.getKey();
            Path encryptedFilePath = Path.of("C:", "temp", name, "encrypted.txt");
            Path decryptedFilePath = Path.of("C:", "temp", name, "decrypted.txt");
            System.out.println("checking : " + name);


            FileEncryptor fileEncryptor = new FileEncryptor(entry.getValue());
            fileEncryptor.encryptFile(originalFilePath , encryptedFilePath , keyFilePath);
            fileEncryptor.decryptFile(encryptedFilePath , decryptedFilePath , keyFilePath);
        }
    }
}
