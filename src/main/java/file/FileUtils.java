package file;

import java.io.IOException;
import java.nio.file.FileSystemException;
import java.nio.file.Files;
import java.nio.file.NoSuchFileException;
import java.nio.file.Path;
import java.util.Objects;
import java.util.Scanner;

public final class FileUtils
{

    private FileUtils(){} // to prevent initialization of a utility class וכאלה

    public static void checkPath(Path path) throws IOException
    {
        Objects.requireNonNull(path, "Path cannot be null");

        if(!Files.exists(path))
        {
            throw new NoSuchFileException(path.toString());
        }

        if(!Files.isRegularFile(path))
        {
            throw new FileSystemException(path.toString(), null, "Not a regular file");
        }

        if (!Files.isReadable(path))
        {
            throw new FileSystemException(path.toString(), null, "File is not readable");
        }
    }

    public static Path getValidatedFilePath(Scanner scanner) throws IOException
    {
        System.out.println("Enter a path for the file : ");
        String userPath = scanner.nextLine();

        Path path = Path.of(userPath);
        checkPath(path);

        return path;
    }

    public static Path getValidatedFilePath(String userPath) throws IOException
    {
        Path path = Path.of(userPath);
        checkPath(path);
        return path;
    }

    public static byte[] getFileData(Path path) throws IOException
    {
        checkPath(path);
        return Files.readAllBytes(path);
    }

    public static int getKey(Path path) throws IOException
    {
        checkPath(path);
        return Integer.parseInt(Files.readString(path));
    }

    public static void saveData(byte[] data , Path path) throws IOException
    {
        Files.write(path , data);
        System.out.println("The file written to : " + path.toString());
    }
}
