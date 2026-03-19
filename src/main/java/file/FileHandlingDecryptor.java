package file;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

public class FileHandlingDecryptor extends FileHandling
{

    /**
     * getting an integer key from a file
     * @param path the path of the file
     * @return the integer key
     */

    public int getKey(Path path) throws IOException
    {
        Path keyFilePath = path.getParent().resolve("key.txt");
        return Integer.parseInt(Files.readString(keyFilePath));
    }

    /**
     * saving the decrypted data file into a file with a path like : "source_file_name_decrypted" + its extension
     * @param path the location for saving the file
     * @param data the data to save in the file
     */
    public void saveDecryptedData(byte[] data , Path path) throws IOException
    {
        Path decryptedFilePath = buildDecryptedFilePath(path);
        Files.write(decryptedFilePath , data);

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
