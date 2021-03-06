﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.UI;

namespace WebApplicationTest
{
    public class BundleConfig
    {
        // For more information on Bundling, visit https://go.microsoft.com/fwlink/?LinkID=303951
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/jquery").Include(
            "~/Scripts/jquery-3.1.1.min.js"));

            bundles.Add(new ScriptBundle("~/bundles/jscrollpane").Include(
        "~/Scripts/jquery.jscrollpane.min.js"));

            bundles.Add(new ScriptBundle("~/bundles/mousewheel").Include(
        "~/Scripts/jquery.mousewheel.js"));

            bundles.Add(new ScriptBundle("~/bundles/bootstrap").Include(
        "~/Scripts/bootstrap.min.js"));

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

            bundles.Add(new ScriptBundle("~/bundles/WebFormsJs").Include(
                            "~/Scripts/WebForms/WebForms.js",
                            "~/Scripts/WebForms/WebUIValidation.js",
                            "~/Scripts/WebForms/MenuStandards.js",
                            "~/Scripts/WebForms/Focus.js",
                            "~/Scripts/WebForms/GridView.js",
                            "~/Scripts/WebForms/DetailsView.js",
                            "~/Scripts/WebForms/TreeView.js",
                            "~/Scripts/WebForms/WebParts.js"));

            // Order is very important for these files to work, they have explicit dependencies
            bundles.Add(new ScriptBundle("~/bundles/MsAjaxJs").Include(
                    "~/Scripts/WebForms/MsAjax/MicrosoftAjax.js",
                    "~/Scripts/WebForms/MsAjax/MicrosoftAjaxApplicationServices.js",
                    "~/Scripts/WebForms/MsAjax/MicrosoftAjaxTimer.js",
                    "~/Scripts/WebForms/MsAjax/MicrosoftAjaxWebForms.js"));

            // Use the Development version of Modernizr to develop with and learn from. Then, when you’re
            // ready for production, use the build tool at https://modernizr.com to pick only the tests you need
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                            "~/Scripts/modernizr-*"));



            ScriptManager.ScriptResourceMapping.AddDefinition(
                "respond",
                new ScriptResourceDefinition
                {
                    Path = "~/Scripts/respond.min.js",
                    DebugPath = "~/Scripts/respond.js",
                });




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