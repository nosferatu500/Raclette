﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using NewWebApplication.Logic;
using NewWebApplication.Models;

namespace WebApplicationTest.Checkout
{
    public partial class CheckoutReview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
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
                    ProductContext _db = new ProductContext();

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
                        /*ShipInfo.DataSource = orderList;
                        ShipInfo.DataBind();

                        // Display OrderDetails.
                        OrderItemList.DataSource = myOrderList;
                        OrderItemList.DataBind();*/
                    }
                }
                else
                {
                    Response.Redirect("CheckoutError.aspx?" + retMsg);
                }
            }
        }

        protected void CheckoutConfirm_Click(object sender, EventArgs e)
        {
            Session["userCheckoutCompleted"] = "true";
            Response.Redirect("~/Checkout/CheckoutComplete.aspx");
        }
    }
}