package encryption;

public record EncryptionKey(int[] keys)
{
    public EncryptionKey reverse()
    {
        int[] reversedKeys = keys.clone();

        int left = 0;
        int right = reversedKeys.length - 1;

        while (left < right)
        {
            int temp = reversedKeys[left];
            reversedKeys[left] = reversedKeys[right];
            reversedKeys[right] = temp;

            left++;
            right--;
        }

        return new EncryptionKey(reversedKeys);
    }
}
