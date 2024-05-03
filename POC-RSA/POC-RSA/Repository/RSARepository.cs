using AutoMapper;
using POC_RSA.Data;
using POC_RSA.Dto;
using POC_RSA.Services;

namespace POC_RSA.Repository
{
    public class RSARepository : IRSARepository
    {
        private readonly ICryptographyService cryptographyService;
        private readonly IMapper _mapper;
        private readonly AppDBContext appDBContext;

        public RSARepository(ICryptographyService cryptography, AppDBContext appDBContext, IMapper mapper)
        {
            cryptographyService = cryptography;
            this.appDBContext = appDBContext;
            this._mapper = mapper;
        }

        public object Encryption(TestTblDto plaintext)
        {
            return cryptographyService.Encrypt(plaintext);
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
