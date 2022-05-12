<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddMenuItem.aspx.cs" Inherits="Foodies_WebApp.WebForm2" %>


<!DOCTYPE html>

<html>
<head>
<title> The Menu item </title>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Muli'>
<link rel='stylesheet' href="CSS/AddMenuItem.css">
</head>
<body>
<div class="pt-5">
        <div class="container">
            <div class="row">
                <div class="col-md-5 mx-auto">
                    <div class="card card-body">
                        <div>
                            <center><h4>Add Menu item</h4></center>
                            <hr>
                        </div>
							<form runat="server">
								<div>
									<h3>Restaurant item</h3>
								</div>
									<!--Uploading the item image-->

									<div class="flex-container">
									<div class="flex_child"> <img src="Images/FoodiesLogo.png" height="80" width="80"> </div>
									<div class="flex_child"><div class="form-group pt-1">
                                <asp:Button runat="server" class="btn btn-primary btn-block" type="submit" Text="Upload"></asp:Button>
                        </div>
						</div>
						</div>
									<!--adding item ID-->
									<div>
									<h5>Item ID</h5>
								</div>
									<div class="flex-container">
										<div class="flex_child">
										<asp:TextBox runat="server" type="text" name="ID" pattern ="[0-9]+" required></asp:TextBox>
										</div>
										
	
								
									<div class="flex_child"><div class="form-group pt-1">
                                <asp:Button runat="server" class="btn btn-primary btn-block" type="submit" Text="Add"></asp:Button>
                        </div>
									</div>
									</div>
									
							<!--adding item PRICE-->
									<div>
									<h5>Item price</h5>
								</div>
									<div class="flex-container">
										<div class="flex_child">
										<asp:TextBox runat="server" type="text" name="price" pattern ="[-+]?([0-9]*\.[0-9]+|[0-9]+)" required></asp:TextBox>
										</div>
										
	
								
									<div class="flex_child"><div class="form-group pt-1">
                                <asp:Button runat="server" class="btn btn-primary btn-block" type="submit" Text="Add"></asp:Button>
                        </div>
									</div>
									</div>
									
						<div class="form-group pt-1">
                                                                <asp:Button runat="server" class="btn btn-primary btn-block" type="submit" Text="Add"></asp:Button>

                        </div>
							</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
<html>
