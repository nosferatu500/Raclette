﻿<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplicationTest.Contact" %>

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

    <div id="contact" class="contact cd-section">
        <div class="container">
            <h3 class="w3ls-title">Contact us</h3>
            <p class="w3lsorder-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit sheets containing sed </p>
            <div class="contact-row agileits-w3layouts">
                <div class="col-xs-6 col-sm-6 contact-w3lsleft">
                    <div class="contact-grid agileits">
                        <h4>DROP US A LINE </h4>
                        <form action="#" method="post">
                            <input type="text" name="Name" placeholder="Name" required="">
                            <input type="email" name="Email" placeholder="Email" required="">
                            <input type="text" name="Phone Number" placeholder="Phone Number" required="">
                            <textarea name="Message" placeholder="Message..." required=""></textarea>
                            <input type="submit" value="Submit">
                        </form>
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 contact-w3lsright">
                    <h6><span>Sed interdum </span>interdum accumsan nec purus ac orci finibus facilisis. In sit amet placerat nisl in auctor sapien. </h6>
                    <div class="address-row">
                        <div class="col-xs-2 address-left">
                            <span class="glyphicon glyphicon-home" aria-hidden="true"></span>
                        </div>
                        <div class="col-xs-10 address-right">
                            <h5>Visit Us</h5>
                            <p>Broome St, Canada, NY 10002, New York </p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="address-row w3-agileits">
                        <div class="col-xs-2 address-left">
                            <span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
                        </div>
                        <div class="col-xs-10 address-right">
                            <h5>Mail Us</h5>
                            <p><a href="mailto:info@example.com">mail@example.com</a></p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="address-row">
                        <div class="col-xs-2 address-left">
                            <span class="glyphicon glyphicon-phone" aria-hidden="true"></span>
                        </div>
                        <div class="col-xs-10 address-right">
                            <h5>Call Us</h5>
                            <p>+01 222 333 4444</p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <!-- map -->
        <!--	<div class="map agileits">
		    <!--TODO: Find Another place for fun-->
        <!--	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3861.0153567271104!2d120.96679781484721!3d14.598200789804006!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3397ca13955557ff%3A0xebaef723f24e2ec4!2sRaclette+Trading!5e0!3m2!1sru!2s!4v1487221998678" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
		</div>
		<!-- //map -->
    </div>

</asp:Content>
