package file;

import java.io.IOException;
import java.nio.file.FileSystemException;
import java.nio.file.Files;
import java.nio.file.NoSuchFileException;
import java.nio.file.Path;
import java.util.Objects;
import java.util.Scanner;

public final class FileUtils {

    private FileUtils(){} // to prevent initialization of a utility class וכאלה


    /**
     *try various checks for a path
     * @param path path to check
     */

    public static void checkPath(Path path) throws IOException {
        Objects.requireNonNull(path, "Path cannot be null");

        if(!Files.exists(path)){
            throw new NoSuchFileException(path.toString());

        }
        if(!Files.isRegularFile(path)){
            throw new FileSystemException(path.toString(), null, "Not a regular file");

        }
        if (!Files.isReadable(path)) {
            throw new FileSystemException(path.toString(), null, "File is not readable");
        }
    }

    /**
     *gets a validated path from a user
     * @param scanner scanner to scan user input
     * @return a validated path
     */

    public static Path getValidatedFilePath(Scanner scanner) throws IOException {
        System.out.println("Enter a path for the file : ");
        //gets the input from the user
        String userPath = scanner.nextLine();

        Path path = Path.of(userPath);
        checkPath(path);

        return path;
    }

    /**
     *gets a validated path from a string
     * @param userPath string path
     * @return a validated path
     */

    public static Path getValidatedFilePath(String userPath) throws IOException {
        Path path = Path.of(userPath);
        checkPath(path);
        return path;
    }

    /**
     *gets file data from a path of a file
     * @param path the path to the file
     * @return an array of bytes
     */
    public static byte[] getFileData(Path path) throws IOException {
        checkPath(path);
        return Files.readAllBytes(path);
    }

    /**
     *gets an integer key from a file
     * @param path  path to the file
     * @return a key integer
     */
    public static int getKey(Path path) throws IOException {
        checkPath(path);
        return Integer.parseInt(Files.readString(path));
    }

    /**
     * saves data into a file
     * @param data data to save
     * @param path path to the file
     */
    public static void saveData(byte[] data , Path path) throws IOException {
        Files.write(path , data);
        System.out.println("The file written to : " + path.toString());
    }
}
