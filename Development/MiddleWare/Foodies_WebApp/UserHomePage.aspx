<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserHomePage.aspx.cs" Inherits="Foodies_WebApp.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>UserHomePage</title>
	<link rel ="stylesheet" type ="text/css" href ="CSS\UserHomePage.css"/>
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>

</head>
<body>
    <form runat="server" >
    <header>
    <div class="container">
     <asp:Image ID="logo" src="Images\FoodiesLogo.png" alt="logo" runat="server" />
      <nav >
          <ul>
           <li><h3 id="welcome">Welcome to Foodies </h3></li>
		   <li><a  href="OffersandPormotions.aspx" style="left:25px;position: relative;right: -270px;"> Offers </a></li>
        </ul>

      </nav>
	   
    </div>
	</header>
	
	<div id="search">
	<asp:TextBox id="searchInput" type="search" placeholder="search" maxlength="32" runat="server"></asp:TextBox>
	<asp:RegularExpressionValidator 
       id="txtZIP_validation" runat="SERVER" 
       ControlToValidate="searchInput" 
       ErrorMessage="Enter a valid Restaurant Name."
       ValidationExpression="[A-Za-z]{1,32}">
     </asp:RegularExpressionValidator>
	
	</div>
	
	<div >
	    <h2 style="margin-top: 107px;text-align: center;">FOODIES RESTAURANT </h2>
	</div>

<div class="test">
<div class="card">
  <asp:Image src="Images\KFC.png" alt="Avatar" style="width:100%" runat="server"/>
  <div class="info">
  <p>
  Lorem Ipsum ie like Aldus Pa
  geMaker including versions of Lorem Ipsum.
  </p>
    <h4>john dean</h4>
  </div>
</div>

<div class="card" >
  <asp:Image runat="server" src="https://www.washingtonpost.com/resizer/9YWv-qOa9uW7CQZ9UGiW23eTZzU=/1484x0/arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/BTCNJJN2Y43KPHPXPQWPASXRKM.jpg" alt="Avatar" style="width:100%"/>
  <div class="container">
   <p>
  Lorem Ipsum ie like Aldus Pa
  geMaker including versions of Lorem Ipsum.
  Lorem Ipsum ie like Aldus Pa
  geMaker including versions of Lorem Ipsum.
  </p>
    <h4>john dean</h4>
  </div>
</div>


<div class="card" >
  <asp:Image runat="server" src="https://www.washingtonpost.com/resizer/9YWv-qOa9uW7CQZ9UGiW23eTZzU=/1484x0/arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/BTCNJJN2Y43KPHPXPQWPASXRKM.jpg" alt="Avatar" style="width:100%"/>
  <div class="container">
   <p>
  Lorem Ipsum ie like Aldus Pa
  geMaker including versions of Lorem Ipsum.
  Lorem Ipsum ie like Aldus Pa
  geMaker including versions of Lorem Ipsum.
  </p>
    <h4>john dean</h4>
  </div>
</div>

</div>
        </form>
	
</body>
</html>
