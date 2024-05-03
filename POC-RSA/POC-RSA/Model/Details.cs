using System.ComponentModel.DataAnnotations;
namespace POC_RSA.Model
{
    public class Details
    {
        [Key]
        public int ID { get; set; }
        public string Name { get; set; }
        public string PublicKey{ get; set; }
        public string PrivateKey{ get; set; }
    }
}