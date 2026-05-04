package Application;

import command.CryptoCommand;
import file.FileHandling;
import service.UserInputService;
import command.DecryptionCommand;
import command.EncryptionCommand;

import java.nio.file.Path;
import java.util.Map;

public class EncryptionApplication
{
    private static final String ENCRYPT_OPTION = "E";
    private static final String DECRYPT_OPTION = "D";

    static final Map<String, CryptoCommand> operations = Map.of(
            ENCRYPT_OPTION, new EncryptionCommand(),
            DECRYPT_OPTION, new DecryptionCommand()
    );

    public static void run()
    {
        FileHandling fileHandler = new FileHandling();
        UserInputService userInputService = new UserInputService();

        System.out.println("-- Welcome to the most program of programs --");
        String userChoice = userInputService.getUserInput(
                "Enter " + ENCRYPT_OPTION + " for Encryption of a file or "
                        + DECRYPT_OPTION + " for Decryption" +
                        "\nand press enter to confirm: ");

        Path path = fileHandler.getSourceFilePath();
        String data = fileHandler.getFileData(path);

        CryptoCommand command = operations.get(userChoice);
        command.execute(data, path);
    }
}