package exception;

import java.nio.file.Path;

public class FileNotReadable extends IllegalArgumentException
{
    public FileNotReadable(Path path)
    {
        super("File is not readable: " + path);
    }
}
