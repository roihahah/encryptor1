package service;

import java.util.Random;

public class CryptoService
{
    public int key;
    public int createKey()
    {
        Random rand = new Random();
        return rand.nextInt(10) + 1;
    }

    public String encrypt(String data , int key)
    {
        StringBuilder result = new StringBuilder();

        for(char c: data.toCharArray())
        {
            result.append((char)(c + key));
        }

        return result.toString();
    }

    public String decrypt(String data, int key)
    {
        StringBuilder result = new StringBuilder();

        for(char c: data.toCharArray())
        {
            result.append((char)(c - key));
        }

        return result.toString();
    }
}