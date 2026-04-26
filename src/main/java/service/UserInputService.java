package service;

import java.util.Scanner;

public class UserInputService {
    private final Scanner scanner = new Scanner(System.in);

    public String getUserInput(String prompt)
    {
        System.out.println(prompt);
        return this.scanner.nextLine();
    }
}