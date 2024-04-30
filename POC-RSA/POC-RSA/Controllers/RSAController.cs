using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using POC_RSA.Repository;

namespace POC_RSA.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class RSAController : ControllerBase
    {
        private readonly RSARepository _rsaRepository;
        public RSAController()
        {
            _rsaRepository = new RSARepository();
        }

        [HttpPost("generatekeys")]
        public object GenerateKeys(string type)
        {
            return _rsaRepository.GenerateKeys(type);
        }

        [HttpPost("encrypt")]
        public object Encryption(string plaintext)
        {
            return _rsaRepository.Encryption(plaintext);
        }

        [HttpPost("decrypt")]
        public object Decription(string ciphertext)
        {
            return _rsaRepository.Decryption(ciphertext);
        }

    }
}
