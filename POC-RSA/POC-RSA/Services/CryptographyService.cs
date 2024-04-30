using System.Security.Cryptography;
using System.Security.Cryptography.X509Certificates;
using System.Text;

namespace POC_RSA.Services
{
    public class CryptographyService
    {
        private string publicKey;
        private string privateKey;
        public CryptographyService()
        {
            // Generate RSA key pair only once
            using (var rsa = new RSACryptoServiceProvider(1024))
            {
                publicKey = rsa.ToXmlString(false);
                privateKey = rsa.ToXmlString(true);
            }
        }

        public string GetPublicKey()
        {
            return publicKey;
        }

        public object Encrypt(string plaintext)
        {
            var testData = Encoding.UTF8.GetBytes(plaintext);

            using (var rsa = new RSACryptoServiceProvider(1024))
            {
                try
                {
                    // client encrypting data with public key issued by server                    
                    rsa.FromXmlString(publicKey.ToString());

                    var encryptedData = rsa.Encrypt(testData, true);

                    var base64Encrypted = Convert.ToBase64String(encryptedData);

                    return base64Encrypted;
                }
                catch (CryptographicException ex)
                {
                    // Log the specific encryption error
                    Console.WriteLine("Encryption Error: " + ex.Message);
                    return "Encryption Error: " + ex.Message;
                }
                catch (Exception ex)
                {
                    // Log any other exceptions
                    Console.WriteLine("Unexpected Error: " + ex.Message);
                    return "Unexpected Error: " + ex.Message;
                }
                finally
                {
                    rsa.PersistKeyInCsp = false;
                }
            }
        }

        public object Decrypt(string ciphertext)
        {
            var resultBytes = Convert.FromBase64String(ciphertext);
            using (var rsa = new RSACryptoServiceProvider(1024))
            {
                try
                {
                    // server decrypting data with private key using OAEP padding                  
                    rsa.FromXmlString(rsa.ToXmlString(true));

                    var decryptedBytes = rsa.Decrypt(resultBytes, true);
                    var decryptedData = Encoding.UTF8.GetString(decryptedBytes);

                    return decryptedData;
                }
                catch (CryptographicException ex)
                {
                    // Log the specific OAEP decoding error
                    Console.WriteLine("OAEP Decoding Error: " + ex.Message);
                    return "OAEP Decoding Error: " + ex.Message;
                }
                catch (Exception ex)
                {
                    // Log any other exceptions
                    Console.WriteLine("Decryption Error: " + ex.Message);
                    return "Decryption Error: " + ex.Message;
                }
            }
        }

    }
}