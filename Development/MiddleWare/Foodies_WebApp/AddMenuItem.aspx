<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddMenuItem.aspx.cs" Inherits="Foodies_WebApp.AddMenuItem" %>

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
                                    <h4>Add Menu item</h4>
                                </center>
                                <hr>
                            </div>

                            <div>
                                <h3>Restaurant item</h3>
                            </div>


                            <div class="flex-container">
                                <div class="flex_child">

                                    <asp:Image ID="Image1" runat="server" Height="80" Width="80" Style="margin-top: 50px; margin-bottom: 22px; margin-left: 170%" />
                                </div>
                                <div class="flex_child">
                                    <div class="form-group pt-1">
                                        <asp:FileUpload runat="server" Text="Upload" ID="FileUpload" Style="margin-top: -59px; margin-left: 23%"></asp:FileUpload>
                                    </div>
                                </div>
                            </div>

                            <div class="flex-container">
                                <div class="flex_child">
                                    <h5>Item Name</h5>
                                </div>
                                <div class="flex_child">
                                    <asp:TextBox runat="server" type="text" ID="ItemName" name="ItemName"></asp:TextBox>
                                    <br />
                                    <asp:RegularExpressionValidator
                                        runat="SERVER"
                                        ControlToValidate="ItemName"
                                        ErrorMessage="Enter a valid Item Name."
                                        ValidationExpression="[A-Za-z]{1,32}">
                                    </asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="flex-container">
                                <div class="flex_child">
                                    <h5 style="margin-bottom: 132px;">Item Price</h5>
                                </div>
                                <div class="flex_child">
                                    <asp:TextBox runat="server" type="text" name="price" ID="itemPrice"></asp:TextBox>
                                    <br />
                                    <asp:RegularExpressionValidator
                                        runat="SERVER"
                                        ControlToValidate="ItemPrice"
                                        ErrorMessage="Enter a valid Item price."
                                        ValidationExpression="^[1-9]\d*(\.\d+)?$">
                                    </asp:RegularExpressionValidator>
                                </div>
                            </div>

                            <div class="form-group pt-1">
                                <asp:Button runat="server" class="btn btn-primary btn-block" type="submit" Text="Add" OnClick="AddMenuItem_OnClick"></asp:Button>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
s