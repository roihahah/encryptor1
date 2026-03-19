package service;

import java.util.Random;

public class CryptoService
{
    public int key;
    /**
     *creating a random integer from 1-10
     * @return an integer
     */
    public int createKey()
    {
        Random rand = new Random();
        return rand.nextInt(10) + 1;
    }
    /**
     * given byte array (data) and an integer (key) then encrypting the data by adding the key to each byte
     * @param data the data to encrypt
     * @param key the key for the encryption
     * @return a byte array of the encrypted data
     */
    public byte[] encrypt(byte[] data , int key)
    {
        byte[] result = new byte[data.length];

        for (int i = 0; i < data.length; i++) {
            result[i] = (byte) (data[i] + key);
        }
        return result;
    }
    /**
     * given byte array (data) and an integer (key) and then decrypting the data by subtracting the key to each byte
     *
     * @param data the data to decrypt
     * @param key the key for the decryption
     * @return a byte array of the decrypted data
     */
    public byte[] decrypt(byte[] data, int key)
    {
        byte[] result = new byte[data.length];

        for (int i = 0; i < data.length; i++) {
            result[i] = (byte) (data[i] - key);
        }
        return result;
    }
}
