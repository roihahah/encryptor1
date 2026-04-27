package Utils;

import java.util.Random;

public class CryptoUtils
{
    public static int createKey()
    {
        Random rand = new Random();
        return rand.nextInt(10) + 1;
    }

    public static String encrypt(String data , int key)
    {
        StringBuilder result = new StringBuilder();

        for(char c: data.toCharArray())
        {
            result.append((char)(c + key));
        }

        return result.toString();
    }

    public static String decrypt(String data, int key)
    {
        StringBuilder result = new StringBuilder();

        for(char c: data.toCharArray())
        {
            result.append((char)(c - key));
        }

        return result.toString();
    }
}