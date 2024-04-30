using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using POC_RSA.Repository;

namespace POC_RSA.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class RSAController : ControllerBase
    {
        private readonly RSAEncryption rsaEncryption;

        public RSAController()
        {
            rsaEncryption = new RSAEncryption();
        }

        [HttpGet("publickey")]
        public ActionResult<string> GetPublicKey()
        {
            return Ok(rsaEncryption.GetPublicKey());
        }

        [HttpGet("privatekey")]
        public ActionResult<string> GetPrivateKey()
        {
            return Ok(rsaEncryption.GetPrivateKey());
        }

        [HttpPost("encrypt")]
        public ActionResult<string> Encrypt([FromBody] string plainText, [FromQuery] string publicKey)
        {
            string encryptedText = rsaEncryption.Encrypt(plainText, publicKey);
            return Ok(encryptedText);
        }

        [HttpPost("decrypt")]
        public ActionResult<string> Decrypt([FromBody] string encryptedText, [FromQuery] string privateKey)
        {
            rsaEncryption.LoadPrivateKey(privateKey);
            string decryptedText = rsaEncryption.Decrypt(encryptedText);
            return Ok(decryptedText);
        }
    }
}