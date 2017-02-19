using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DotVVM.Framework.ViewModel;

namespace NewWebApplication.Models
{
    public class DefaultViewModel : DotvvmViewModelBase
    {

        public string Title { get; set; }


        public DefaultViewModel()
        {
            Title = "Hello from DotVVM!";
        }

    }
}