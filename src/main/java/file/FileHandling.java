package file;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Scanner;

public class FileHandling
{

    /**
     *Validates that the given path exist and refers to a regular file
     *
     * @param path to validate
     *
     */

    public void checkPath(Path path)
    {
        if (!Files.exists(path))
        {
            throw new IllegalArgumentException("File does not exist");

        }
        if (!Files.isRegularFile(path))
        {
            throw new IllegalArgumentException("not a valid file");

        }
    }
    /**
     *gets the user to enter a file path and validates it.
     *
     * @param scanner for reading user input
     * @return a validated path representing the user file
     */

    public Path getSourceFilePath(Scanner scanner)
    {
        System.out.println("Enter a path for the file : ");
        String user_path = scanner.nextLine();

        Path path = Path.of(user_path);

        checkPath(path);

        return path;

    }
    /**
     * @param path path to the file
     * @return a byte array with the file data
     */
    public byte[] getFileData(Path path) throws IOException
    {
        return Files.readAllBytes(path);
    }
}
