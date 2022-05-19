<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OffersandPormotions.aspx.cs" Inherits="Foodies_WebApp.OffersandPormotions" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>HTML Login Page with Bootstrap Example</title>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Muli'>
    <link rel="stylesheet" href="CSS\Offerstyle.css">
    <!--<script type="text/javascript" src="myScript.js" ></script>-->
</head>

<body>
    <form runat="server">


        <div class="pt-5">
            <div class="container">
                <div class="row">
                    <div class="col-md-5 mx-auto">
                        <div class="card card-body" style="background-color: #cad2c5;">
                            <div>
                                <center>
                                    <h4>Offers and Pormotions</h4>
                                </center>
                                <hr>
                            </div>
                            <form id="submitForm" action="#login" method="post" _lpchecked="1">
                                <input type="hidden" name="_csrf" value="7635eb83-1f95-4b32-8788-abec2724a9a4">
                                <div class="form-group required">
                                    <div id="yud">
                                        <asp:Label runat="server" ID="yp" for="username">Your Points </asp:Label>
                                        <asp:TextBox runat="server" type="text" ID="yu" name="your point"></asp:TextBox>

                                    </div>

                                </div>
                                <div class="form-group pt-1">
                                    <asp:Button runat="server" class="btn btn-primary btn-block" type="submit" Text="Use my loyality point" OnClick="UseOffer_OnClick"></asp:Button>
                                </div>

                                <div id="offersclass">

                                    <div id="offersclass">
                                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack= "true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                        </asp:DropDownList>
                                    </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>

</html>
