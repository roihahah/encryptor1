package encryption;

import java.util.Arrays;

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
        String result = data;

        for (int key : encryptionKey.keys())
        {
            EncryptionKey currentEncryptionKey = createDuplicatedKey(key);
            result = encryptionAlgorithm.encrypt(result, currentEncryptionKey);
        }

        return result;
    }

    @Override
    public String decrypt(String data, EncryptionKey encryptionKey)
    {
        String result = data;

        for (int key : encryptionKey.keys())
        {
            EncryptionKey currentEncryptionKey = createDuplicatedKey(key);
            result = encryptionAlgorithm.decrypt(result, currentEncryptionKey);
        }

        return result;
    }

    private EncryptionKey createDuplicatedKey(int key)
    {
        int[] duplicatedKey = new int[this.timesToRepeat];
        Arrays.fill(duplicatedKey, key);

        return new EncryptionKey(duplicatedKey);
    }

    @Override
    public int requiredKeys()
    {
        return 1;
    }
}
