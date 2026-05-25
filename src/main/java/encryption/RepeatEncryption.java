package encryption;

public class RepeatEncryption implements EncryptionAlgorithm
{
    private final int timesToRepeat;
    private final EncryptionAlgorithm encryptionAlgorithm;

    public RepeatEncryption(int timesToRepeat, EncryptionAlgorithm encryptionAlgorithm)
    {
        this.encryptionAlgorithm = encryptionAlgorithm;
        this.timesToRepeat = timesToRepeat;
    }

    @Override
    public String encrypt(String data, EncryptionKey encryptionKey)
    {
        String res = data;
        for(int key : encryptionKey.keys())
        {
            EncryptionKey currentEncryptionKey = new EncryptionKey(new int[] { key });
            for (int i = 0; i < this.timesToRepeat; i++)
            {
                res = encryptionAlgorithm.encrypt(res, currentEncryptionKey);
            }
        }

        return res;
    }

    @Override
    public String decrypt(String data, EncryptionKey encryptionKey)
    {
        String res = data;
        for (int key : encryptionKey.keys())
        {
            EncryptionKey currentEncryptionKey = new EncryptionKey(new int[] { key });
            for (int i = 0; i < this.timesToRepeat; i++)
            {
                res = encryptionAlgorithm.decrypt(res, currentEncryptionKey);
            }
        }

        return res;
    }

    @Override
    public int requiredKeys() {
        return 1;
    }
}
