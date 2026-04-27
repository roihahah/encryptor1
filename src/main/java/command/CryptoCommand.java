package command;

import java.nio.file.Path;

public interface CryptoCommand
{
    public void execute(String data, Path path);
}
