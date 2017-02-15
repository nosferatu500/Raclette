<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="ProductList.aspx.cs" Inherits="WebApplicationTest.ProductList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <section>
        <div>
            <hgroup>
                <h2><%: Page.Title %></h2>
            </hgroup>

            <asp:ListView ID="productList" runat="server"
                DataKeyNames="ProductID" GroupItemCount="3"
                ItemType="WebApplicationTest.Models.Product" SelectMethod="GetProducts">
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
                            <div class="col-md-9 product-w3ls-right">
                                <div class="col-xs-6 col-sm-10 product-grids">
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
                                                    <a href="#" data-toggle="modal" data-target="#myModal1">More</a>
                                                </form>
                                            </div>
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
                        <li><a href="products.html">Salads </a></li>
                        <li><a href="products.html">Vegetarian</a></li>
                        <li><a href="products.html">Dinner</a></li>
                        <li><a href="products.html">Diet Soup</a></li>
                        <li><a href="products.html">Sweets</a></li>
                        <li><a href="products.html">Seasonal</a></li>
                        <li><a href="products.html">Breakfast</a></li>
                        <li><a href="products.html">Italian Food</a></li>
                        <li><a href="products.html">Meals</a></li>
                    </ul>
                </div>
                <div class="related-row">
                    <h4>YOU MAY ALSO LIKE</h4>
                    <div class="galry-like">
                        <a href="#" data-toggle="modal" data-target="#myModal1">
                            <img src="../../Content/images/s1.jpg" class="img-responsive" alt="img"></a>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </section>
</asp:Content>
