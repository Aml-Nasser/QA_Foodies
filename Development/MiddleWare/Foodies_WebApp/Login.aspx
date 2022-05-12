<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Foodies_WebApp.Login" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Muli">
    <link rel="stylesheet" href="CSS\Login.css">

</head>

<body>
<div class="pt-5">
    <div class="container">
        <div class="row">
            <div class="col-md-5 mx-auto">
                <div class="card card-body">
                    <div>
                        <center>
                            <h4>Login</h4>
                        </center>
                        <hr>
                    </div>
                    <form ID="submitForm" action="#login" method="post" _lpchecked="1"  runat="server">
                        <input type="hidden"
                               name="_csrf" value="7635eb83-1f95-4b32-8788-abec2724a9a4">
                        <div class="form-group required">
                            <asp:Label for="username" runat="server">Username</asp:Label>
                            <asp:TextBox runat="server" type="text" class="form-control text-lowercase" ID="username" name="username" required></asp:TextBox>
                        </div>
                        <div class="form-group required">
                            <asp:Label class="d-flex flex-row align-items-center" for="password" runat="server">
                                Password
                                <a class="ml-auto border-link small-xl"></a>
                            </asp:Label>
                            <asp:TextBox runat="server" type="password" class="form-control" ID="password" name="password" required></asp:TextBox>
                        </div>
                        <div class="form-group pt-1">
                            <asp:Button class="btn btn-primary btn-block" type="submit" runat="server" Text="Login" ></asp:Button>
                        </div>
                    </form>
                    <p class="small-xl pt-3 text-center">
                        <span class="text-muted">Not a member?</span>
                        <asp:HyperLink ID="signUpId" runat="server" Text="Sign Up" NavigateUrl="#"></asp:HyperLink>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

</html>