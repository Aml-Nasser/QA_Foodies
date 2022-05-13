<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuItem.aspx.cs" Inherits="Foodies_WebApp.MenuItem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <title> MenuItem Page</title>
    <link rel="stylesheet" type="text/css" href="CSS\UserHomePage.css" />
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Muli'>
    <link rel="stylesheet" href="CSS\form.css">
    <link rel="stylesheet" href="CSS\MenuItem.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <div class="containerr">
                <img src="Images\FoodiesLogo.png" alt="logo" id="logo" style="height: 7%; width: 7%;">
                <a href="OffersandPormotions.aspx" style="margin-left: 1300px;">Offers </a>
            </div>
        </header>


        <div class="card mb-3" style="max-width: 1500px;">
            <div class="row no-gutters">
                <div class="col-md-4">
                    <img src="Images\KFC.png" class="card-img">
                </div>
                <div class="col-md-8">
                    <div class="card-body">
                        <h5 class="card-title"></h5>
                        <asp:Label ID="Label1" runat="server" Text="Label" for="phone">Quantity:</asp:Label>
                        <asp:TextBox ID="quant" runat="server" type="text" class="form-control text-lowercase"
                            name="quan" value=""></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="quant" ErrorMessage="Quantity can not be empty"
                            ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="quant"
                            ErrorMessage="Quantity should be numbers only" Display="Dynamic" ForeColor="Red" ValidationExpression="/^\d+$/">  
                        </asp:RegularExpressionValidator>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <asp:HyperLink runat="server" href="ConfirmOrderPage.aspx" class="btn btn-primary" style="text-align: center; margin: auto;">Confirm Order</asp:HyperLink>
        </div>

    </form>
</body>
</html>

