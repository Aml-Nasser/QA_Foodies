<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Foodies_WebApp.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <title>Add Admin Page</title>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Muli'>
    <link rel="stylesheet" href="CSS\form.css">

</head>
<body>
   <form id="submitForm" runat="server" action="#register" method="post" data-parsley-validate=" "
                            data-parsley-errors-messages-disabled="true" novalidate="" _lpchecked="1">
     <div class="pt-5">
        <div class="container">
            <div class="row">
                <div class="col-md-5 mx-auto">
                    <div class="card card-body">
                        <div>
                            <center><h4>Register an Account</h4></center>
                            <hr>
                        </div>



                            <input id="TextBox1" runat="server"
                                type="hidden" name="_csrf" value="7635eb83-1f95-4b32-8788-abec2724a9a4" ></input>
                            <div class="form-group required">
                                <asp:Label id="fullName" runat="server" Text="Label" for="FullName">Full Name </asp:Label>
                                <asp:TextBox id="FullName1" runat="server" pattern="[a-zA-Z'-'\s]*" type="text" class="form-control text-lowercase"
                                    name="FullName" value=""></asp:TextBox>
                                <asp:RequiredFieldValidator id="nameReq" runat="server" ControlToValidate="FullName1" ErrorMessage="This field is required"   
                             ForeColor="Red"></asp:RequiredFieldValidator>  
                            </div>



                            <div class="form-group required">
                                <asp:label id="userName" runat="server" Text="Label" for="username">Username</asp:label>
                                <asp:TextBox id="username1" runat="server" type="text" class="form-control text-lowercase" 
                                    name="username" value=""></asp:TextBox>
                                <asp:RequiredFieldValidator id="usernameReq" runat="server" ControlToValidate="username1" ErrorMessage="This field is required"     
                            ForeColor="Red"></asp:RequiredFieldValidator>  
                            </div>


                            <div class="form-group required">
                                <asp:label id="email" runat="server" Text="Label" for="email">Email</asp:label>
                                <asp:TextBox id="emailText" runat="server" type="email" class="form-control text-lowercase" 
                                    name="email" value=""></asp:TextBox>
                                <asp:RequiredFieldValidator id="emailReq" runat="server" ControlToValidate="emailText" ErrorMessage="This field is required"     
                                ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator id="emailval" runat="server" ControlToValidate="emailText"   
                                ErrorMessage="Please enter valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">  
                                </asp:RegularExpressionValidator>  
                            </div>



                            <div class="form-group required">
                                <asp:label id="pass1Lab" runat="server" Text="Label" class="d-flex flex-row align-items-center" for="password">Password</asp:label>
                                <asp:TextBox id="pass1" runat="server" type="password" class="form-control" name="password"></asp:TextBox>
                                 <asp:RequiredFieldValidator id="pssReq" runat="server" ControlToValidate="pass1" ErrorMessage="This field is required" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                                <br />
                                <asp:RegularExpressionValidator id="passExp" runat="server" ControlToValidate="pass1"   
                                ErrorMessage="Use 8 to 12 characters with a mix of letters (Upper & Lower), numbers & symbolsPattern" ForeColor="Red" ValidationExpression="^(?=[a-zA-Z])(?=.*[0-9])(?=.*[#\$_])(?=.*[A-Z])(?=.*[a-z])(?!.*[^a-zA-Z0-9#\$_])(?!.*\s).{8,12}$">  
                                </asp:RegularExpressionValidator> 
                            </div>



                            <div class="form-group required">
                                <asp:label id="pass2" runat="server" Text="Label" class="d-flex flex-row align-items-center" for="password">Confirm Password</asp:label>                                   
                                <asp:TextBox id="pass22" runat="server" type="password" class="form-control" name="password2"
                                    value="" ></asp:TextBox>
                                <asp:RequiredFieldValidator id="pas2req" runat="server" ControlToValidate="pass22" ErrorMessage="This field is required"     
                            ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>

                            <asp:CompareValidator id="CompareValidator1" runat="server" ControlToCompare="pass22"   
                            ControlToValidate="pass1" Display="Dynamic" ErrorMessage="Passwords do not match" ForeColor="Red"   
                            Operator="LessThan" Type="Integer"></asp:CompareValidator>  

                            <div class="form-group required">
                                <asp:label id="address1" runat="server" Text="Label" for="address">Address</asp:label>
                                <asp:TextBox id="address" runat="server" type="text" class="form-control text-lowercase" 
                                    name="address" value=""></asp:TextBox>
                                <asp:RequiredFieldValidator id="addressReq" runat="server" ControlToValidate="address" ErrorMessage="This field is required"     
                            ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>



                            <div class="form-group required">
                                <asp:label id="phone1" runat="server" Text="Label" for="phone">Phone Number:</asp:label>
                                <asp:TextBox id="phone" runat="server" type="tel" class="form-control text-lowercase" 
                                    name="phone" value="" pattern="^01[0-2]\d{1,8}$"></asp:TextBox>
                                <asp:RequiredFieldValidator id="phoneReq" runat="server" ControlToValidate="phone" ErrorMessage="This field is required"     
                            ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>



                            <div class="form-group pt-1">
                                <asp:Button id="RegisterBtn" class="btn btn-primary btn-block" runat="server" Text="Register" BorderStyle="Solid" ToolTip="Submit"/>  
                       
                            </div>
                        
                            <p class="small-xl pt-3 text-center">
                            <span class="text-muted">Already a member?</span>
                             <asp:HyperLink id="Loginab" runat="server" Text="LogIn" href="Login.aspx" ></asp:HyperLink>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>   

    </form>
</body>
</html>
