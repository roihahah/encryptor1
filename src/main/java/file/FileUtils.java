package file;

import encryption.EncryptionKey;
import lombok.experimental.UtilityClass;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;
import java.util.Objects;

@UtilityClass
public class FileUtils
{
    public void checkPath(Path path)
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

    public Path getValidatedFilePath(String userFolder, String userFile)
    {
        Path path = Path.of(userFolder, userFile);
        checkPath(path);

        return path;
    }

    public String getFileData(Path path)
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

    public EncryptionKey getKey(Path path)
    {
        List<String> lines = getLinesFromFile(path);

        int[] keys = new int[lines.size()];

        for (int i = 0; i < lines.size(); i++)
        {
            keys[i] = Integer.parseInt(lines.get(i));
        }

        return new EncryptionKey(keys);
    }

    private List<String> getLinesFromFile(Path path)
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

    public void saveData(String data, Path path)
    {
        try
        {
            Files.writeString(path, data);
        }
        catch (IOException e)
        {
            throw new RuntimeException(e);
        }

        System.out.println("The file written to: " + path);
    }

    public Path buildDecryptedFilePath(Path path)
    {
        String fileName = path.getFileName().toString();
        String name = fileName.substring(0, fileName.lastIndexOf("_encrypted"));
        String extension = fileName.substring(fileName.lastIndexOf('.'));

        String decryptedFileName = name + "_decrypted" + extension;
        return path.getParent().resolve(decryptedFileName);
    }

    public Path buildEncryptedFilePath(Path path)
    {
        String fileName = path.getFileName().toString();
        String name = fileName.substring(0, fileName.lastIndexOf('.'));
        String extension = fileName.substring(fileName.lastIndexOf('.'));

        String encryptedFileName = name + "_encrypted" + extension;
        return path.getParent().resolve(encryptedFileName);
    }
}