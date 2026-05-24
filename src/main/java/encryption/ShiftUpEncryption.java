package encryption;

public class ShiftUpEncryption implements EncryptionAlgorithm
{
    @Override
    public int requiredKeys() {
        return 1;
    }

    @Override
    public String encrypt(String data, EncryptionKey encryptionKey)
    {
        StringBuilder result = new StringBuilder();

        for (int key : encryptionKey.keys())
        {
            for (char c : data.toCharArray())
            {
                result.append((char) (c + key));
            }
        }

        return result.toString();
    }

    @Override
    public String decrypt(String data, EncryptionKey encryptionKey)
    {
        StringBuilder result = new StringBuilder();

        for (int key : encryptionKey.keys())
        {
            for (char c : data.toCharArray())
            {
                result.append((char) (c - key));
            }
        }

        return result.toString();
    }
}
