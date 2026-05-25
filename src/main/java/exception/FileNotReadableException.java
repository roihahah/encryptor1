package exception;

import java.nio.file.Path;

public class FileNotReadableException extends IllegalArgumentException
{
    public FileNotReadableException(Path path)
    {
        super("File is not readable: " + path);
    }
}
