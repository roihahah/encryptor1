package file;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

public class FileHandlingDecryptor extends FileHandling
{
    public int getKey(Path path)
    {
        Path keyFilePath = buildSecretKeyFilePath(path);
        return Integer.parseInt(getFileData(keyFilePath));
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