package encryption;

public class RepeatEncryption implements  EncryptionAlgorithm
{
    private int timesToRepeat;
    private final EncryptionAlgorithm encryptionAlgorithm;

    public RepeatEncryption(int timesToRepeat, EncryptionAlgorithm encryptionAlgorithm)
    {
        this.encryptionAlgorithm = encryptionAlgorithm;
        this.timesToRepeat = timesToRepeat;
    }

    @Override
    public byte[] encrypt(byte[] data, int key)
    {
        byte[] res = data;
        for (int i = 0; i < this.timesToRepeat; i++)
        {
            res = encryptionAlgorithm.encrypt(res , key);
        }

        return res;
    }

    @Override
    public byte[] decrypt(byte[] data, int key)
    {
        byte[] res = data;

        for (int i = 0; i < this.timesToRepeat; i++)
        {
            res = encryptionAlgorithm.decrypt(res , key);
        }

        return res;
    }
}
