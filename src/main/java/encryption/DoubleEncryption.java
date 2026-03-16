package encryption;
//meow meow meow meow
public class DoubleEncryption implements EncryptionAlgorithm{

    private final EncryptionAlgorithm encryptionAlgorithm;

    public DoubleEncryption(EncryptionAlgorithm encryptionAlgorithm){
        this.encryptionAlgorithm = encryptionAlgorithm;
    }

    /**
     * encrypting the data by using another encryption algo twice with different key each time
     * @param data data to encrypt
     * @param key key for the encryption
     */
    @Override
    public byte[] encrypt(byte[] data, int key) {

        //setting the second key as the og key + 1
        int key2 = key+1;

        //using the encryption algo object for the encryption
        byte[] encryptedOnce = encryptionAlgorithm.encrypt(data , key);
        return encryptionAlgorithm.encrypt(encryptedOnce , key2);
    }

    /**
     *decrypting the data by using another encryption algo twice with the second key and then the first key
     *
     * @param data data to decrypt
     * @param key key for the decryption
     */

    @Override
    public byte[] decrypt(byte[] data, int key) {
        //setting the second key
        int key2 = key + 1;

        //using the encryption algo object for the decryption
        byte[] decryptedOnce = encryptionAlgorithm.decrypt(data , key2);
        return encryptionAlgorithm.decrypt(decryptedOnce , key);
    }
}
