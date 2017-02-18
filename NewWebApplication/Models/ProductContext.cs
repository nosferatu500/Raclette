using System.Data.Entity;

namespace NewWebApplication.Models
{
    public class ProductContext : DbContext
    {
        public ProductContext() : base("TestDB")
        {
        }
        
    }
}