<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmOrderPage.aspx.cs" Inherits="Foodies_WebApp.ConfirmOrderPage" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>ConfirmOrder</title>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Muli'>
    <link rel="stylesheet" href="CSS/ConfirmOrder.css">
</head>

<body>
    <form runat="server">
        <header>
            <div class="navbar">
                <asp:Image ID="logo" src="Images\FoodiesLogo.png" alt="logo" runat="server" />
                <nav>
                    <ul>
                        <li><a href="OffersandPormotions.aspx" style="left: 25px; position: relative; right: -270px;">Offers </a></li>
                    </ul>
                </nav>
            </div>
        </header>
        <div class="pt-5">
            <div class="container">
                <div class="row">
                    <div class="col-md-5 mx-auto">
                        <div class="card card-body" style="background-color: #cad2c5;">
                            <div>
                                <center>
                                    <h4>Your Order </h4>
                                </center>
                                <hr>
                            </div>
                            <asp:Image ID="Image1" AlternateText="menuItem" runat="server" Style="width: 40%" />

                            <div class="form-group pt-1">
                                <asp:Label ID="ip" runat="server" Text="Label" Style="position: relative; left: 74%;">Item Price</asp:Label>
                                <br />
                                <asp:TextBox runat="server" type="text" ID="yu" name="your point" style="left: 76%;" />


                            </div>

                            <div id="Orderinfo">

                                <asp:Label ID="Label1" runat="server" Text="Label">Your Total Price =</asp:Label>
                                <asp:TextBox runat="server" ID="totalPriceTxt" type="text" style="width: fit-content; background-color: #cad2c5; border: 0px;" />
                                <br />
                                <asp:Label ID="Label2" runat="server" Text="Label">You have</asp:Label>
                                <asp:TextBox runat="server" ID="disountTxt" style="width: fit-content; background-color: #cad2c5; border: 0px" />
                                <asp:Label ID="Label3" runat="server" Text="Label">discount</asp:Label>


                            </div>

                            <div style="display: inline-flex; flex-direction: row-reverse; align-content: center; justify-content: center; align-items: flex-end;">
                                <asp:Button runat="server" class="btn btn-primary btn-block" type="submit" Style="width: fit-content;" Text="Cancel" OnClick="Cancel_Click"></asp:Button>
                                <asp:Button runat="server" class="btn btn-primary btn-block" type="submit" Style="width: fit-content;" Text="Submit" OnClick="ConfirmOrderBtn_OnClick"></asp:Button>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>




    </form>
</body>
</html>
