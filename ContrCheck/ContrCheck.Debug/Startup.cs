using System.IO;
using ContrCheck.DAL;
using ContrCheck.DAL.EF;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

namespace ContrCheck.Debug
{
    public class Startup
    {
       
        public IConfiguration Configuration { get; set; }
        public Startup()
        {
            var builder = new ConfigurationBuilder()
                .AddJsonFile("appsettings.json");

            Configuration = builder.Build();
        }

        public void ConfigureServices(IServiceCollection services)
        {
            services.Configure<DalOptions>(Configuration.GetSection("DalOptions"));
            services.AddDbContext<ContrCheckContext>();
        }
    }
}
