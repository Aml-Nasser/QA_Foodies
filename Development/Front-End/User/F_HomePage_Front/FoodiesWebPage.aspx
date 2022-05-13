<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FoodiesWebPage.aspx.cs" Inherits="Foodies_WebApp.FoodiesWebPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Foodies Web Page</title>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Muli'>
    <link rel="stylesheet" href="CSS\AdminHome.css">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br/>
            <h2 style="margin-left: 30px;"2>In Foodies</h2>
            <p style="margin-left: 100px;">We don't just deliver food, we deliver happiness..</p>
        </div>

        <div>
              <img src="Images\FoodiesCover.png" style="height: 800px; width: 100%;">          
        </div>

        <div class="card" style="position:absolute; left:720px; top:940px;">
            <h2 style="text-align:center; margin: auto;"><b><asp:HyperLink class="hypLinks" runat="server" Text="Register" href="Register.aspx" ></asp:HyperLink></b></h2>
        </div>
        
        <div class="card" style="position:absolute; left:720px; top:1070px;">
            <h2 style="text-align:center; margin: auto; "><b><asp:HyperLink class="hypLinks" runat="server" Text="Login" href="Login.aspx" ></asp:HyperLink></b></h2>
        </div>
        <br/>
        <br/>
        <br/>
    </form>
</body>
</html>

