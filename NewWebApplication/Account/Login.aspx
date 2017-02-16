<%@ Page EnableEventValidation="false" Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplicationTest.Account.Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="banner">
        <div class="banner-text">
            <div class="container">
                <h2>Delicious food from the
                    <br>
                    <span>Best Chefs For you.</span></h2>
            </div>
        </div>
    </div>
<!--TODO: Fix Google Button-->

   <!-- <div class="row">
        <div class="col-md-8">
            <section id="loginForm">
                <div class="form-horizontal">
                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                </div>
            </section>
        </div>

        <div class="col-md-4">
            <section id="socialLoginForm">
                <uc:OpenAuthProviders runat="server" ID="OpenAuthLogin" />
            </section>
        </div>
    </div>-->

    <div class="login-page about">
        <img class="login-w3img" src="../../Content/images/img3.jpg" alt="">
        <div class="container">
            <h3 class="w3ls-title w3ls-title1">Login to your account</h3>
            <div class="login-agileinfo">
                <form action="#" method="post">
                    <asp:TextBox runat="server" ID="Email" class="agile-ltext" TextMode="Email" placeholder="Email" required="" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Email" CssClass="text-danger" ErrorMessage="The email field is required." />

                    <asp:TextBox runat="server" ID="Password" TextMode="Password" class="agile-ltext" placeholder="Password" required="" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />

                    <div class="wthreelogin-text">
                        <ul>
                            <li>
                                <asp:CheckBox runat="server" ID="RememberMe"/>
                                <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me?</asp:Label>
                                <!--TODO: Fix check box-->
                               <!-- <label class="checkbox"><input type="checkbox" ID="RememberMe1" name="checkbox"><i></i>
									<span> Remember me ?</span> 
								</label>
                                   --> 
                            </li>
                            <li><a>
                                <asp:HyperLink runat="server" ID="ForgotPasswordHyperLink" ViewStateMode="Disabled">Forgot password?</asp:HyperLink></a> </li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>
                    <asp:Button runat="server" OnClick="LogIn" Text="LOGIN" />
                </form>
                <p>
                    Don't have an Account? <a>
                        <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Sign Up Now!</asp:HyperLink></a>
                </p>
            </div>
        </div>
    </div>

</asp:Content>
