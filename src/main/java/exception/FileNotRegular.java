package exception;

import java.nio.file.Path;

public class FileNotRegular extends IllegalArgumentException
{
    public FileNotRegular(Path path)
    {
        super("Path is not a regular file: " + path);
    }
}
