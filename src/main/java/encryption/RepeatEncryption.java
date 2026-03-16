package encryption;

public class RepeatEncryption implements  EncryptionAlgorithm{
    private int timesToRepeat;
    private final EncryptionAlgorithm encryptionAlgorithm;

    public RepeatEncryption(int timesToRepeat, EncryptionAlgorithm encryptionAlgorithm){
        this.encryptionAlgorithm = encryptionAlgorithm;
        this.timesToRepeat = timesToRepeat;
    }
    /**
     * encrypting the data by using another encryption algo timeToRepeat times the same key each time
     * @param data data to encrypt
     * @param key key for the encryption
     */
    @Override
    public byte[] encrypt(byte[] data, int key) {
        byte[] res = data;
        //applying timeToRepeat times the encryption
        for (int i = 0; i < this.timesToRepeat; i++) {
            res = encryptionAlgorithm.encrypt(res , key);
        }

        return res;


    }

    /**
     * decrypting the data by using another encryption algo timeToRepeat times the same key each time
     * @param data data to decrypt
     * @param key key for the decryption
     */
    @Override
    public byte[] decrypt(byte[] data, int key) {
        byte[] res = data;

        //applying timeToRepeat times the decryption
        for (int i = 0; i < this.timesToRepeat; i++) {
            res = encryptionAlgorithm.decrypt(res , key);
        }

        return res;
    }
}
