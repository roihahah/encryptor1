package service;

import java.util.Random;

public class CryptoService {
    public int key;


    /**
     *creating a random integer from 1-10
     * @return an integer
     */
    public int createKey(){
        //initializing a java Random object
        Random rand = new Random();
        return rand.nextInt(10) + 1;
    }

    /**
     * given byte array (data) and an integer (key) then encrypting the data by adding the key to each byte
     * @param data the data to encrypt
     * @param key the key for the encryption
     * @return a byte array of the encrypted data
     */
    public byte[] encrypt(byte[] data , int key) {
        //initializing an empty byte array for the result of the encryption
        byte[] result = new byte[data.length];

        //adding for each byte the key and putting it in the appropriate element of the result array
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
    public byte[] decrypt(byte[] data, int key) {
        //initializing an empty byte array for the result of the decryption
        byte[] result = new byte[data.length];

        //subtracting for each byte the key and putting it in the appropriate element of the result array
        for (int i = 0; i < data.length; i++) {
            result[i] = (byte) (data[i] - key);
        }

        return result;
    }
}
