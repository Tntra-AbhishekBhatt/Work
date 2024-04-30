using System.Security.Cryptography;
using System.Text;

namespace POC_RSA.Repository
{
    public class RSAEncryption
    {
        private RSACryptoServiceProvider rsa;

        public RSAEncryption()
        {
            rsa = new RSACryptoServiceProvider();
        }

        public string GetPublicKey()
        {
            return rsa.ToXmlString(false);
        }

        public string GetPrivateKey()
        {
            return rsa.ToXmlString(true);
        }

        public void LoadPrivateKey(string privateKey)
        {
            rsa.FromXmlString(privateKey);
        }

        public string Encrypt(string plainText, string publicKey)
        {
            rsa.FromXmlString(publicKey);
            byte[] plainBytes = Encoding.UTF8.GetBytes(plainText);
            byte[] encryptedBytes = rsa.Encrypt(plainBytes, false);
            return Convert.ToBase64String(encryptedBytes);
        }

        public string Decrypt(string encryptedText)
        {
            byte[] encryptedBytes = Convert.FromBase64String(encryptedText);
            byte[] decryptedBytes = rsa.Decrypt(encryptedBytes, false);
            return Encoding.UTF8.GetString(decryptedBytes);
        }
    }
}