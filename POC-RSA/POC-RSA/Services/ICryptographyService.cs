using POC_RSA.Dto;

namespace POC_RSA.Services
{
    public interface ICryptographyService
    {
        string GetPublicKey();
        string Encrypt<T>(T data);
        string Encrypt<T>(T data, string pk);
        T Decrypt<T>(string ciphertext);
        object Decrypt(string ciphertext);
    }
}