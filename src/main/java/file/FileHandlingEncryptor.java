package file;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

public class FileHandlingEncryptor extends FileHandling
{

    /**
     *saves the encrypted data to a new file ("source_file_name"_encrypted) and stores the encryption key
     * in a separate file (key.txt)
     * example:
     * input file -> name.txt
     * encrypted -> name_encrypted.txt
     * key file -> key.txt
     *
     * @param path path for the source file
     * @param data data of the encrypted file to save
     * @param key the integer user in the encryption
     */
    public void saveEncryptedData(byte[] data , Path path , int key) throws IOException
    {

        //getting the file name and its extension
        String fileName = path.getFileName().toString();
        String name = fileName.substring(0 , fileName.lastIndexOf('.'));
        String extension = fileName.substring(fileName.lastIndexOf('.'));

        //building the new path for the encrypted data
        String encryptedFileName = name + "_encrypted" + extension;
        Path encryptedFilePath = path.getParent().resolve(encryptedFileName);

        //writing the encrypted data to the new file
        Files.write(encryptedFilePath , data);

        //building and saving the key file
        Path keyFilePath = path.getParent().resolve("key.txt");
        Files.writeString(keyFilePath , Integer.toString(key));

        //informing the user about the encrypted file and the key file and where it was saved
        System.out.println("The encrypted file and the secret key(don't share it, its במ) saved in the paths " + encryptedFilePath.toString() + " for the encrypted file and "  +
                keyFilePath.toString() + " for the secret key");
    }
}
