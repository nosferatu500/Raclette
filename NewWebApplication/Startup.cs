using System.Web.Hosting;
using DotVVM.Framework;
using Microsoft.Owin;
using Owin;
using DotVVM.Framework.Configuration;

[assembly: OwinStartup(typeof(NewWebApplication.Startup))]
namespace NewWebApplication
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
            // initialize DotVVM
            var applicationPhysicalPath = HostingEnvironment.ApplicationPhysicalPath;
            var dotvvmConfiguration = app.Use<IDotvvmStartup>(applicationPhysicalPath);
        }
    }
}
