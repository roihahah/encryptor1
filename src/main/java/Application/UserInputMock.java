package Application;
import encryption.*;

import java.nio.file.Path;

public enum UserInputMock
{
    SHIFT_UP("ShiftUp", new ShiftUpEncryption(), EncryptionApplication.KEY_FILE_PATH),
    SHIFT_MULTIPLY("ShiftMultiply", new ShiftMultiplyEncryption(), EncryptionApplication.KEY_FILE_PATH),
    DOUBLE("Double", new DoubleEncryption(new ShiftUpEncryption()), EncryptionApplication.TWO_KEYS_FILE_PATH),
    REPEAT("Repeat", new RepeatEncryption(3, new ShiftUpEncryption()), EncryptionApplication.KEY_FILE_PATH),
    XOR("XOR", new XorEncryption(), EncryptionApplication.KEY_FILE_PATH);

    private final String displayName;
    private final EncryptionAlgorithm algorithm;
    private final Path keyFilePath;

    UserInputMock(String displayName, EncryptionAlgorithm algorithm, Path keyFilePath)
    {
        this.displayName = displayName;
        this.algorithm = algorithm;
        this.keyFilePath = keyFilePath;
    }

    public String displayName()
    {
        return displayName;
    }

    public EncryptionAlgorithm algorithm()
    {
        return algorithm;
    }

    public Path keyFilePath()
    {
        return keyFilePath;
    }
}
