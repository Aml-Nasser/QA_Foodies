<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Foodies.Login" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Muli'>
    <link rel="stylesheet" href="CSS\form.css">

</head>

<body>
    <div class="pt-5">
        <div class="container">
            <div class="row">
                <div class="col-md-5 mx-auto">
                    <div class="card card-body">
                        <div>
                            <center><h4>Login</h4></center>
                            <hr>
                        </div>
                        <form ID="submitForm" runat="server" action="#register" method="post" data-parsley-validate=" "
                            data-parsley-errors-messages-disabled="true" novalidate="" _lpchecked="1">
                            <input ID="TextBox1" runat="server"
                                type="hidden" name="_csrf" value="7635eb83-1f95-4b32-8788-abec2724a9a4"></input>
                            <div class="form-group required">
                                <asp:label ID="userName" runat="server" Text="Label" for="username">Username</asp:label>
                                <asp:TextBox ID="username1" runat="server" type="text" class="form-control text-lowercase" required
                                    name="username" value=""></asp:TextBox>
                            </div>

                            <div class="form-group required">
                                <asp:label ID="pass1Lab" runat="server" Text="Label" class="d-flex flex-row align-items-center" for="password">Password</asp:label>
                                <asp:TextBox ID="pass1" runat="server" type="password" class="form-control" name="password"
                                   pattern="^(?=[a-zA-Z])(?=.*[0-9])(?=.*[#\$_])(?=.*[A-Z])(?=.*[a-z])(?!.*[^a-zA-Z0-9#\$_])(?!.*\s).{8,12}$" title="Pattern must match 8-12 character, numeric, and symbol combination 1) at least one uppercase letter, 2) at least on lowercase letter, 3) at least one number, 4) and one special charater, that is specified in advanced. The first character must be a character upper or lower, and no spaces allowed." value="" required></asp:TextBox>
                            </div>
                            
                            <div class="form-group pt-1">
                                <asp:Button ID="RegisterBtn" class="btn btn-primary btn-block" runat="server" Text="Register" BorderStyle="Solid" ToolTip="Submit"/>  
                       
                            </div>
                        </form>
                        <p class="small-xl pt-3 text-center">
                            <span class="text-muted">Not a member?</span>
                            <asp:HyperLink href="/signup" runat="server">Sign up</asp:HyperLink>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>