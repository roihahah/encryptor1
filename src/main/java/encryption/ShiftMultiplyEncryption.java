package encryption;

public class ShiftMultiplyEncryption implements EncryptionAlgorithm
{
    @Override
    public String encrypt(String data, EncryptionKey encryptionKey)
    {
        String result = data;

        for (int key : encryptionKey.keys())
        {
            result = multiply(result, key);
        }

        return result;
    }

    @Override
    public String decrypt(String data, EncryptionKey encryptionKey)
    {
        String result = data;

        for (int key : encryptionKey.keys())
        {
            result = divide(result, key);
        }

        return result;
    }

    private String multiply(String data, int key)
    {
        StringBuilder result = new StringBuilder();

        for (char c : data.toCharArray())
        {
            result.append((char) (c * key));
        }

        return result.toString();
    }

    private String divide(String data, int key)
    {
        StringBuilder result = new StringBuilder();

        for (char c : data.toCharArray())
        {
            result.append((char) (c / key));
        }

        return result.toString();
    }

    @Override
    public int requiredKeys()
    {
        return 1;
    }
}
