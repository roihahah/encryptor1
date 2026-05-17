package encryption;

public record EncryptionKey(int firstKey, int secondKey)
{
    public EncryptionKey withFirstKeyOnly()
    {
        return new EncryptionKey(firstKey,firstKey);
    }

    public EncryptionKey withSecondKeyOnly()
    {
        return new EncryptionKey(secondKey,secondKey);
    }
}
