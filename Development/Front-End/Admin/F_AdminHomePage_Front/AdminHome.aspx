﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="Foodies_WebApp.AdminHome" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Home Page</title>
	<link rel="stylesheet" href="CSS\AdminHome.css">
</head>
<body>
    <form id="form1" runat="server">
        <header>
    <div class="container" style="background-color: #84a98c ; margin: 0px; padding: 0; width: 100%">
     <img src="Images\FoodiesLogo.png" alt="logo" id="logo" style="height: 7%; width: 7%;">
    </div>
</header>
 <br><br><br><br><br><br><br>
<div class="card" style="position:absolute; left:130px; top:320px;">
    <h2 style="text-align: center;"><b><asp:HyperLink id="AddUsera" runat="server" Text="Add User" href="AddUser.aspx" ></asp:HyperLink></b></h2>
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
    <h2 style="text-align: center;"><b><asp:HyperLink id="addAdmina" runat="server" Text="Add Admin"  href="AddAdmin.aspx" ></asp:HyperLink></b></h2>
</div>

    </form>
</body>
</html>