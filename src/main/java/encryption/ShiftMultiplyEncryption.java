package encryption;

public class ShiftMultiplyEncryption implements EncryptionAlgorithm{

    /**
     * encrypting the data by multiplying each byte of the data with the key (which can not work mathematically)
     * @param data data to encrypt
     * @param key key for the encryption
     */
    @Override
    public byte[] encrypt(byte[] data, int key) {

        byte[] result = new byte[data.length];

        for (int i = 0; i < data.length; i++) {
            result[i] = (byte) (data[i] * key);
        }

        return result;
    }

    /**
     * decrypting the data by dividing each byte of the data by the key (which can not work mathematically)
     * @param data data to decrypt
     * @param key key for the decryption
     */
    @Override
    public byte[] decrypt(byte[] data, int key) {

        byte[] result = new byte[data.length];

        for (int i = 0; i < data.length; i++) {
            result[i] = (byte) (data[i] / key);
        }

        return result;
    }
}
