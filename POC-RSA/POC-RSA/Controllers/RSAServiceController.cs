using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using POC_RSA.Data;
using POC_RSA.Dto;
using POC_RSA.Model;
using POC_RSA.Repository;
using POC_RSA.Services;

namespace POC_RSA.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class RSAServiceController : ControllerBase
    {
        public readonly RSARepository rSARepository;
        ICryptographyService _cryptographyService;
        public RSAServiceController(ICryptographyService cryptographyService,AppDBContext appDBContext)
        {
            _cryptographyService = cryptographyService;
            rSARepository = new RSARepository(cryptographyService,appDBContext);
        }

        [HttpPost("Encrypt")]
        public object Encryption(DetailsDto PlainText)
        {
            return rSARepository.Encryption(PlainText);
        }

        [HttpGet("GetPublicKey")]
        public string GetPK()
        {
            return _cryptographyService.GetPublicKey();
        }

        [HttpPost("Decrypt")]
        public object Decryption(string CipherText)
        {
            return rSARepository.Decryption(CipherText);
        }

        [HttpPost("Encryptobject")]
        public object EncryptionObject(TestTbl PlainText, string pk)
        {
            return rSARepository.Encryption<TestTbl>(PlainText, pk);
        }

        [HttpPost("Decryptobject")]
        public object Decryptionobject(string CipherText)
        {
            return rSARepository.Decryptionobject<TestTbl>(CipherText);
        }
    }
}
