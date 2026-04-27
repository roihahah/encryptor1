package file;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

public class FileHandlingEncryptor extends FileHandling
{
    public Path buildEncryptedFilePath(Path path)
    {
        String fileName = path.getFileName().toString();
        String name = fileName.substring(0 , fileName.lastIndexOf('.'));
        String extension = fileName.substring(fileName.lastIndexOf('.'));

        String encryptedFileName = name + "_encrypted" + extension;
        return path.getParent().resolve(encryptedFileName);
    }
}