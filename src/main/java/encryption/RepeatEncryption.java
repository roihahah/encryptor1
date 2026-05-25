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
        String res = data;
        for (int key : encryptionKey.keys())
        {
            int[] duplicatedKey = new int[encryptionKey.keys().length];
            Arrays.fill(duplicatedKey, key);

            EncryptionKey currentEncryptionKey = new EncryptionKey(duplicatedKey);
            res = encryptionAlgorithm.encrypt(res, currentEncryptionKey);
        }

        return res;
    }

    @Override
    public String decrypt(String data, EncryptionKey encryptionKey)
    {
        String res = data;
        for (int key : encryptionKey.keys())
        {
            int[] duplicatedKey = new int[encryptionKey.keys().length];
            Arrays.fill(duplicatedKey, key);

            EncryptionKey currentEncryptionKey = new EncryptionKey(duplicatedKey);
            res = encryptionAlgorithm.decrypt(res, currentEncryptionKey);
        }

        return res;
    }

    @Override
    public int requiredKeys() {
        return 1;
    }
}
