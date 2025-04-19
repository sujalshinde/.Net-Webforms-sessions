<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="session_2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.0/sweetalert.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.0/sweetalert.min.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <form id="form1" runat="server">
            <div>
                <div class="container mt-3">
                    <h2>Register Now</h2>

                    <div class="mb-3 mt-3">
                        <label>Name:</label>
                        <asp:TextBox runat="server" placeholder="Enter Name" CssClass="form-control" ID="txtName"></asp:TextBox>

                    </div>

                    <div class="mb-3 mt-3">
                        <label>Contact:</label>
                        <asp:TextBox runat="server" placeholder="Enter Contact" CssClass="form-control" ID="txtContact"></asp:TextBox>

                    </div>
                    <div class="mb-3 mt-3">
                        <label>Email:</label>
                        <asp:TextBox runat="server" placeholder="Enter Email" CssClass="form-control" ID="txtEmail"></asp:TextBox>

                    </div>

                    <div class="mb-3 mt-3">
                        <label>City:</label>
                        <asp:DropDownList CssClass="form-control" runat="server" ID="ddlCity">
                            <asp:ListItem Value="Select">Select City</asp:ListItem>
                            <asp:ListItem Value="5">Mumbai</asp:ListItem>
                            <asp:ListItem>Delhi</asp:ListItem>
                            <asp:ListItem>Kolhapur</asp:ListItem>
                        </asp:DropDownList>

                    </div>
                    <asp:Button runat="server" Text="Register" OnClientClick="return validform()" OnClick="btnSubmit_Click" CssClass="btn btn-primary" ID="btnSubmit" />



                </div>
            </div>
        </form>

        <script>
            function validform() {
                let name = document.getElementById('<%= this.txtName.ClientID %>').value;
                let contact = document.getElementById('<%= this.txtContact.ClientID %>').value;
                let email = document.getElementById('<%= this.txtEmail.ClientID %>').value;
                let city = document.getElementById('<%= this.ddlCity.ClientID %>').value;
                let mobilecon = /^\d{10}$/;
                let emailcon = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/;

                if (name == "" || contact == "" || city == "Select") {
                    swal("Please enter all required fields..!", "", "error");
                    return false;
                }

                if (contact != '') {
                    if (!contact.match(mobilecon)) {
                        swal("Please Enter Valid Contact Number", "", "error");
                        return false;

                    }
                }
                if (email != '') {
                    if (!email.match(emailcon)) {
                        swal("Please Enter Valid Email-Id", "", "error");
                        return false;
                    }
                }
                return true;
            }
        </script>
    </body>
</html>
