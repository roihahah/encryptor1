package exception;

import java.nio.file.Path;

public class FileNotExist extends IllegalArgumentException
{
    public FileNotExist(Path path)
    {
        super("File does not exist: " + path);
    }
}
