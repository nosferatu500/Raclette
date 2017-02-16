using System.Web;
using System.Web.Optimization;

namespace NewWebApplication
{
    public class BundleConfig
    {
        // For more information on bundling, visit https://go.microsoft.com/fwlink/?LinkId=301862
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
                        "~/Scripts/jquery-{version}.js"));

            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                        "~/Scripts/jquery.validate*"));

            // Use the development version of Modernizr to develop with and learn from. Then, when you're
            // ready for production, use the build tool at https://modernizr.com to pick only the tests you need.
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                        "~/Scripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
                      "~/Scripts/bootstrap.js",
                      "~/Scripts/respond.js"));

            bundles.Add(new ScriptBundle("~/bundles/jscrollpane").Include(
        "~/Scripts/jquery.jscrollpane.min.js"));

            bundles.Add(new ScriptBundle("~/bundles/mousewheel").Include(
        "~/Scripts/jquery.mousewheel.js"));

            bundles.Add(new ScriptBundle("~/bundles/minicart").Include(
        "~/Scripts/minicart.js"));

            bundles.Add(new ScriptBundle("~/bundles/move-top").Include(
        "~/Scripts/move-top.js"));

            bundles.Add(new ScriptBundle("~/bundles/owl").Include(
        "~/Scripts/owl.carousel.js"));

            bundles.Add(new ScriptBundle("~/bundles/SmoothScroll").Include(
        "~/Scripts/SmoothScroll.min.js"));

            bundles.Add(new ScriptBundle("~/bundles/easing").Include(
         "~/Scripts/easing.js"));


            ///////////Temp/////////////////
            bundles.Add(new ScriptBundle("~/bundles/temp").Include(
                    "~/Scripts/Temp/demo-1.js",
                    "~/Scripts/Temp/dscountdown.min.js",
                    "~/Scripts/Temp/jquery-2.1.4.min.js",
                    "~/Scripts/Temp/particles.min.js"));

            bundles.Add(new StyleBundle("~/Content/temp").Include(
               "~/Content/Temp/dscountdown.css",
               "~/Content/Temp/style.css"));

            ////////////////////////////////////



            bundles.Add(new StyleBundle("~/Content/css").Include(
                "~/Content/bootstrap.min.css",
                "~/Content/style.css",
                "~/Content/font-awesome.css",
                "~/Content/owl.carousel.css"));
        }
    }
}
