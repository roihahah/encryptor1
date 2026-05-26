package application;

import file.FileEncryptor;
import file.FileUtils;
import java.nio.file.Path;

public class EncryptionApplication
{
    static final String PROJECT_DIR = "C:\\temp";
    static final Path ORIGINAL_FILE_PATH = FileUtils.getValidatedFilePath(PROJECT_DIR, "text.txt");
    static final Path KEY_FILE_PATH = FileUtils.getValidatedFilePath(PROJECT_DIR, "key.txt");
    static final Path TWO_KEYS_FILE_PATH = FileUtils.getValidatedFilePath(PROJECT_DIR, "two_keys.txt");

    public static void run()
    {
        for (UserInputMock userInputMock : UserInputMock.values())
        {
            System.out.println("checking: " + userInputMock.displayName());
            runAlgorithm(userInputMock);
        }
    }

    public static void runAlgorithm(UserInputMock userInputMock)
    {
        Path outputFile = Path.of(PROJECT_DIR, userInputMock.displayName(), userInputMock.displayName() + ".txt");
        Path encryptedFilePath = FileUtils.buildEncryptedFilePath(outputFile);
        Path decryptedFilePath = FileUtils.buildDecryptedFilePath(encryptedFilePath);

        FileEncryptor fileEncryptor = new FileEncryptor(userInputMock.algorithm());
        fileEncryptor.encryptFile(ORIGINAL_FILE_PATH, encryptedFilePath, userInputMock.keyFilePath());
        fileEncryptor.decryptFile(encryptedFilePath, decryptedFilePath, userInputMock.keyFilePath());
    }
}