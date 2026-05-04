package file;

import service.UserInputService;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

public class FileHandling
{
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

    public Path getSourceFilePath()
    {
        UserInputService userInputService = new UserInputService();
        String user_path = userInputService.getUserInput("Enter a path for the file: ");
        Path path = Path.of(user_path);
        checkPath(path);

        return path;
    }

    public String getFileData(Path path)
    {
        try {
            return Files.readString(path);
        } catch (IOException e) {
            throw new RuntimeException("Can not Read File Data" + e);
        }
    }

    public void saveFileData(String data, Path path)
    {
        try
        {
            Files.writeString(path , data);
        } catch (IOException e)
        {
            throw new RuntimeException("Can not save decrypted data " + e);
        }
    }

    public Path buildSecretKeyFilePath(Path path)
    {
        return path.getParent().resolve("key.txt");
    }
}