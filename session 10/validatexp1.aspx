<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="validatexp1.aspx.cs" Inherits="session_10.validatexp1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <div class="form-group">
        <label for="email">Name:</label>
        <asp:TextBox ID="txtname" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <label for="email">Password:</label>
        <asp:TextBox ID="txtpassword1" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <label for="email">Confirm Password:</label>
        <asp:TextBox ID="txtpassword2" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <label for="email">Age:</label>
        <asp:TextBox ID="txtage" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <label for="email">Email:</label>
        <asp:TextBox ID="txtemail" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <label for="email">Username:</label>
        <asp:TextBox ID="txtusername" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <asp:Button ID="btnsubmit" OnClick="btnsubmit_Click" runat="server" CssClass="btn btn-primary" Text="Submit" />
   <hr />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Name"
        ControlToValidate="txtname"></asp:RequiredFieldValidator><br />
         <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Not Matches"
        ControlToValidate="txtpassword1" ControlToCompare="txtpassword2"></asp:CompareValidator><br />
        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Please enter age between 18-100"
        ControlToValidate="txtage" MaximumValue="100" MinimumValue="18" Type="Integer"></asp:RangeValidator><br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
        ErrorMessage="Please Enter Valid email-id" ControlToValidate="txtemail"
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br />
         <asp:CustomValidator ID="CustomValidator1" runat="server" OnServerValidate="UserCustomValidate"
        ControlToValidate="txtusername" ErrorMessage="User ID should have atleast a capital, small and digit and should be greater than 5 and less than 26 letters" SetFocusOnError="True"></asp:CustomValidator>
    <hr />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
   
        </div>
</asp:Content>
