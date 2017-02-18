using System.Collections.Generic;
using System.Data.Entity;

namespace NewWebApplication.Models
{
    public class ProductDatabaseInitializer : DropCreateDatabaseIfModelChanges<ProductContext>
    {
        
    }
}