package encryption;

public class DoubleEncryption implements EncryptionAlgorithm
{

    private final EncryptionAlgorithm encryptionAlgorithm;

    public DoubleEncryption(EncryptionAlgorithm encryptionAlgorithm){
        this.encryptionAlgorithm = encryptionAlgorithm;
    }

    @Override
    public byte[] encrypt(byte[] data, int key)
    {
        int key2 = key+1;

        byte[] encryptedOnce = encryptionAlgorithm.encrypt(data , key);
        return encryptionAlgorithm.encrypt(encryptedOnce , key2);
    }

    @Override
    public byte[] decrypt(byte[] data, int key)
    {
        int key2 = key + 1;

        byte[] decryptedOnce = encryptionAlgorithm.decrypt(data , key2);
        return encryptionAlgorithm.decrypt(decryptedOnce , key);
    }
}
