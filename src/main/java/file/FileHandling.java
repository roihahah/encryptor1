package file;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Scanner;

public abstract class FileHandling {

    public void checkPath(Path path){
        if(!Files.exists(path)){
            throw new IllegalArgumentException("File does not exist");

        }
        if(!Files.isRegularFile(path)){
            throw new IllegalArgumentException("not a valid file");

        }
    }
    public Path getSourceFilePath(Scanner scanner) {
        System.out.println("Enter a path for the file : ");
        String user_path = scanner.nextLine();

        Path path = Path.of(user_path);

        checkPath(path);

        return path;

    }
    public byte[] getFileData(Path path) throws IOException{
        return Files.readAllBytes(path);
    }
}
