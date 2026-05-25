package exception;

import java.nio.file.Path;

public class FileNotExistException extends IllegalArgumentException
{
    public FileNotExistException(Path path)
    {
        super("File does not exist: " + path);
    }
}
