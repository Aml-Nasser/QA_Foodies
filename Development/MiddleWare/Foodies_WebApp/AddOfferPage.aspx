<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddOfferPage.aspx.cs" Inherits="Foodies_WebApp.AddOfferPage" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>HTML Login Page with Bootstrap Example</title>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Muli'>
    <link rel="stylesheet" href="CSS\AddOffer.css">

</head>

<body>
    <div class="pt-5">
        <div class="container">
            <div class="row">
                <div class="col-md-5 mx-auto">
                    <div class="card card-body">
                        <div>
                            <center><h4>Add Offer</h4></center>
                            <hr>
                        </div>
                        <form ID="submitForm" action="#ADD_OFFER" runat="server">
								<div class="form-group required">
                                <asp:Label for="Offer_Code">Offer Code </asp:Label>
                                <asp:TextBox type="text" class="form-control text-lowercase" runat="server" ID="Offer_Code" pattern="[0-9]+"  title="Numbers only, please." required
                                    name="Offer_Code"></asp:TextBox>
                            </div>
                            <div class="form-group required">
                                <asp:Label class="d-flex flex-row align-items-center" for="Discount_amount">Discount amount </asp:Label>
                                <asp:TextBox type="text" class="form-control" ID="Discount_amount" runat="server" pattern="[0-9]+" title="Numbers only, please." name="Discount_amount "
                                     required></asp:TextBox>
                            </div>
                            <div class="form-group pt-1">
                                <asp:Button class="btn btn-primary btn-block" type="submit" runat="server" Text="Add"></asp:Button>
                            </div>
                        </form>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
