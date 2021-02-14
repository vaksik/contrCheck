using Microsoft.Extensions.DependencyInjection;

namespace ContrCheck.Debug
{
    class Program
    {
        static void Main(string[] args)
        {
            var services   = new ServiceCollection();
            var startup = new Startup();
            startup.ConfigureServices(services);
        }
       
    }
}
