using Microsoft.EntityFrameworkCore;
using POC_RSA.Model;

namespace POC_RSA.Data
{
    public class AppDBContext : DbContext
    {
        public AppDBContext(DbContextOptions options) : base(options)
        {
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Details>()
                .HasIndex(d => d.Name)
                .IsUnique();
        }
        public DbSet<Details> Details { get; set; }
        public DbSet<TestTbl> TestTbl { get; set; }
    }
}
