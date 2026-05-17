package encryption;

public class ShiftMultiplyEncryption implements EncryptionAlgorithm
{
    @Override
    public byte[] encrypt(byte[] data, int key)
    {
        byte[] result = new byte[data.length];

        for (int i = 0; i < data.length; i++)
        {
            result[i] = (byte) (data[i] * key);
        }

        return result;
    }

    @Override
    public byte[] decrypt(byte[] data, int key)
    {
        byte[] result = new byte[data.length];

        for (int i = 0; i < data.length; i++)
        {
            result[i] = (byte) (data[i] / key);
        }

        return result;
    }
}
