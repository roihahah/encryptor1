package encryption;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class EncryptionAlgorithmsTest
{
    @Test
    void shiftUpEncryption_shouldEncryptTextByAddingKeyToEachCharacter()
    {
        EncryptionAlgorithm algorithm = new ShiftUpEncryption();
        EncryptionKey key = new EncryptionKey(new int[] { 1 });

        String result = algorithm.encrypt("abc", key);

        assertEquals("bcd", result);
    }

    @Test
    void shiftUpEncryption_shouldDecryptTextBySubtractingKeyFromEachCharacter()
    {
        EncryptionAlgorithm algorithm = new ShiftUpEncryption();
        EncryptionKey key = new EncryptionKey(new int[] { 1 });

        String result = algorithm.decrypt("bcd", key);

        assertEquals("abc", result);
    }

    @Test
    void shiftUpEncryption_encryptThenDecrypt_shouldReturnOriginalText()
    {
        EncryptionAlgorithm algorithm = new ShiftUpEncryption();
        EncryptionKey key = new EncryptionKey(new int[] { 3 });

        String original = "hello";
        String encrypted = algorithm.encrypt(original, key);
        String decrypted = algorithm.decrypt(encrypted, key);

        assertEquals(original, decrypted);
    }

    @Test
    void xorEncryption_encryptThenDecrypt_shouldReturnOriginalText()
    {
        EncryptionAlgorithm algorithm = new XorEncryption();
        EncryptionKey key = new EncryptionKey(new int[] { 5 });

        String original = "hello";
        String encrypted = algorithm.encrypt(original, key);
        String decrypted = algorithm.decrypt(encrypted, key);

        assertEquals(original, decrypted);
    }

    @Test
    void shiftMultiplyEncryption_shouldEncryptTextByMultiplyingEachCharacterByKey()
    {
        EncryptionAlgorithm algorithm = new ShiftMultiplyEncryption();
        EncryptionKey key = new EncryptionKey(new int[] { 2 });

        String result = algorithm.encrypt("AB", key);

        assertEquals("" + (char) ('A' * 2) + (char) ('B' * 2), result);
    }

    @Test
    void shiftMultiplyEncryption_shouldDecryptTextByDividingEachCharacterByKey()
    {
        EncryptionAlgorithm algorithm = new ShiftMultiplyEncryption();
        EncryptionKey key = new EncryptionKey(new int[] { 2 });

        String result = algorithm.decrypt("AB", key);

        assertEquals("" + (char) ('A' / 2) + (char) ('B' / 2), result);
    }

    @Test
    void shiftMultiplyEncryption_encryptThenDecrypt_shouldReturnOriginalText()
    {
        EncryptionAlgorithm algorithm = new ShiftMultiplyEncryption();
        EncryptionKey key = new EncryptionKey(new int[] { 2 });

        String original = "You Are My Sunshine";
        String encrypted = algorithm.encrypt(original, key);
        String decrypted = algorithm.decrypt(encrypted, key);

        assertEquals(original, decrypted);
    }

    @Test
    void doubleEncryption_shouldEncryptWithTwoKeys()
    {
        EncryptionAlgorithm algorithm = new DoubleEncryption(new ShiftUpEncryption());
        EncryptionKey key = new EncryptionKey(new int[] { 1, 2 });

        String result = algorithm.encrypt("ab", key);

        assertEquals("de", result);
    }

    @Test
    void doubleEncryption_shouldDecryptWithReversedKeys()
    {
        EncryptionAlgorithm algorithm = new DoubleEncryption(new ShiftUpEncryption());
        EncryptionKey key = new EncryptionKey(new int[] { 1, 2 });

        String result = algorithm.decrypt("de", key);

        assertEquals("ab", result);
    }

    @Test
    void doubleEncryption_encryptThenDecrypt_shouldReturnOriginalText()
    {
        EncryptionAlgorithm algorithm = new DoubleEncryption(new ShiftUpEncryption());
        EncryptionKey key = new EncryptionKey(new int[] { 1, 2 });

        String data = "Jeffery ep";
        String encrypted = algorithm.encrypt(data, key);
        String decrypted = algorithm.decrypt(encrypted, key);

        assertEquals(data, decrypted);
    }

    @Test
    void repeatEncryption_shouldEncryptWithTwoKeys()
    {
        EncryptionAlgorithm algorithm = new RepeatEncryption(3, new ShiftUpEncryption());
        EncryptionKey key = new EncryptionKey(new int[] {1});

        String result = algorithm.encrypt("a", key);

        assertEquals("d", result);
    }

    @Test
    void repeatEncryption_shouldDecryptWithTwoKeys()
    {
        EncryptionAlgorithm algorithm = new RepeatEncryption(3, new ShiftUpEncryption());
        EncryptionKey key = new EncryptionKey(new int[] {1});

        String result = algorithm.decrypt("d", key);

        assertEquals("a", result);
    }

    @Test
    void repeatEncryption_encryptThenDecrypt_shouldReturnOriginalText()
    {
        EncryptionAlgorithm algorithm = new RepeatEncryption(3, new ShiftUpEncryption());
        EncryptionKey key = new EncryptionKey(new int[] {1});

        String data = "Jeffery ep";
        String encrypted = algorithm.encrypt(data, key);
        String decrypted = algorithm.decrypt(encrypted, key);

        assertEquals(data, decrypted);
    }

    @Test
    void shiftUpEncryption_requiredKeys_shouldReturnOne()
    {
        EncryptionAlgorithm algorithm = new ShiftUpEncryption();

        assertEquals(1, algorithm.requiredKeys());
    }

    @Test
    void xorEncryption_requiredKeys_shouldReturnOne()
    {
        EncryptionAlgorithm algorithm = new XorEncryption();

        assertEquals(1, algorithm.requiredKeys());
    }

    @Test
    void shiftMultiplyEncryption_requiredKeys_shouldReturnOne()
    {
        EncryptionAlgorithm algorithm = new ShiftMultiplyEncryption();

        assertEquals(1, algorithm.requiredKeys());
    }

    @Test
    void doubleEncryption_requiredKeys_shouldReturnTwo()
    {
        EncryptionAlgorithm algorithm = new DoubleEncryption(new ShiftUpEncryption());

        assertEquals(2, algorithm.requiredKeys());
    }

    @Test
    void repeatEncryption_requiredKeys_shouldReturnOne()
    {
        EncryptionAlgorithm algorithm = new RepeatEncryption(3, new ShiftUpEncryption());

        assertEquals(1, algorithm.requiredKeys());
    }
}