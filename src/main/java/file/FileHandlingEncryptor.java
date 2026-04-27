package file;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;

public class FileHandlingEncryptor extends FileHandling
{
    public void saveEncryptedData(String data , Path path , int key)
    {
        Path encryptedFilePath = buildEncryptedFilePath(path);
        try {
            Files.writeString(encryptedFilePath , data);
        } catch (IOException e) {
            throw new RuntimeException("Can not save Encrypted Data " + e);
        }

        Path keyFilePath = buildSecretKeyFilePath(path);

        try {
            Files.writeString(keyFilePath , Integer.toString(key));
        } catch (IOException e) {
            throw new RuntimeException("Can not save key data " + e);
        }

        System.out.println("The encrypted file and the secret key (don't share it, its במ) saved in the paths " + encryptedFilePath.toString() + " for the encrypted file and "  +
                keyFilePath.toString() + " for the secret key");
    }

    public Path buildEncryptedFilePath(Path path)
    {
        String fileName = path.getFileName().toString();
        String name = fileName.substring(0 , fileName.lastIndexOf('.'));
        String extension = fileName.substring(fileName.lastIndexOf('.'));

        String encryptedFileName = name + "_encrypted" + extension;
        return path.getParent().resolve(encryptedFileName);
    }

    public Path buildSecretKeyFilePath(Path path)
    {
        return path.getParent().resolve("key.txt");
    }
}