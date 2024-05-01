using System.ComponentModel.DataAnnotations;

namespace POC_RSA.Model
{
    public class TestTbl
    {
        [Key]
        public int Id { get; set; }
        public string Data { get; set; }
    }
}
