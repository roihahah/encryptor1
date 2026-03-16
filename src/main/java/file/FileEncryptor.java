package file;

import encryption.EncryptionAlgorithm;

import java.io.IOException;
import java.nio.file.Path;

public class FileEncryptor {
    private final EncryptionAlgorithm encryptionAlgorithm;

    public FileEncryptor(EncryptionAlgorithm encryptionAlgorithm){
        this.encryptionAlgorithm = encryptionAlgorithm;
    }


    /**
     * encrypt an input file and output it to a given output path
     *
     * @param inputFilePath path to the input file to encrypt
     * @param keyFilePath path to the key file for the encryption
     * @param outputFilePath path to the output file for the encrypted file
     */
    public void encryptFile(Path inputFilePath , Path outputFilePath
    ,Path keyFilePath) throws IOException {

        //gets the data from the input file and the key from the key file
        byte[] data = FileUtils.getFileData(inputFilePath);
        int key = FileUtils.getKey(keyFilePath);

        //using the encryption algo for encrypting the data
        byte[] encryptedData = encryptionAlgorithm.encrypt(data , key);

        //saves the data in the path of the output file
        FileUtils.saveData(encryptedData , outputFilePath);

    }
    /**
     * decrypt a file and output it to the given output file
     *
     * @param encryptedFilePath path to the file to decrypt
     * @param keyFilePath path to the key file for the decryption
     * @param outputFilePath path to the output file for the decrypted file
     */
    public void decryptFile(Path encryptedFilePath , Path outputFilePath
            ,Path keyFilePath) throws IOException {

        //gets the data from the input file and the key from the key file
        byte[] data = FileUtils.getFileData(encryptedFilePath);
        int key = FileUtils.getKey(keyFilePath);

        //decrypt the data with the encryption algo object
        byte[] decryptedData = encryptionAlgorithm.decrypt(data , key);

        //saves the data into the output file path
        FileUtils.saveData(decryptedData , outputFilePath);

    }



}
