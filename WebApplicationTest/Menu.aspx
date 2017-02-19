<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="WebApplicationTest.Menu" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="banner">
        <div class="banner-text">
            <div class="container">
                <h2>Delicious food from the
                    <br>
                    <span>Best Chefs For you.</span></h2>
            </div>
        </div>
    </div>
    
    <div class="wthree-menu">  
		<img src="../../Content/images/i2.jpg" class="w3order-img" alt=""/>
		<div class="container">
			<h3 class="w3ls-title">Menu</h3>
			<p class="w3lsorder-text">Here your Raclette Food Varieties</p>
			<div class="menu-agileinfo">  
				<div class="col-md-4 col-sm-4 col-xs-6 menu-w3lsgrids"> 
					<a runat="server" href="~/Category/Breakfast"> Breakfast</a>
				</div> 
				<div class="col-md-4 col-sm-4 col-xs-6 menu-w3lsgrids"> 
					<a runat="server" href="~/Category/Salads"> Salads</a>
				</div> 
				<div class="col-md-4 col-sm-4 col-xs-6 menu-w3lsgrids"> 
					<a runat="server" href="~/Category/Hot"> Hot Food</a>
				</div> 
				<div class="col-md-4 col-sm-4 col-xs-6 menu-w3lsgrids"> 
					<a runat="server" href="~/Category/Breads"> Breads</a>
				</div> 
				<div class="col-md-4 col-sm-4 col-xs-6 menu-w3lsgrids"> 
					<a runat="server" href="~/Category/Pots"> Deli Pots & Little Pots</a>
				</div> 
				<div class="col-md-4 col-sm-4 col-xs-6 menu-w3lsgrids"> 
					<a runat="server" href="~/Category/Snacks"> Snacks & Treats</a>
				</div> 
				<div class="col-md-4 col-sm-4 col-xs-6 menu-w3lsgrids"> 
					<a runat="server" href="~/Category/Drinks"> Drinks</a>
				</div> 
				<div class="col-md-4 col-sm-4 col-xs-6 menu-w3lsgrids"> 
					<a runat="server" href="~/Category/SouthIndian"> South Indian</a>
				</div> 
				<div class="col-md-4 col-sm-4 col-xs-6 menu-w3lsgrids"> 
					<a runat="server" href="~/Category/Catering"> Catering</a>
				</div> 
				<div class="col-md-4 col-sm-4 col-xs-6 menu-w3lsgrids"> 
					<a runat="server" href="~/Category/Soups"> Soups</a>
				</div> 
				<div class="col-md-4 col-sm-4 col-xs-6 menu-w3lsgrids"> 
					<a runat="server" href="~/Category/Lunchbox"> Lunchbox</a>
				</div> 
				<div class="col-md-4 col-sm-4 col-xs-6 menu-w3lsgrids"> 
					<a runat="server" href="~/Category/Dinner"> Dinner</a>
				</div> 
				<div class="clearfix"> </div> 
			</div> 
			<div class="w3spl-menu">
				<h3 class="w3ls-title">Seasonal  Menu</h3>
				<p class="w3lsorder-text">Here your Raclette Food Varieties</p>
				<div class="menu-agileinfo">  
					<div class="col-md-4 col-sm-4 col-xs-6 menu-w3lsgrids"> 
						<a runat="server" href="~/Category/FondueSavoyarde">Fondue Savoyarde</a>
					</div> 
					<div class="col-md-4 col-sm-4 col-xs-6 menu-w3lsgrids"> 
						<a runat="server" href="~/Category/Garbure">Garbure</a>
					</div> 
					<div class="col-md-4 col-sm-4 col-xs-6 menu-w3lsgrids"> 
						<a runat="server" href="~/Category/Poulet">Poulet</a>
					</div> 
					<div class="col-md-4 col-sm-4 col-xs-6 menu-w3lsgrids"> 
						<a runat="server" href="~/Category/CherryClafouti">Cherry Clafouti</a>
					</div> 
					<div class="col-md-4 col-sm-4 col-xs-6 menu-w3lsgrids"> 
						<a runat="server" href="~/Category/SpinachSoufflé"> Spinach Soufflé</a>
					</div> 
					<div class="col-md-4 col-sm-4 col-xs-6 menu-w3lsgrids"> 
						<a runat="server" href="~/Category/Baeckeoffe">Baeckeoffe</a>
					</div> 
					<div class="col-md-4 col-sm-4 col-xs-6 menu-w3lsgrids"> 
						<a runat="server" href="~/Category/Ratatouille">Ratatouille</a>
					</div> 
					<div class="col-md-4 col-sm-4 col-xs-6 menu-w3lsgrids"> 
						<a runat="server" href="~/Category/Piperade">Piperade</a>
					</div>  
					<div class="clearfix"> </div> 
				</div> 
			</div>
		</div> 
	</div>
    
    <!--TODO: Make Page for Cashback and Get Offer-->
    <div class="add-products">  
		<div class="container">
			<h3 class="w3ls-title w3ls-title1">Today's Offers</h3>
			<div class="add-products-row">
				<div class="w3ls-add-grids">
					<a runat="server" href="~/Category/Cashback"> 
						<h4>Get <span>10%<br>Cashback</span></h4>
						<h5>Special Offer Today Only</h5>
						<h6>Order Now <i class="fa fa-arrow-circle-right" aria-hidden="true"></i></h6>
					</a>
				</div>
				<div class="w3ls-add-grids w3ls-add-grids-right">
					<a runat="server" href="~/Category/GetOffer"> 
						<h4>GET Upto<span><br>5% Offer</span></h4>
						<h5>On Order Lunch Today</h5>
						<h6>Order Now <i class="fa fa-arrow-circle-right" aria-hidden="true"></i></h6>
					</a>
				</div> 
				<div class="clearfix"> </div> 
			</div>  	 
		</div>
	</div>

</asp:Content>
