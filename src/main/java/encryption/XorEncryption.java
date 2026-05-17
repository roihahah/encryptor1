package encryption;

public class XorEncryption implements EncryptionAlgorithm
{
    @Override
    public byte[] encrypt(byte[] data, EncryptionKey keys)
    {
        byte[] res = new byte[data.length];
        int key = keys.firstKey();

        for (int i = 0; i <data.length ; i++)
        {
            res[i] = (byte)(data[i] ^ key);
        }

        return res;
    }

    @Override
    public byte[] decrypt(byte[] data, EncryptionKey keys) {return encrypt(data , keys);}
}
