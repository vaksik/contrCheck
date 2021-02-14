using ContrCheck.DAL.ModelsConfiguration;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Options;

namespace ContrCheck.DAL.EF
{
    public class ContrCheckContext : DbContext
    {
       
        private readonly DalOptions _dalOptions;
        public ContrCheckContext(IOptions<DalOptions> dalOptions)
        {
            //Database.Migrate();
            _dalOptions = dalOptions.Value;
        }

        public ContrCheckContext(DbContextOptions<ContrCheckContext> options, IOptions<DalOptions> databaseOptions) : base(options)
        {
            _dalOptions = databaseOptions.Value;
        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            //optionsBuilder.UseSqlServer(@"Server=(localdb)\mssqllocaldb;Database=ContragentCheck;Trusted_Connection=True;");
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseSqlServer(_dalOptions.ConnectionString.Local,
                    opt => opt.CommandTimeout(_dalOptions.DbSqlCommandTimeout).EnableRetryOnFailure());
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.ApplyConfiguration(new LegalEntityConfiguration());
            modelBuilder.ApplyConfiguration(new MassRegistrationConfiguration());
        }
    }
}
