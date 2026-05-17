package encryption;

public class ShiftMultiplyEncryption implements EncryptionAlgorithm
{
    @Override
    public byte[] encrypt(byte[] data, EncryptionKey keys)
    {
        byte[] result = new byte[data.length];
        int key = keys.firstKey();

        for (int i = 0; i < data.length; i++)
        {
            result[i] = (byte) (data[i] * key);
        }

        return result;
    }

    @Override
    public byte[] decrypt(byte[] data, EncryptionKey keys)
    {
        byte[] result = new byte[data.length];
        int key = keys.firstKey();

        for (int i = 0; i < data.length; i++)
        {
            result[i] = (byte) (data[i] / key);
        }

        return result;
    }
}
