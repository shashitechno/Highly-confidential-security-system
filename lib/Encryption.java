import org.jasypt.util.binary.BasicBinaryEncryptor;
import org.jasypt.util.text.BasicTextEncryptor;


public class Encryption {
	
	public String textEncryption(String textToEncrypt,String myEncryptionPassword )
	{
		BasicTextEncryptor textEncryptor = new BasicTextEncryptor();
		textEncryptor.setPassword(myEncryptionPassword);
		String myEncryptedText = textEncryptor.encrypt(textToEncrypt);
		
		return myEncryptedText;
	}
	public byte[] binaryEncryption(byte[] myBytes,String myEncryptionPassword)
	{
		BasicBinaryEncryptor binaryEncryptor = new BasicBinaryEncryptor();
		binaryEncryptor.setPassword(myEncryptionPassword);
		byte[] myEncryptedBytes = binaryEncryptor.encrypt(myBytes);
		return myEncryptedBytes;
	}
	

}
