package encryption;

public class DoubleEncryption implements EncryptionAlgorithm
{

    private final EncryptionAlgorithm encryptionAlgorithm;

    public DoubleEncryption(EncryptionAlgorithm encryptionAlgorithm){
        this.encryptionAlgorithm = encryptionAlgorithm;
    }

    @Override
    public byte[] encrypt(byte[] data, EncryptionKey keys)
    {
        byte[] encryptedOnce = encryptionAlgorithm.encrypt(data , keys.withFirstKeyOnly());
        return encryptionAlgorithm.encrypt(encryptedOnce , keys.withSecondKeyOnly());
    }

    @Override
    public byte[] decrypt(byte[] data, EncryptionKey keys)
    {
        byte[] decryptedOnce = encryptionAlgorithm.decrypt(data , keys.withFirstKeyOnly());
        return encryptionAlgorithm.decrypt(decryptedOnce , keys.withSecondKeyOnly());
    }
}
