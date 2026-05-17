package encryption;

public interface EncryptionAlgorithm
{
    String encrypt(String data , EncryptionKey keys);
    String decrypt(String data , EncryptionKey keys);
}

