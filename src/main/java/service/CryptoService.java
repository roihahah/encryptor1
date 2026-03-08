package service;

import java.util.Random;

public class CryptoService {
    public int key;

    public int createKey(){
        Random rand = new Random();
        return rand.nextInt(10) + 1;
    }
    public byte[] encrypt(byte[] data , int key) {


        byte[] result = new byte[data.length];

        for (int i = 0; i < data.length; i++) {
            result[i] = (byte) (data[i] + key);
        }

        return result;
    }

    public byte[] decrypt(byte[] data, int key) {
        byte[] result = new byte[data.length];

        for (int i = 0; i < data.length; i++) {
            result[i] = (byte) (data[i] - key);
        }

        return result;
    }
}
