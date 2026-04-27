package Application;

import command.Command;
import service.UserInputService;
import command.DecryptionCommand;
import command.EncryptionCommand;
import java.io.IOException;
import java.util.Map;

public class EncryptionApplication
{
    private static final String ENCRYPT_OPTION = "E";
    private static final String DECRYPT_OPTION = "D";

    public static void run(){
        System.out.println("-- Welcome to the most program of programs --");

        UserInputService userInputService = new UserInputService();
        String userChoice = userInputService.getUserInput(
                "Enter " + ENCRYPT_OPTION + " for Encryption of a file or "
                        + DECRYPT_OPTION + " for Decryption" +
                        "\nand press enter to confirm: ");

        Map<String, Command> operations = Map.of(
                ENCRYPT_OPTION, new EncryptionCommand(),
                DECRYPT_OPTION, new DecryptionCommand()
        );

        Command command = operations.get(userChoice);
        try {
            command.execute();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}