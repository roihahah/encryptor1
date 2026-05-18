package file;

import encryption.EncryptionKey;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;
import java.util.Objects;

public final class FileUtils
{
    private FileUtils() { }

    public static void checkPath(Path path)
    {
        Objects.requireNonNull(path, "Path cannot be null");

        if (!Files.exists(path)) {
            throw new IllegalArgumentException("File does not exist: " + path);
        }

        if (!Files.isRegularFile(path)) {
            throw new IllegalArgumentException("Path is not a regular file: " + path);
        }

        if (!Files.isReadable(path)) {
            throw new IllegalArgumentException("File is not readable: " + path);
        }
    }

    public static Path getValidatedFilePath(String userPath)
    {
        Path path = Path.of(userPath);
        checkPath(path);

        return path;
    }

    public static String getFileData(Path path)
    {
        try
        {
            return Files.readString(path);
        }
        catch (IOException e)
        {
            throw new RuntimeException(e);
        }
    }

    public static EncryptionKey getKey(Path path)
    {
        List<String> lines = getLinesFromFile(path);
        int firstKey = Integer.parseInt(lines.get(0));
        int secondKey = lines.size() > 1 ? Integer.parseInt(lines.get(1)) : firstKey;

        return new EncryptionKey(firstKey, secondKey);
    }

    private static List<String> getLinesFromFile(Path path)
    {
        try
        {
            return Files.readAllLines(path);
        }
        catch (IOException e)
        {
            throw new RuntimeException(e);
        }
    }

    public static void saveData(String data , Path path)
    {
        try
        {
            Files.writeString(path , data);
        }
        catch (IOException e)
        {
            throw new RuntimeException(e);
        }

        System.out.println("The file written to : " + path);
    }
}
