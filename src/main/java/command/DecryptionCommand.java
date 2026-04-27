package command;

import Utils.CryptoUtils;
import file.FileHandlingDecryptor;

import java.nio.file.Path;

public class DecryptionCommand implements CryptoCommand
{
    @Override
    public void execute(String data, Path path) {
        FileHandlingDecryptor fileHandlingDecryptor = new FileHandlingDecryptor();

        int key = fileHandlingDecryptor.getKey(path);
        String decryptedData = CryptoUtils.decrypt(data, key);

        Path decryptedFilePath = fileHandlingDecryptor.buildDecryptedFilePath(path);
        fileHandlingDecryptor.saveFileData(decryptedData, decryptedFilePath);

        System.out.println("The decrypted file written to : " + decryptedFilePath.toString());
    }
}
