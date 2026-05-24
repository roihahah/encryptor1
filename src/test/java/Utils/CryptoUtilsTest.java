package Utils;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class CryptoUtilsTest
{
    @Test
    void encryptShouldChangeText()
    {
        String result = CryptoUtils.encrypt("abc", 1);

        assertEquals("bcd", result);
    }

    @Test
    void decryptShouldReturnOriginalText()
    {
        String result = CryptoUtils.decrypt("bcd", 1);

        assertEquals("abc", result);
    }

    @Test
    void encryptThenDecryptShouldReturnOriginalText()
    {
        String original = "hello world";
        int key = 3;

        String encrypted = CryptoUtils.encrypt(original, key);
        String decrypted = CryptoUtils.decrypt(encrypted, key);

        assertEquals(original, decrypted);
    }
}