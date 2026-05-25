package encryption;

import org.apache.commons.lang3.ArrayUtils;

public record EncryptionKey(int[] keys)
{
    public EncryptionKey reverse()
    {
        int[] reversedKeys = keys.clone();
        ArrayUtils.reverse(reversedKeys);

        return new EncryptionKey(reversedKeys);
    }
}
