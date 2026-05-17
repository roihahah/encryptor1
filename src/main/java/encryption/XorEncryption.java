package encryption;

public class XorEncryption implements EncryptionAlgorithm
{
    @Override
    public String encrypt(String data, EncryptionKey keys)
    {
        StringBuilder result = new StringBuilder();
        int key = keys.firstKey();

        for (char c : data.toCharArray())
        {
            result.append((char) (c ^ key));
        }

        return result.toString();
    }

    @Override
    public String decrypt(String data, EncryptionKey keys) {return encrypt(data , keys);}
}
