using Azure.Core;
using POC_RSA.Services;
using System.Security.Cryptography;
using System.Text;

namespace POC_RSA.Repository
{
    public class RSARepository
    {
        private readonly CryptographyService cryptographyService;
        public RSARepository()
        {
            cryptographyService = new CryptographyService();
        }

        public object Encryption(string plaintext)
        {

            return cryptographyService.Encrypt(plaintext);
            //try
            //{
            //    using (var rsa = new RSACryptoServiceProvider(1024))
            //    {
            //        var encrptPublicKey = GenerateKeys("Encryption");
            //        rsa.FromXmlString((string)encrptPublicKey);

            //        var testData = Encoding.UTF8.GetBytes(plaintext);
            //        var encryptedData = rsa.Encrypt(testData, true);
            //        var base64Encrypted = Convert.ToBase64String(encryptedData);

            //        return ("" + base64Encrypted);
            //    }
            //}
            //catch (Exception ex)
            //{
            //    return (""+ex);
            //}
        }

        public object Decryption(string ciphertext)
        {
            return cryptographyService.Decrypt(ciphertext);
            //try
            //{
            //    using (var rsa = new RSACryptoServiceProvider(1024))
            //    {
            //        var decryptPrivateKey = GenerateKeys("Decryption");
            //        rsa.FromXmlString((string)decryptPrivateKey);

            //        var resultBytes = Convert.FromBase64String(ciphertext);
            //        var decryptedBytes = rsa.Decrypt(resultBytes, true);
            //        var decryptedData = Encoding.UTF8.GetString(decryptedBytes);

            //        return decryptedData;
            //    }
            //}
            //catch (CryptographicException ex)
            //{
            //    // Log the specific OAEP decoding error
            //    Console.WriteLine("OAEP Decoding Error: " + ex.Message);
            //    return ("OAEP Decoding Error: " + ex.Message);
            //}
            //catch (Exception ex)
            //{
            //    // Log any other exceptions
            //    Console.WriteLine("Decryption Error: " + ex.Message);
            //    return ("Decryption Error: " + ex.Message);
            //}
        }

    }
}
