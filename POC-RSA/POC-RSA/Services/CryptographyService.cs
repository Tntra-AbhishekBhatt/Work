using System.Security.Cryptography;

namespace POC_RSA.Services
{
    public class CryptographyService
    {
        public CryptographyService()
        {
            using (var rsa = new RSACryptoServiceProvider(1024))
            {
                var publicKey = rsa.ToXmlString(false);
                var privateKey = rsa.ToXmlString(true);
            }

        }

        //public string GetPublicKey()
        //{

        //}

        //public object Encrypt(string Plaintext)
        //{

        //}
        //public object Decrypt(string Ciphertext)
        //{

        //}

    }
}
