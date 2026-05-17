package encryption;

public class XorEncryption implements EncryptionAlgorithm
{
    @Override
    public byte[] encrypt(byte[] data, int key)
    {
        byte[] res = new byte[data.length];

        for (int i = 0; i <data.length ; i++)
        {
            res[i] = (byte)(data[i] ^ key);
        }

        return res;
    }

    @Override
    public byte[] decrypt(byte[] data, int key) {
        return encrypt(data , key);
    }
}
