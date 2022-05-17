<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddOfferRestaurantList.aspx.cs" Inherits="Foodies_WebApp.AddOfferRestaurantList" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>AddOffer</title>
    <link rel="stylesheet" type="text/css" href="CSS\AddOfferRestaurantList.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

</head>
<body>
    <form runat="server">

        <h1 style="margin-top: 25px; text-align: center;">Add Offer</h1>
        <div>
            <h2 style="margin-top: 107px; text-align: center;">FOODIES RESTAURANT </h2>
        </div>

        <div class="test">

            <div class="card">
                <asp:HyperLink ID="HyperLink1" NavigateUrl="AddOfferPage.aspx" runat="server">
                    <asp:Image ID="Img" alt="Avatar" Style="width: 100%" runat="server" />
                </asp:HyperLink>
                <div class="container">
                    <asp:TextBox ID="restName" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="card">
                <asp:HyperLink ID="HyperLink2" NavigateUrl="AddOfferPage.aspx" runat="server">
     <asp:Image runat="server" src="Images\CinabonHome.jpg" alt="Avatar" style="width:100%"/></asp:HyperLink>
                <div class="container">

                    <h4>john dean</h4>
                </div>
            </div>


            <div class="card">
                <asp:HyperLink ID="HyperLink3" NavigateUrl="AddOfferPage.aspx" runat="server">
      <asp:Image runat="server" src="Images\MacHome.png" alt="Avatar" style="width:100%"/></asp:HyperLink>

                <div class="container">
                    <h4>john dean</h4>
                </div>
            </div>

        </div>
    </form>

</body>
</html>
