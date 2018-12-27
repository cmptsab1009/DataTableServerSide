using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(PaginationDatatableMVC.Startup))]
namespace PaginationDatatableMVC
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
