using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace NewWebApplication.Models
{
    public class AdminProductModel
    {
        [Required]
        [Display(Name = "Categories")]
        public List<Category> Categories { get; set; }

        [Required]
        [Display(Name = "Name")]
        public string Name { get; set; }

        [Required]
        [Display(Name = "Description")]
        public string Description { get; set; }

        [Required]
        [Display(Name = "Price")]
        public double Price { get; set; }

        [Required]
        [Display(Name = "Products")]
        public List<Product> Products { get; set; }

    }
}