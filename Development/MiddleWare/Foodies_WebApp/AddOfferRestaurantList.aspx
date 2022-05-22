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

       <div style="padding: 64px">
            <asp:ListView ID="RestID" runat="server"
                GroupItemCount="4"
                ItemType="Foodies_WebApp.Models.RestaurantsModel" SelectMethod="GetRestaurants">
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
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <ItemTemplate>
                    <td runat="server">
                        <table>
                            <tr>
                                <td>
                                    <a href="AddOfferPage.aspx?Name=<%#:Item.Name%>">
                                        <img src="<%#:Item.Image%>"
                                            width="200" /></a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a>
                                        <center>
                                            <span>
                                                <%#:Item.Name%>
                                            </span>
                                        </center>
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                        </p>
                    </td>
                </ItemTemplate>
                <LayoutTemplate>
                    <table style="width: 100%;">
                        <tbody>
                            <tr>
                                <td>
                                    <table id="groupPlaceholderContainer" runat="server" style="width: 100%">
                                        <tr id="groupPlaceholder"></tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                            </tr>
                            <tr></tr>
                        </tbody>
                    </table>
                </LayoutTemplate>
            </asp:ListView>
        </div>
    </form>

</body>
</html>
