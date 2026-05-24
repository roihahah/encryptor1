package Application;

import encryption.*;
import file.FileEncryptor;
import file.FileUtils;
import java.nio.file.Path;
import java.util.Map;

public class EncryptionApplication
{
    static final Map<String, EncryptionAlgorithm> algorithmMap = Map.of(
            "ShiftUp", new ShiftUpEncryption(),
            "ShiftMultiply", new ShiftMultiplyEncryption(),
            "Double", new DoubleEncryption(new ShiftUpEncryption()),
            "Repeat", new RepeatEncryption(3, new ShiftUpEncryption()),
            "XOR", new XorEncryption()
    );

    public static void run()
    {

        Path originalFilePath = FileUtils.getValidatedFilePath( "C:\\temp\\text.txt");
        Path keyFilePath = FileUtils.getValidatedFilePath("C:\\temp\\key.txt");

        for (Map.Entry<String , EncryptionAlgorithm> entry : algorithmMap.entrySet())
        {
            String name = entry.getKey();
            Path outputFile = Path.of("C:", "temp", name);
            Path encryptedFilePath = FileUtils.buildEncryptedFilePath(outputFile);
            Path decryptedFilePath = FileUtils.buildDecryptedFilePath(outputFile);
            System.out.println("checking: " + name);

            FileEncryptor fileEncryptor = new FileEncryptor(entry.getValue());
            fileEncryptor.encryptFile(originalFilePath , encryptedFilePath , keyFilePath);
            fileEncryptor.decryptFile(encryptedFilePath , decryptedFilePath , keyFilePath);
        }
    }
}