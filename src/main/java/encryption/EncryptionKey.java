package encryption;

import java.util.Objects;

public record EncryptionKey(Integer firstKey, Integer secondKey)
{
    public EncryptionKey withFirstKeyOnly()
    {
        return new EncryptionKey(firstKey, firstKey);
    }

    public EncryptionKey withSecondKeyOnly()
    {
        return new EncryptionKey(secondKey, secondKey);
    }

    public int requireFirstKey()
    {
        return Objects.requireNonNull(firstKey, "First key is required");
    }

    public int requireSecondKey()
    {
        return Objects.requireNonNull(secondKey, "Second key is required");
    }
}
