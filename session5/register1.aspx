<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="register1.aspx.cs" Inherits="session5.register1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .bg{
            background-color:lightblue;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-3 bg">
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
                <label>Email:</label>
                <asp:TextBox runat="server" placeholder="Enter Email" CssClass="form-control" ID="txtEmail"></asp:TextBox>

            </div>

            <div class="mb-3 mt-3">
                <label>City:</label>
                <asp:DropDownList CssClass="form-control" runat="server" ID="ddlCity">
                    <asp:ListItem Value="Select">Select City</asp:ListItem>
                    <asp:ListItem Value="5">Mumbai</asp:ListItem>
                    <asp:ListItem >Mumbai</asp:ListItem>
                    <asp:ListItem>Delhi</asp:ListItem>
                    <asp:ListItem>Kolhapur</asp:ListItem>
                </asp:DropDownList>

            </div>
           
            <asp:Button runat="server" Text="Register" OnClick="Button1_Click" OnClientClick="return validform()"  CssClass="btn btn-primary" ID="Button1" />



        </div>



<script>
    function validform() {
        let name = document.getElementById('<%= this.txtName.ClientID %>').value;
        let contact = document.getElementById('<%= this.txtContact.ClientID %>').value;
        let email = document.getElementById('<%= this.txtEmail.ClientID %>').value;
        let city = document.getElementById('<%= this.ddlCity.ClientID %>').value;
        let mobilecon = /^\d{10}$/;
        let emailcon = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/;
        if (name == "" || contact == "" || city == "Select") {
            alert("Please enter all required fields..!" );
            return false;
        }
        if (contact != '') {
            if (!contact.match(mobilecon)) {
               alert("Please Enter Valid Contact Number");
            }
        }
        if (email != '') {
            if (!email.match(emailcon)) {
                alert("Please Enter Valid Email-Id");
                return false;
            }
        }
        return true;
    }
</script>
</asp:Content>



