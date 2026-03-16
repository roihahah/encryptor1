package encryption;

//woof woof woof
public interface EncryptionAlgorithm {


    byte[] encrypt(byte[] data , int key);
    byte[] decrypt(byte[] data , int key);


}

