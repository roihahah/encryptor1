package exception;

import java.nio.file.Path;

public class FileNotRegularException extends IllegalArgumentException
{
    public FileNotRegularException(Path path)
    {
        super("Path is not a regular file: " + path);
    }
}
