<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddRestaurantItem.aspx.cs" Inherits="Foodies_WebApp.AddRestaurantItem" %>

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
                            <center><h4>Add Restaurant</h4></center>
                            <hr>
                        </div>
							<form>
								<div>
									<h5>Restaurant Name:</h5>
								</div>
								<div class="input">
									<input type="text" name="ResName" required>
																		
								</div>



									<!--adding Restaurant Logo-->
									<div class="imgpart">
									<h5>Restaurant logo</h5>
								
									<div class="flex-container">
									<div class="flex_child"> <img src="FoodiesLogo.png" height="80" width="80"> </div>
									<div class="flex_child"><div class="form-group pt-1">
                                <button class="btn btn-primary btn-block" type="submit">Upload</button>
                        </div>
						</div>
						</div>
						</div>
						<div class="form-group pt-1">
                                <button class="btn btn-primary btn-block" type="submit">Add</button>
                        </div>
							</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>