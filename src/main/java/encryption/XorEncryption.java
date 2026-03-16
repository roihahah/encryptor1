package encryption;

public class XorEncryption implements EncryptionAlgorithm{

    /**
     * encrypting the data by applying xor operation for each byte with the key
     * @param data data to encrypt
     * @param key key for the encryption
     */
    @Override
    public byte[] encrypt(byte[] data, int key) {
        byte[] res = new byte[data.length];

        for (int i = 0; i <data.length ; i++) {
            res[i] = (byte)(data[i] ^ key);
        }

        return res;
    }


    /**
     * decrypting the data by applying xor operation for each byte with the key
     * @param data data to decrypt
     * @param key key for the decryption
     */
    @Override
    public byte[] decrypt(byte[] data, int key) {
        return encrypt(data , key);
    }
}
