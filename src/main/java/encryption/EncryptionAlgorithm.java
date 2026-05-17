package encryption;

public interface EncryptionAlgorithm
{
    byte[] encrypt(byte[] data , int key);
    byte[] decrypt(byte[] data , int key);
}

