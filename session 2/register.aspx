<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="session_2.register" %>
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
                    <asp:ListItem>Delhi</asp:ListItem>
                    <asp:ListItem>Kolhapur</asp:ListItem>
                </asp:DropDownList>
              
            </div>
            <asp:Button runat="server" Text="Register" OnClientClick="return validform()"  CssClass="btn btn-primary" ID="btnSubmit" />

          
            
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
</asp:Content>

