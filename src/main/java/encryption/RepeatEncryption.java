package encryption;

public class RepeatEncryption implements  EncryptionAlgorithm
{
    private final int timesToRepeat;
    private final EncryptionAlgorithm encryptionAlgorithm;

    public RepeatEncryption(int timesToRepeat, EncryptionAlgorithm encryptionAlgorithm)
    {
        this.encryptionAlgorithm = encryptionAlgorithm;
        this.timesToRepeat = timesToRepeat;
    }

    @Override
    public String encrypt(String data, EncryptionKey keys)
    {
        String res = data;
        for (int i = 0; i < this.timesToRepeat; i++)
        {
            res = encryptionAlgorithm.encrypt(res , keys);
        }

        return res;
    }

    @Override
    public String decrypt(String data, EncryptionKey keys)
    {
        String res = data;

        for (int i = 0; i < this.timesToRepeat; i++)
        {
            res = encryptionAlgorithm.decrypt(res , keys);
        }

        return res;
    }
}
