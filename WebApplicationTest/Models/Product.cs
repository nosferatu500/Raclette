using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WebApplicationTest.Models
{
    public class Product
    {
        [ScaffoldColumn(false)]
        public int ProductID { get; set; }

        [Required, StringLength(100), Display(Name = "Name")]
        public string ProductName { get; set; }

        [Required, StringLength(10000), Display(Name = "Product Description"), DataType(DataType.MultilineText)]
        public string Description { get; set; }

        public string ImagePath { get; set; }

        [Display(Name = "Price")]
        public double? UnitPrice { get; set; }

        public double? Discount => UnitPrice.Value - UnitPrice.Value / 10;

        public long MinorValueAmount
        {
            get
            {
                return (long)Math.Round(UnitPrice.Value * 100);
            }
        }
        public string UtcValueAmount
        {
            get
            {
                var minor = MinorValueAmount;
                var fractional = string.Empty;
                if (10 > minor % 100)
                {
                    fractional = $"0{minor % 100}";
                }
                else
                {
                    fractional = $"{minor % 100}";
                }

                return $"{minor / 100}.{fractional}";
            }
        }

        public int? CategoryID { get; set; }

        public virtual Category Category { get; set; }
    }
}