
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="Foodies.AdminHome" %>

<!DOCTYPE html>
<html>
<head>
	<title>Admin Home Page</title>
	<link rel="stylesheet" href="CSS\AdminHome.css">
</head>

<body>
<header>
    <div class="container" style="background-color: #84a98c ; margin: 0px; padding: 0; width: 100%">
     <img src="Images\FoodiesLogo.png" alt="logo" id="logo" style="height: 7%; width: 7%;">
    </div>
</header>


 <br><br><br><br><br><br><br>
<div class="card" style="position:absolute; left:130px; top:320px;">
    <h2 style="text-align: center;"><b><asp:HyperLink href="AddUser.aspx" runat="server">Add user</asp:HyperLink></b></h2>
</div>

<div class="card" style="position:absolute; left:130px; top:500px;">
    <h2 style="text-align: center;"><b>Add Offer</b></h2>
</div>

<div class="card" style="position:absolute; left:600px; top:410px; width: 280px;">
    <h2 style="text-align: center;"><b>Add Restraunt</b></h2>
</div>

<div class="card" style="position:absolute; left:1150px; top:320px; width: 300px;">
    <h2 style="text-align: center;"><b>Add Menu Item</b></h2>
</div>

<div class="card" style="position:absolute; left:1200px; top:500px;">
    <h2 style="text-align: center;"><b><asp:HyperLink href="AddAdmin.aspx">Add Admin</asp:HyperLink></b></h2>
</div>

</body>


</html>