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

        System.out.println("-- Welcome to the most program of programs --");
        String userChoice = getUserChoice();

        Path path = fileHandler.getSourceFilePath();
        String data = fileHandler.getFileData(path);

        CryptoCommand command = operations.get(userChoice);
        command.execute(data, path);
    }

    public static String getUserChoice()
    {
        String userChoice = getUserOperation();
        while (!operations.containsKey(userChoice))
        {
            System.out.println("Invalid input. Please enter E or D.\n");
            userChoice = getUserOperation();
        }
        return userChoice;
    }

    public static String getUserOperation()
    {
        UserInputService userInputService = new UserInputService();
        return userInputService.getUserInput(
                "Enter " + ENCRYPT_OPTION + " for Encryption of a file or "
                        + DECRYPT_OPTION + " for Decryption" +
                        "\nand press enter to confirm: ");
    }
}