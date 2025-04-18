<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="session_1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container mt-3">
                <h2>Register Now</h2>

                <div class="mb-3 mt-3">
                    <label>Name:</label>
                    <asp:TextBox  runat="server" placeholder="Enter Name" CssClass="form-control" ID="txtName"></asp:TextBox>
                  
                </div>

                <div class="mb-3 mt-3">
                    <label>Contact:</label>
                    <asp:TextBox runat="server" placeholder="Enter Contact" CssClass="form-control" ID="txtContact"></asp:TextBox>
                  
                </div>

                <div class="mb-3 mt-3">
                    <label>City:</label>
                    <asp:DropDownList CssClass="form-control" runat="server" ID="ddlCity">
                        <asp:ListItem>Select City</asp:ListItem>
                        <asp:ListItem Value="5">Mumbai</asp:ListItem>
                        <asp:ListItem>Delhi</asp:ListItem>
                        <asp:ListItem>Kolhapur</asp:ListItem>
                    </asp:DropDownList>
                  
                </div>
                <asp:Button runat="server" Text="Register" CssClass="btn btn-primary" ID="btnSubmit" />

              
                
            </div>
        </div>
    </form>
</body>
</html>
