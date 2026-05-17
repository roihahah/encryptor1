package file;

import encryption.EncryptionAlgorithm;

import java.io.IOException;
import java.nio.file.Path;

public class FileEncryptor
{
    private final EncryptionAlgorithm encryptionAlgorithm;

    public FileEncryptor(EncryptionAlgorithm encryptionAlgorithm){
        this.encryptionAlgorithm = encryptionAlgorithm;
    }

    public void encryptFile(Path inputFilePath , Path outputFilePath
    ,Path keyFilePath) throws IOException
    {
        byte[] data = FileUtils.getFileData(inputFilePath);
        int key = FileUtils.getKey(keyFilePath);

        byte[] encryptedData = encryptionAlgorithm.encrypt(data , key);

        FileUtils.saveData(encryptedData , outputFilePath);
    }

    public void decryptFile(Path encryptedFilePath , Path outputFilePath
            ,Path keyFilePath) throws IOException
    {
        byte[] data = FileUtils.getFileData(encryptedFilePath);
        int key = FileUtils.getKey(keyFilePath);

        byte[] decryptedData = encryptionAlgorithm.decrypt(data , key);

        FileUtils.saveData(decryptedData , outputFilePath);
    }
}
