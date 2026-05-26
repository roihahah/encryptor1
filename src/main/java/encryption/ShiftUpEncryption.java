package encryption;

public class ShiftUpEncryption implements EncryptionAlgorithm
{
    @Override
    public String encrypt(String data, EncryptionKey encryptionKey)
    {
        String result = data;

        for (int key : encryptionKey.keys())
        {
            result = shift(result, key);
        }

        return result;
    }

    @Override
    public String decrypt(String data, EncryptionKey encryptionKey)
    {
        String result = data;

        for (int key : encryptionKey.reverse().keys())
        {
            result = shift(result, -key);
        }

        return result;
    }

    private String shift(String data, int key)
    {
        StringBuilder result = new StringBuilder();

        for (char c : data.toCharArray())
        {
            result.append((char) (c + key));
        }

        return result.toString();
    }

    @Override
    public int requiredKeys()
    {
        return 1;
    }
}
