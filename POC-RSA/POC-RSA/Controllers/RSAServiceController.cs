﻿using AutoMapper;
using Microsoft.AspNetCore.Mvc;
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
        public readonly IRSARepository _rSARepository;

        ICryptographyService _cryptographyService;
        IMapper _mapper;
        public RSAServiceController(ICryptographyService cryptographyService, IMapper mapper, IRSARepository rSARepository)
        {
            _cryptographyService = cryptographyService;
            _rSARepository = rSARepository;
        }

        [HttpPost("Encrypt")]
        public object Encryption(TestTblDto PlainText)
        {
            return _rSARepository.Encryption(PlainText);
        }

        [HttpGet("GetPublicKey")]
        public string GetPK()
        {
            return _cryptographyService.GetPublicKey();
        }

        [HttpPost("Decrypt")]
        public object Decryption(string CipherText)
        {
            return _rSARepository.Decryption(CipherText);
        }

        [HttpPost("Encryptobject")]
        public object EncryptionObject(TestTbl PlainText, string pk)
        {
            return _rSARepository.Encryption<TestTbl>(PlainText, pk);
        }

        [HttpPost("Decryptobject")]
        public object Decryptionobject(string CipherText)
        {
            return _rSARepository.Decryptionobject<TestTbl>(CipherText);
        }
    }
}
