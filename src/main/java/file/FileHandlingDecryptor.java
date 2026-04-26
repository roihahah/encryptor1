package file;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

public class FileHandlingDecryptor extends FileHandling
{
    public int getKey(Path path) throws IOException
    {
        Path keyFilePath = path.getParent().resolve("key.txt");
        return Integer.parseInt(Files.readString(keyFilePath));
    }

    public void saveDecryptedData(String data , Path path) throws IOException
    {
        Path decryptedFilePath = buildDecryptedFilePath(path);
        Files.writeString(decryptedFilePath , data);

        System.out.println("The decrypted file written to : " + decryptedFilePath.toString());
    }

    public Path buildDecryptedFilePath(Path path)
    {
        String fileName = path.getFileName().toString();
        String name = fileName.substring(0 , fileName.lastIndexOf("_encrypted"));
        String extension = fileName.substring(fileName.lastIndexOf('.'));

        String decryptedFileName = name + "_decrypted" + extension;
        return path.getParent().resolve(decryptedFileName);
    }
}
