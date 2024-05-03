using AutoMapper;
using POC_RSA.Data;
using POC_RSA.Dto;
using POC_RSA.Model;
using System.Security.Cryptography;
using System.Text;
using System.Text.Json;

namespace POC_RSA.Services
{
    public class CryptographyService : ICryptographyService
    {
        private string publicKey;
        private string privateKey;
        private string keyname = "tempkey";
        private readonly AppDBContext _appDBContext;
        private readonly IMapper _mapper;
        public CryptographyService(AppDBContext appDBContext,IMapper mapper)
        {
            _mapper = mapper;
            //Database table: Check Cryptography record exists or not
            var existrecord = appDBContext.Details.FirstOrDefault(d => d.Name == keyname);

            //if record found then read that value and set that value to public and private key.
            if(existrecord == null)
            {
                // Not found : Generate key and store those keys to database table with name as keyname;

                // Generate RSA key pair only once
                using (var rsa = new RSACryptoServiceProvider(1024))
                {
                    publicKey = rsa.ToXmlString(false);
                    privateKey = rsa.ToXmlString(true);
                }

                // Add new record to Details table
                var detailsDto = new DetailsDto
                {
                    ID = 0,
                    Name = keyname,
                    PublicKey = publicKey,
                    PrivateKey = privateKey
                };

                var detailsEntity = _mapper.Map<Details>(detailsDto);
                appDBContext.Details.Add(detailsEntity);
                appDBContext.SaveChanges();
            }
            else
            {
                //get keys form table
                publicKey = appDBContext.Details.
                                    Where(a => a.Name == keyname)
                                    .Select(a => a.PublicKey)
                                    .FirstOrDefault();

                privateKey = appDBContext.Details.
                                   Where(a => a.Name == keyname)
                                   .Select(a => a.PrivateKey)
                                   .FirstOrDefault();
            }

            this._appDBContext = appDBContext;
        }

        public CryptographyService(string name)
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