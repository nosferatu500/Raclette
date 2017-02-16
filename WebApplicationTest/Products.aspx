﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="WebApplicationTest.Products" %>

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

    <div class="products">
        <div class="container">
            <div class="col-md-9 product-w3ls-right">

                <div class="product-top">
                    <h4>Food Collection</h4>
                    <ul>
                        <li class="dropdown head-dpdn">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Filter By<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Low price</a></li>
                                <li><a href="#">High price</a></li>
                                <li><a href="#">Latest</a></li>
                            </ul>
                        </li>
                        <li class="dropdown head-dpdn">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Food Type<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Breakfast</a></li>
                                <li><a href="#">Lunch</a></li>
                                <li><a href="#">Dinner</a></li>
                            </ul>
                        </li>
                    </ul>
                    <div class="clearfix"></div>
                </div>
                <div class="products-row">
                    <asp:ListView ID="productList" runat="server"
                        DataKeyNames="ProductID" GroupItemCount="3"
                        ItemType="WebApplicationTest.Models.Product" SelectMethod="GetListProducts">
                        <EmptyDataTemplate>
                            <table>
                                <tr>
                                    <td>No data was returned.</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <EmptyItemTemplate>
                            <td />
                        </EmptyItemTemplate>
                        <GroupTemplate>

                            <tr id="itemPlaceholderContainer" runat="server">
                                <td class="autoResizeImage" id="itemPlaceholder" runat="server"></td>
                            </tr>
                        </GroupTemplate>
                        <ItemTemplate>
                            <div class="container">
                                <td runat="server">
                                    <div class="col-xs-6 col-sm-12 product-grids">
                                        <div class="flip-container">
                                            <div class="flipper agile-products">
                                                <div class="front">
                                                    <!-- <a href="<%#: GetRouteUrl("ProductByNameRoute", new {productName = Item.ProductName}) %>">
                                            <image class="img-responsive" src='/Catalog/Images/Thumbs/<%#:Item.ImagePath%>'
                                                width="100" height="75" border="1" />
                                        </a>-->
                                                    <img src="../../Content/images/g6.jpg" class="img-responsive" alt="img">
                                                    <div class="agile-product-text">
                                                        <h5><%#: Item.ProductName%></h5>
                                                    </div>
                                                </div>
                                                <div class="back">
                                                    <a href="<%#: GetRouteUrl("ProductByNameRoute", new {productName = Item.ProductName}) %>">
                                                        <%#:Item.ProductName%>
                                                    </a>
                                                    <p>Maecenas condimentum interdum lacus, ac varius nisl.</p>
                                                    <h6><%#: Item.UnitPrice%><sup>$</sup></h6>
                                                    <form action="#" method="post">
                                                        <input type="hidden" name="cmd" value="_cart">
                                                        <input type="hidden" name="add" value="1">
                                                        <input type="hidden" name="w3ls_item" value="<%#: Item.ProductName%>">
                                                        <input type="hidden" name="amount" value="<%#: Item.UnitPrice%>">
                                                        <a href="/AddToCart.aspx?productID=<%#:Item.ProductID %>">
                                                            <span class="w3ls-cart pw3ls-cart">
                                                                <b>Add To Cart<b>
                                                            </span>
                                                        </a>
                                                        <span class="w3-agile-line"></span>
                                                        <a href="#" data-toggle="modal" data-target="#myModal<%#:Item.ProductID %>">More</a>




                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                            </div>
                        </ItemTemplate>
                        <LayoutTemplate>

                            <table id="groupPlaceholderContainer" runat="server" style="width: 100%">
                                <tbody>
                                    <tr id="groupPlaceholder"></tr>
                                </tbody>

                            </table>


                        </LayoutTemplate>
                    </asp:ListView>
                </div>
            </div>


            <div class="col-md-3 rsidebar">
                <div class="rsidebar-top">
                    <div class="slider-left">
                        <h4>CHOOSE BY AGE</h4>
                        <div class="row row1 scroll-pane">
                            <label class="checkbox">
                                <input type="checkbox" name="checkbox"><i></i>Kids</label>
                            <label class="checkbox">
                                <input type="checkbox" name="checkbox"><i></i>Youngers</label>
                            <label class="checkbox">
                                <input type="checkbox" name="checkbox"><i></i>Adults</label>
                            <label class="checkbox">
                                <input type="checkbox" name="checkbox"><i></i>Senior Citizen</label>
                        </div>
                    </div>
                    <div class="sidebar-row">
                        <h4>By Cuisine</h4>
                        <ul class="faq">
                            <li class="item1"><a href="#">Indian Food<span class="glyphicon glyphicon-menu-down"></span></a>
                                <ul>
                                    <li class="subitem1"><a href="#">Breakfast</a></li>
                                    <li class="subitem1"><a href="#">Lunch</a></li>
                                    <li class="subitem1"><a href="#">Dinner</a></li>
                                    <li class="subitem1"><a href="#">Trending Food</a></li>
                                </ul>
                            </li>
                            <li class="item2"><a href="#">Italian Food<span class="glyphicon glyphicon-menu-down"></span></a>
                                <ul>
                                    <li class="subitem1"><a href="#">Panzanella</a></li>
                                    <li class="subitem1"><a href="#">Margherita Pizza </a></li>
                                    <li class="subitem1"><a href="#">Panna Cotta</a></li>
                                    <li class="subitem1"><a href="#">Corn Cannelloni</a></li>
                                </ul>
                            </li>
                            <li class="item3"><a href="#">American Food<span class="glyphicon glyphicon-menu-down"></span></a>
                                <ul>
                                    <li class="subitem1"><a href="#">Sandwiches</a></li>
                                    <li class="subitem1"><a href="#">Hot dog</a></li>
                                    <li class="subitem1"><a href="#">Chicken bog</a></li>
                                </ul>
                            </li>
                        </ul>
                        <div class="clearfix"></div>
                        <!-- script for tabs -->
                        <script type="text/javascript">
                            $(function () {

                                var menu_ul = $('.faq > li > ul'),
                                    menu_a = $('.faq > li > a');

                                menu_ul.hide();

                                menu_a.click(function (e) {
                                    e.preventDefault();
                                    if (!$(this).hasClass('active')) {
                                        menu_a.removeClass('active');
                                        menu_ul.filter(':visible').slideUp('normal');
                                        $(this).addClass('active').next().stop(true, true).slideDown('normal');
                                    } else {
                                        $(this).removeClass('active');
                                        $(this).next().stop(true, true).slideUp('normal');
                                    }
                                });

                            });
                        </script>
                        <!-- script for tabs -->
                    </div>
                    <div class="sidebar-row">
                        <h4>DISCOUNTS</h4>
                        <div class="row row1 scroll-pane">
                            <label class="checkbox">
                                <input type="checkbox" name="checkbox"><i></i>30% - 20% (2)</label>
                            <label class="checkbox">
                                <input type="checkbox" name="checkbox"><i></i>10% - 5% (5)</label>
                            <label class="checkbox">
                                <input type="checkbox" name="checkbox"><i></i>30% - 20% (7)</label>
                            <label class="checkbox">
                                <input type="checkbox" name="checkbox"><i></i>10% - 5% (2)</label>
                            <label class="checkbox">
                                <input type="checkbox" name="checkbox"><i></i>Other(50)</label>
                        </div>
                    </div>
                    <div class="sidebar-row">
                        <h4>DELIVERY TIME</h4>
                        <div class="row row1 scroll-pane">
                            <label class="checkbox">
                                <input type="checkbox" name="checkbox" checked=""><i></i>6.30 am to 8.30 am</label>
                            <label class="checkbox">
                                <input type="checkbox" name="checkbox"><i></i>11.30 am to 1.30 pm</label>
                            <label class="checkbox">
                                <input type="checkbox" name="checkbox"><i></i>7.30 pm to 10.00 pm</label>
                        </div>
                    </div>
                </div>
                <div class="related-row">
                    <h4>Related Searches</h4>
                    <ul>
                        <li><a runat="server" href="~/Products">Salads </a></li>
                        <li><a runat="server" href="~/Products">Vegetarian</a></li>
                        <li><a runat="server" href="~/Products">Dinner</a></li>
                        <li><a runat="server" href="~/Products">Diet Soup</a></li>
                        <li><a runat="server" href="~/Products">Sweets</a></li>
                        <li><a runat="server" href="~/Products">Seasonal</a></li>
                        <li><a runat="server" href="~/Products">Breakfast</a></li>
                        <li><a runat="server" href="~/Products">Italian Food</a></li>
                        <li><a runat="server" href="~/Products">Meals</a></li>
                    </ul>
                </div>
                <div class="related-row">
                    <h4>YOU MAY ALSO LIKE</h4>
                    <div class="galry-like">
                        <a href="#" data-toggle="modal" data-target="#myModal2">
                            <img src="../../Content/images/s1.jpg" class="img-responsive" alt="img"></a>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <div class="container">
        <div class="w3agile-deals prds-w3text">
            <h5>Vestibulum maximus quam et quam egestas imperdiet. In dignissim auctor viverra.</h5>
        </div>
    </div>
    <div class="w3agile-spldishes">
        <div class="container">
            <h3 class="w3ls-title">Special Foods</h3>
            <div class="spldishes-agileinfo">
                <div class="col-md-3 spldishes-w3left">
                    <h5 class="w3ltitle">Raclette Specials</h5>
                    <p>Vero vulputate enim non justo posuere placerat Phasellus mauris vulputate enim non justo enim .</p>
                </div>
                <div class="col-md-9 spldishes-grids">
                    <!-- Owl-Carousel -->
                    <div id="owl-demo" class="owl-carousel text-center agileinfo-gallery-row">
                        <a runat="server" href="~/Products" class="item g1">
                            <img class="lazyOwl" src="../../Content/images/g1.jpg" title="Our latest gallery" alt="" />
                            <div class="agile-dish-caption">
                                <h4>Duis congue</h4>
                                <span>Neque porro quisquam est qui dolorem </span>
                            </div>
                        </a>
                        <a runat="server" href="~/Products" class="item g1">
                            <img class="lazyOwl" src="../../Content/images/g2.jpg" title="Our latest gallery" alt="" />
                            <div class="agile-dish-caption">
                                <h4>Duis congue</h4>
                                <span>Neque porro quisquam est qui dolorem </span>
                            </div>
                        </a>
                        <a runat="server" href="~/Products" class="item g1">
                            <img class="lazyOwl" src="../../Content/images/g3.jpg" title="Our latest gallery" alt="" />
                            <div class="agile-dish-caption">
                                <h4>Duis congue</h4>
                                <span>Neque porro quisquam est qui dolorem </span>
                            </div>
                        </a>
                        <a runat="server" href="~/Products" class="item g1">
                            <img class="lazyOwl" src="../../Content/images/g4.jpg" title="Our latest gallery" alt="" />
                            <div class="agile-dish-caption">
                                <h4>Duis congue</h4>
                                <span>Neque porro quisquam est qui dolorem </span>
                            </div>
                        </a>
                        <a runat="server" href="~/Products" class="item g1">
                            <img class="lazyOwl" src="../../Content/images/g5.jpg" alt="" />
                            <div class="agile-dish-caption">
                                <h4>Duis congue</h4>
                                <span>Neque porro quisquam est qui dolorem </span>
                            </div>
                        </a>
                        <a runat="server" href="~/Products" class="item g1">
                            <img class="lazyOwl" src="../../Content/images/g1.jpg" title="Our latest gallery" alt="" />
                            <div class="agile-dish-caption">
                                <h4>Duis congue</h4>
                                <span>Neque porro quisquam est qui dolorem </span>
                            </div>
                        </a>
                        <a runat="server" href="~/Products" class="item g1">
                            <img class="lazyOwl" src="../../Content/images/g2.jpg" title="Our latest gallery" alt="" />
                            <div class="agile-dish-caption">
                                <h4>Duis congue</h4>
                                <span>Neque porro quisquam est qui dolorem </span>
                            </div>
                        </a>
                        <a runat="server" href="~/Products" class="item g1">
                            <img class="lazyOwl" src="../../Content/images/g3.jpg" title="Our latest gallery" alt="" />
                            <div class="agile-dish-caption">
                                <h4>Duis congue</h4>
                                <span>Neque porro quisquam est qui dolorem </span>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>


    <asp:ListView ID="ListView2" runat="server"
        DataKeyNames="ProductID" 
        ItemType="WebApplicationTest.Models.Product" SelectMethod="GetListProducts">

        <ItemTemplate>
            <div class="container">
                <td runat="server">
                    <div class="modal video-modal fade" id="myModal<%#:Item.ProductID %>" tabindex="-1" role="dialog" aria-labelledby="myModal<%#:Item.ProductID %>">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                </div>
                                <section>
                                    <div class="modal-body">
                                        <div class="col-md-5 modal_body_left">
                                            <img src="<%#:Item.ImagePath %>" alt=" " class="img-responsive">
                                        </div>
                                        <div class="col-md-7 modal_body_right single-top-right">
                                            <h3 class="item_name"><%#:Item.ProductName %></h3>
                                            <p>Proin placerat urna et consequat efficitur, sem odio blandit enim</p>
                                            <div class="single-rating">
                                                <ul>
                                                    <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
                                                    <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
                                                    <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
                                                    <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
                                                    <li class="w3act"><i class="fa fa-star-o" aria-hidden="true"></i></li>
                                                    <li class="rating">20 reviews</li>
                                                    <li><a href="#">Add your review</a></li>
                                                </ul>
                                            </div>
                                            <div class="single-price">
                                                <ul>
                                                    <li>$<%#:Item.Discount %></li>
                                                    <li><del>$<%#:Item.UnitPrice %></del></li>
                                                    <li><span class="w3off">10% OFF</span></li>
                                                    <li>Ends on : Dec,5th</li>
                                                    <li><a href="#"><i class="fa fa-gift" aria-hidden="true"></i>Coupon</a></li>
                                                </ul>
                                            </div>
                                            <p class="single-price-text">Fusce a egestas nibh, eget ornare erat. Proin placerat, urna et consequat efficitur, sem odio blandit enim, sit amet euismod turpis est mattis lectus. Vestibulum maximus quam et quam egestas imperdiet. In dignissim auctor viverra. </p>
                                            <form action="#" method="post">
                                                <input type="hidden" name="cmd" value="_cart" />
                                                <input type="hidden" name="add" value="1" />
                                                <input type="hidden" name="w3ls_item" value="<%#:Item.ProductName %>" />
                                                <input type="hidden" name="amount" value="<%#:Item.UnitPrice %>" />
                                                <button type="submit" class="w3ls-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i>Add to cart</button>
                                            </form>
                                            <a href="#" class="w3ls-cart w3ls-cart-like"><i class="fa fa-heart-o" aria-hidden="true"></i>Add to Wishlist</a>
                                            <div class="single-page-icons social-icons">
                                                <ul>
                                                    <li>
                                                        <h4>Share on</h4>
                                                    </li>
                                                    <li><a href="#" class="fa fa-facebook icon facebook"></a></li>
                                                    <li><a href="#" class="fa fa-twitter icon twitter"></a></li>
                                                    <li><a href="#" class="fa fa-google-plus icon googleplus"></a></li>
                                                    <li><a href="#" class="fa fa-dribbble icon dribbble"></a></li>
                                                    <li><a href="#" class="fa fa-rss icon rss"></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </section>
                            </div>
                        </div>
                    </div>

                </td>
            </div>
        </ItemTemplate>

    </asp:ListView>

    <script type="text/javascript" id="sourcecode">
        $(function () {
            $('.scroll-pane').jScrollPane();
        });
    </script>

</asp:Content>
