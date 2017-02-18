using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using NewWebApplication.Logic;
using NewWebApplication.Models;

namespace NewWebApplication.Controllers
{
    public class CheckoutController : Controller
    {
        // GET: Checkout
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Cancel()
        {
            return View();
        }

        public ActionResult Complete()
        {
            CheckoutModel model = new CheckoutModel();
            //if (!IsPostBack)

            // Verify user has completed the checkout process.
            if ((string)Session["userCheckoutCompleted"] != "true")
                {
                    Session["userCheckoutCompleted"] = string.Empty;
                    Response.Redirect("CheckoutError.aspx?" + "Desc=Unvalidated%20Checkout.");
                }

                NVPAPICaller payPalCaller = new NVPAPICaller();

                string retMsg = "";
                string token = "";
                string finalPaymentAmount = "";
                string PayerID = "";
                NVPCodec decoder = new NVPCodec();

                token = Session["token"].ToString();
                PayerID = Session["payerId"].ToString();
                var temp = Math.Round(Convert.ToDecimal(Session["payment_amt"]), 2).ToString();
                var replace = temp.Replace(",", ".");
                finalPaymentAmount = replace;

                bool ret = payPalCaller.DoCheckoutPayment(finalPaymentAmount, token, PayerID, ref decoder, ref retMsg);
                if (ret)
                {
                    // Retrieve PayPal confirmation value.
                    string PaymentConfirmation = decoder["PAYMENTINFO_0_TRANSACTIONID"].ToString();
                    model.TransactionID = PaymentConfirmation;

                    var _db = new ApplicationDbContext();
                    // Get the current order id.
                    int currentOrderId = -1;
                    if (Session["currentOrderId"] != string.Empty)
                    {
                        currentOrderId = Convert.ToInt32(Session["currentOrderID"]);
                    }
                    Order myCurrentOrder;
                    if (currentOrderId >= 0)
                    {
                        // Get the order based on order id.
                        myCurrentOrder = _db.Orders.Single(o => o.OrderId == currentOrderId);
                        // Update the order to reflect payment has been completed.
                        myCurrentOrder.PaymentTransactionId = PaymentConfirmation;
                        // Save to DB.
                        _db.SaveChanges();
                    }

                    // Clear shopping cart.
                    using (ShoppingCartActions usersShoppingCart =
                        new ShoppingCartActions())
                    {
                        usersShoppingCart.EmptyCart();
                    }

                    // Clear order id.
                    Session["currentOrderId"] = string.Empty;
                }
                else
                {
                    Response.Redirect("CheckoutError.aspx?" + retMsg);
                }
            
            return View(model);
        }

        public ActionResult Error()
        {
            return View();
        }

        public ActionResult Review()
        {
            CheckoutModel model = new CheckoutModel();
            NVPAPICaller payPalCaller = new NVPAPICaller();

            string retMsg = "";
            string token = "";
            string PayerID = "";
            NVPCodec decoder = new NVPCodec();
            token = Session["token"].ToString();

            bool ret = payPalCaller.GetCheckoutDetails(token, ref PayerID, ref decoder, ref retMsg);
            if (ret)
            {
                Session["payerId"] = PayerID;

                var myOrder = new Order();
                myOrder.OrderDate = Convert.ToDateTime(decoder["TIMESTAMP"].ToString());
                myOrder.Username = User.Identity.Name;
                myOrder.FirstName = decoder["FIRSTNAME"].ToString();
                myOrder.LastName = decoder["LASTNAME"].ToString();
                myOrder.Address = decoder["SHIPTOSTREET"].ToString();
                myOrder.City = decoder["SHIPTOCITY"].ToString();
                myOrder.State = decoder["SHIPTOSTATE"].ToString();
                myOrder.PostalCode = decoder["SHIPTOZIP"].ToString();
                myOrder.Country = decoder["SHIPTOCOUNTRYCODE"].ToString();
                myOrder.Email = decoder["EMAIL"].ToString();
                var temp = decoder["AMT"];
                var replace = temp.Replace(".", ",");
                myOrder.Total = Convert.ToDecimal(replace);

                // Verify total payment amount as set on CheckoutStart.aspx.
                try
                {
                    var temp2 = Math.Round(Convert.ToDecimal(Session["payment_amt"]), 2).ToString();
                    decimal paymentAmountOnCheckout = Convert.ToDecimal(temp2);
                    decimal paymentAmoutFromPayPal = Convert.ToDecimal(replace);
                    if (paymentAmountOnCheckout != paymentAmoutFromPayPal)
                    {
                        Response.Redirect("CheckoutError.aspx?" + "Desc=Amount%20total%20mismatch.");
                    }
                }
                catch (Exception)
                {
                    Response.Redirect("CheckoutError.aspx?" + "Desc=Amount%20total%20mismatch.");
                }

                // Get DB context.
                var _db = new ApplicationDbContext();

                // Add order to DB.
                _db.Orders.Add(myOrder);
                _db.SaveChanges();

                // Get the shopping cart items and process them.
                using (ShoppingCartActions usersShoppingCart = new ShoppingCartActions())
                {
                    List<CartItem> myOrderList = usersShoppingCart.GetCartItems();

                    // Add OrderDetail information to the DB for each product purchased.
                    for (int i = 0; i < myOrderList.Count; i++)
                    {
                        // Create a new OrderDetail object.
                        var myOrderDetail = new OrderDetail();
                        myOrderDetail.OrderId = myOrder.OrderId;
                        myOrderDetail.Username = User.Identity.Name;
                        myOrderDetail.ProductId = myOrderList[i].ProductId;
                        myOrderDetail.Quantity = myOrderList[i].Quantity;
                        myOrderDetail.UnitPrice = myOrderList[i].Product.UnitPrice;

                        // Add OrderDetail to DB.
                        _db.OrderDetails.Add(myOrderDetail);
                        _db.SaveChanges();
                    }

                    // Set OrderId.
                    Session["currentOrderId"] = myOrder.OrderId;

                    // Display Order information.
                    List<Order> orderList = new List<Order>();
                    orderList.Add(myOrder);
                    model.ShipInfo = orderList;

                    // Display OrderDetails.
                    model.OrderItems = myOrderList;
                }
            }
            else
            {
                Response.Redirect("CheckoutError.aspx?" + retMsg);
            }

            return View(model);
        }

        public void Confirm()
        {
            Session["userCheckoutCompleted"] = "true";
            Response.Redirect("~/Checkout/Complete.cshtml");
        }

        [Authorize]
        public void Start()
        {
            NVPAPICaller payPalCaller = new NVPAPICaller();
            string retMsg = "";
            string token = "";

            if (Session["payment_amt"] != null)
            {
                //string amt = Session["payment_amt"].ToString();
                var temp = Math.Round(Convert.ToDecimal(Session["payment_amt"]), 2).ToString();
                var replace = temp.Replace(",", ".");
                string amt = replace;

                bool ret = payPalCaller.ShortcutExpressCheckout(amt, ref token, ref retMsg);
                if (ret)
                {
                    Session["token"] = token;
                    Response.Redirect(retMsg);
                }
                else
                {
                    Response.Redirect("CheckoutError.aspx?" + retMsg);
                }
            }
            else
            {
                Response.Redirect("CheckoutError.aspx?ErrorCode=AmtMissing");
            }
        }
    }
}
