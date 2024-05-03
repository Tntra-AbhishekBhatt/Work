using POC_RSA.Dto;

namespace POC_RSA.Repository
{
    public interface IRSARepository
    {
        public object Encryption(TestTblDto plaintext);
        public object Encryption<T>(T plaintext, string pk);
        public object Decryptionobject<T>(string ciphertext);
        public object Decryption(string ciphertext);
    }
}