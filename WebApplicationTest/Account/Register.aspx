<%@ Page EnableEventValidation="false" Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplicationTest.Account.Register" %>

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
    
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
    </div>
    
    
    <div class="login-page about">
		<img class="login-w3img" src="../../Content/images/img3.jpg" alt="">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">Sign Up to your account</h3>  
			<div class="login-agileinfo"> 
				<form action="#" method="post">
				    
                    <asp:TextBox runat="server" ID="Username" class="agile-ltext" TextMode="Email" placeholder="Username" required="" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Username" CssClass="text-danger" ErrorMessage="The username field is required." />

				    <asp:TextBox runat="server" ID="Email" class="agile-ltext" TextMode="Email" placeholder="Email" required="" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Email" CssClass="text-danger" ErrorMessage="The email field is required." />
                    
                    <asp:TextBox runat="server" ID="Password" TextMode="Password" class="agile-ltext" placeholder="Password" required="" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
                    
                    <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" class="agile-ltext" placeholder="Password" required="" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
                    <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />

					<div class="wthreelogin-text"> 
						<ul> 
							<li>
							    <asp:CheckBox runat="server" ID="Agree"/>
                                <asp:Label runat="server" AssociatedControlID="Agree">I agree to the terms of service</asp:Label>
                                <!--TODO: Fix Check Box-->
							<!--	<label class="checkbox"><input type="checkbox" name="checkbox"><i></i> 
									<span> I agree to the terms of service</span> 
								</label> -->
							</li> 
						</ul>
						<div class="clearfix"> </div>
					</div>   
                    <asp:Button runat="server" OnClick="CreateUser_Click" Text="Sign Up" />
				</form>
				<p>Already have an account?  <a runat="server" href="~/Account/Login"> Login Now!</a></p> 
			</div>	 
		</div>
	</div>

</asp:Content>
