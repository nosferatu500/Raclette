using System.Collections.Generic;

namespace NewWebApplication.Models
{
    public class CheckoutModel
    {
        public string TransactionID { get; set; }
        
        public List<Order> ShipInfo { get; set; }

        public List<CartItem> OrderItems { get; set; }

        public CheckoutModel()
        {
            TransactionID = string.Empty;
            ShipInfo = new List<Order>();
            OrderItems = new List<CartItem>();
        }
    }
}