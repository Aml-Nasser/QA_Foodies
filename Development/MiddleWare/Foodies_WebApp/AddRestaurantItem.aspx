<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddRestaurantItem.aspx.cs" Inherits="Foodies_WebApp.AddRestaurantItem" %>

<html>
<head>
    <title>The Menu item </title>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Muli'>
    <link rel='stylesheet' href="CSS/AddMenuItem.css">
</head>
<body>
    <form runat="server">
        <div class="pt-5">
            <div class="container">
                <div class="row">
                    <div class="col-md-5 mx-auto">
                        <div class="card card-body">
                            <div>
                                <center>
                                    <h4>Add Restaurant</h4>
                                </center>
                                <hr>
                            </div>

                            <div style="display: -webkit-inline-box;">
                                <h5>Restaurant Name:</h5>
                                <asp:TextBox runat="server" type="text" ID="ResName" name="ItemName" required="true" Style="margin-left: 4%;"></asp:TextBox>

                            </div>


                            <asp:RegularExpressionValidator
                                runat="SERVER"
                                ControlToValidate="ResName"
                                ErrorMessage="Enter a valid Restaurant Name."
                                ValidationExpression="[A-Za-z]{1,32}">
                            </asp:RegularExpressionValidator>



                            <!--adding Restaurant Logo-->

                            <div class="imgpart">
                                <br />
                                <h5>Restaurant logo</h5>
                                <br />
                                <div class="flex-container">
                                    <div class="flex_child">
                                        <img src="Images/FoodiesLogo.png" height="80" width="80" style="margin-bottom: -34%; margin-left: 152%;">
                                    </div>
                                    <div class="flex_child">
                                        <div class="form-group pt-1">
                                            <asp:FileUpload ID="FileUpload1" required="true" runat="server" Style="margin-left: 18%;" />
                                            <!---  <button class="btn btn-primary btn-block" type="submit">Upload</button>-->
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group pt-1">
                                <asp:Button runat="server" class="btn btn-primary btn-block" type="submit" Text="Add" OnClick="AddRestaurant_OnClick"></asp:Button>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

</body>
</html>
