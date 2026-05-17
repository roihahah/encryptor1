package encryption;

public interface EncryptionAlgorithm
{
    byte[] encrypt(byte[] data , EncryptionKey keys);
    byte[] decrypt(byte[] data , EncryptionKey keys);
}

