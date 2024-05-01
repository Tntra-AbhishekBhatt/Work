using Azure.Core;
using POC_RSA.Data;
using POC_RSA.Dto;
using POC_RSA.Model;
using POC_RSA.Services;
using System.Security.Cryptography;
using System.Text;

namespace POC_RSA.Repository
{
    public class RSARepository
    {
        private readonly ICryptographyService cryptographyService;
        private readonly AppDBContext appDBContext;

        public RSARepository(ICryptographyService cryptography,AppDBContext appDBContext)
        {
            //cryptographyService = new CryptographyService();
            cryptographyService = cryptography;
            this.appDBContext = appDBContext;
        }

        public object Encryption(DetailsDto plaintext)
        {
            return cryptographyService.Encrypt(plaintext);

            //var data = cryptographyService.Encrypt(plaintext);

            //if (data == null) throw new ArgumentNullException(nameof(plaintext));
            //TestTbl testTbl = new TestTbl();
            //testTbl.Data = plaintext;
            //appDBContext.TestTbl.Add(testTbl);
            //appDBContext.SaveChanges();

            //return data;
        }

        public object Encryption<T>(T plaintext, string pk)
        {
            return cryptographyService.Encrypt(plaintext, pk);
        }

        public object Decryptionobject<T>(string ciphertext)
        {
            return cryptographyService.Decrypt<T>(ciphertext);
        }

        public object Decryption(string ciphertext)
        {
            return cryptographyService.Decrypt(ciphertext);
        }

    }
}
