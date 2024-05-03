using AutoMapper;
using Microsoft.EntityFrameworkCore;
using POC_RSA.Data;
using POC_RSA.Dto;
using POC_RSA.Model;
using POC_RSA.Services;
using System;
using System.Linq;
using Xunit;

namespace POC_RSA.Tests
{
    public class CryptographyServiceTests
    {
        private readonly DbContextOptions<AppDBContext> _options;

        public CryptographyServiceTests()
        {
            _options = new DbContextOptionsBuilder<AppDBContext>()
                .UseInMemoryDatabase(databaseName: "TestDatabase")
                .Options;

            using (var context = new AppDBContext(_options))
            {
                context.Details.Add(new Details
                {
                    ID = 1,
                    Name = "Cryptography",
                    PublicKey = "public_key",
                    PrivateKey = "private_key"
                });

                context.SaveChanges();
            }
        }

        [Fact]
        public void EncryptAndDecrypt_ShouldWorkCorrectly()
        {
            using (var context = new AppDBContext(_options))
            {
                var mapperConfig = new MapperConfiguration(cfg =>
                {
                    cfg.CreateMap<DetailsDto, Details>();
                });
                var mapper = mapperConfig.CreateMapper();

                var service = new CryptographyService(context, mapper);

                // Encrypt
                var encryptedData = service.Encrypt("test");

                // Decrypt
                string decryptedData = null;
                try
                {
                    decryptedData = service.Decrypt<string>(encryptedData);
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"Decryption Error: {ex.Message}");
                }

                Console.WriteLine($"Encrypted Data: {encryptedData}");
                Console.WriteLine($"Decrypted Data: {decryptedData}");

                Assert.Equal("test", decryptedData);
            }
        }


        [Fact]
        public void EncryptWithInvalidKey_ShouldThrowException()
        {
            using (var context = new AppDBContext(_options))
            {
                var mapperConfig = new MapperConfiguration(cfg =>
                {
                    cfg.CreateMap<DetailsDto, Details>();
                });
                var mapper = mapperConfig.CreateMapper();

                var service = new CryptographyService(context, mapper);

                Assert.Throws<Exception>(() => service.Encrypt("test", "invalid_key"));
            }
        }
    }
}
