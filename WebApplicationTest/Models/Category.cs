using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using WebApplicationTest.Models.Categor;

namespace WebApplicationTest.Models
{
    public class Category
    {
        [ScaffoldColumn(false)]
        public int CategoryID { get; set; }

       // [Required, StringLength(100), Display(Name = "Name")]
       // public string CategoryName { get; set; }



        [Required, Display(Name = "Name")]
        public string FoodType { get; set; }

        [Required, Display(Name = "Name")]
        public string Cuisine { get; set; }

        [Required, Display(Name = "Name")]
        public string BoxType { get; set; }

        [Display(Name = "Product Description")]
        public string Description { get; set; }

        public virtual ICollection<Product> Products { get; set; }
    }
}