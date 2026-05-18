package encryption;

public class DoubleEncryption implements EncryptionAlgorithm
{
    private final EncryptionAlgorithm encryptionAlgorithm;

    public DoubleEncryption(EncryptionAlgorithm encryptionAlgorithm)
    {
        this.encryptionAlgorithm = encryptionAlgorithm;
    }

    @Override
    public String encrypt(String data, EncryptionKey keys)
    {
        checkKeys(keys);
        String encryptedOnce = encryptionAlgorithm.encrypt(data, keys.withFirstKeyOnly());

        return encryptionAlgorithm.encrypt(encryptedOnce, keys.withSecondKeyOnly());
    }

    @Override
    public String decrypt(String data, EncryptionKey keys)
    {
        checkKeys(keys);
        String decryptedOnce = encryptionAlgorithm.decrypt(data, keys.withSecondKeyOnly());

        return encryptionAlgorithm.decrypt(decryptedOnce, keys.withFirstKeyOnly());
    }

    private void checkKeys(EncryptionKey keys)
    {
        keys.requireFirstKey();
        keys.requireSecondKey();
    }
}
