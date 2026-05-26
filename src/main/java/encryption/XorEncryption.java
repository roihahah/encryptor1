package encryption;

public class XorEncryption implements EncryptionAlgorithm
{
    @Override
    public String encrypt(String data, EncryptionKey encryptionKey)
    {
        String result = data;

        for (int key : encryptionKey.keys())
        {
            result = xor(data, key);
        }

        return result;
    }

    @Override
    public String decrypt(String data, EncryptionKey encryptionKey)
    {
        return encrypt(data, encryptionKey);
    }

    public String xor(String data, int key)
    {
        StringBuilder result = new StringBuilder();

        for (char c : data.toCharArray())
        {
            result.append((char) (c ^ key));
        }

        return result.toString();
    }

    @Override
    public int requiredKeys()
    {
        return 1;
    }
}
