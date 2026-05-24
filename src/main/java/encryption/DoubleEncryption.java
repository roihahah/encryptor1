package encryption;

public class DoubleEncryption implements EncryptionAlgorithm
{
    private final EncryptionAlgorithm encryptionAlgorithm;

    public DoubleEncryption(EncryptionAlgorithm encryptionAlgorithm)
    {
        this.encryptionAlgorithm = encryptionAlgorithm;
    }

    @Override
    public int requiredKeys() {
        return 2;
    }

    @Override
    public String encrypt(String data, EncryptionKey encryptionKey)
    {
        return encryptionAlgorithm.encrypt(data, encryptionKey);
    }

    @Override
    public String decrypt(String data, EncryptionKey encryptionKey)
    {
        return encryptionAlgorithm.decrypt(data, encryptionKey.reverse());
    }
}
