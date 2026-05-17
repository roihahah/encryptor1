package file;

import encryption.EncryptionAlgorithm;
import encryption.EncryptionKey;

import java.io.IOException;
import java.nio.file.Path;

public class FileEncryptor
{
    private final EncryptionAlgorithm encryptionAlgorithm;

    public FileEncryptor(EncryptionAlgorithm encryptionAlgorithm){
        this.encryptionAlgorithm = encryptionAlgorithm;
    }

    public void encryptFile(Path inputFilePath , Path outputFilePath
    ,Path keysFilePath) throws IOException
    {
        byte[] data = FileUtils.getFileData(inputFilePath);
        EncryptionKey keys = FileUtils.getKey(keysFilePath);

        byte[] encryptedData = encryptionAlgorithm.encrypt(data , keys);

        FileUtils.saveData(encryptedData , outputFilePath);
    }

    public void decryptFile(Path encryptedFilePath , Path outputFilePath
            ,Path keysFilePath) throws IOException
    {
        byte[] data = FileUtils.getFileData(encryptedFilePath);
        EncryptionKey keys = FileUtils.getKey(keysFilePath);

        byte[] decryptedData = encryptionAlgorithm.decrypt(data , keys);

        FileUtils.saveData(decryptedData , outputFilePath);
    }
}
