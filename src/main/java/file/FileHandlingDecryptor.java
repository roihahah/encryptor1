package file;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

public class FileHandlingDecryptor extends FileHandling{

    public int getKey(Path path) throws IOException {
        Path keyFilePath = path.getParent().resolve("key.txt");
        return Integer.parseInt(Files.readString(keyFilePath));
    }
    public void saveDecryptedData(byte[] data , Path path) throws IOException {
        String fileName = path.getFileName().toString();
        String name = fileName.substring(0 , fileName.lastIndexOf("_encrypted"));
        String extension = fileName.substring(fileName.lastIndexOf('.'));

        String decryptedFileName = name + "_decrypted" + extension;
        Path decryptedFilePath = path.getParent().resolve(decryptedFileName);

        Files.write(decryptedFilePath , data);

        System.out.println("The decrypted file written to : " + decryptedFilePath.toString());
    }
}
