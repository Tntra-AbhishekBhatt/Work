using System.Security.Cryptography;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Text.Json;

namespace POC_RSA.Services
{
    public class CryptographyService : ICryptographyService
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

        public string Encrypt<T>(T data)
        {
            try
            {
                // Serialize the data object into JSON
                string json = JsonSerializer.Serialize(data);

                // Encrypt the JSON string
                using (var rsa = new RSACryptoServiceProvider(1024))
                {
                    rsa.FromXmlString(publicKey);
                    var testData = Encoding.UTF8.GetBytes(json);
                    var encryptedData = rsa.Encrypt(testData, true);
                    var base64Encrypted = Convert.ToBase64String(encryptedData);
                    return base64Encrypted;
                }
            }
            catch (Exception ex)
            {
                // Log any exceptions
                Console.WriteLine("Encryption Error: " + ex.Message);
                return "Encryption Error: " + ex.Message;
            }
        }

        public T Decrypt<T>(string ciphertext)
        {
            try
            {
                // Decrypt the ciphertext
                var resultBytes = Convert.FromBase64String(ciphertext);
                using (var rsa = new RSACryptoServiceProvider(1024))
                {
                    rsa.FromXmlString(privateKey);
                    var decryptedBytes = rsa.Decrypt(resultBytes, true);
                    var decryptedJson = Encoding.UTF8.GetString(decryptedBytes);

                    // Deserialize the JSON back into a dynamic object
                    var decryptedData = JsonSerializer.Deserialize<T>(decryptedJson);
                    return decryptedData;
                }
            }
            catch (Exception ex)
            {
                // Log any exceptions
                Console.WriteLine("Decryption Error: " + ex.Message);
                throw ex;
            }
        }

        public string Encrypt<T>(T data, string pk)
        {
            if (pk != publicKey)
                throw new Exception("Invalid key for encryption");

            return Encrypt<T>(data);
        }

        public object Decrypt(string ciphertext)
        {
            var resultBytes = Convert.FromBase64String(ciphertext);
            using (var rsa = new RSACryptoServiceProvider(1024))
            {
                try
                {
                    // Load the private key from the stored privateKey field
                    rsa.FromXmlString(privateKey);

                    // Decrypt the data using OAEP padding
                    var decryptedBytes = rsa.Decrypt(resultBytes, true);
                    var decryptedData = Encoding.UTF8.GetString(decryptedBytes);

                    return decryptedData;
                }
                catch (CryptographicException ex)
                {
                    // Log the specific decryption error
                    Console.WriteLine("Decryption Error: " + ex.Message);
                    return "Decryption Error: " + ex.Message;
                }
                catch (Exception ex)
                {
                    // Log any other exceptions
                    Console.WriteLine("Unexpected Error: " + ex.Message);
                    return "Unexpected Error: " + ex.Message;
                }
            }
        }
    }
}