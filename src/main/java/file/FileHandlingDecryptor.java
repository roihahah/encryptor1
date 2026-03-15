package file;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

public class FileHandlingDecryptor extends FileHandling{

    /**
     * getting an integer key from a file
     * @param path the path of the file
     * @return the integer key
     */

    public int getKey(Path path) throws IOException {
        //getting the path for the key from the directory of the given path
        Path keyFilePath = path.getParent().resolve("key.txt");
        //getting the content of the key file and returning the integer key
        return Integer.parseInt(Files.readString(keyFilePath));
    }

    /**
     * saving the decrypted data file into a file with a path like : "source_file_name_decrypted" + its extension
     * @param path the location for saving the file
     * @param data the data to save in the file
     */
    public void saveDecryptedData(byte[] data , Path path) throws IOException {

        //getting the file name and its extension
        String fileName = path.getFileName().toString();
        String name = fileName.substring(0 , fileName.lastIndexOf("_encrypted"));
        String extension = fileName.substring(fileName.lastIndexOf('.'));

        //building the new decrypted file name
        String decryptedFileName = name + "_decrypted" + extension;
        Path decryptedFilePath = path.getParent().resolve(decryptedFileName);

        //writing the decrypted data to the new file
        Files.write(decryptedFilePath , data);

        //informing th user where the decrypted file was saved
        System.out.println("The decrypted file written to : " + decryptedFilePath.toString());
    }
}
