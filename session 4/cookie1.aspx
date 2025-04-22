<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="cookie1.aspx.cs" Inherits="session_4.cookie1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
     <div class="row">
         <div class="col-md-4">
             <div class="form-group my-2">
                 <label>Enter Name:</label>
                 <asp:TextBox runat="server" CssClass="form-control" ID="txtName"></asp:TextBox>
             </div>
             <div class="form-group my-2">
                 <label>Enter Contact:</label>
                 <asp:TextBox runat="server" CssClass="form-control" ID="txtContact"></asp:TextBox>
             </div>
             <asp:Button runat="server" OnClick="btnConfirm_Click" ID="btnConfirm" Text="Confirm Details" CssClass="btn btn-primary"/>
         </div>
     </div>
 </div>
</asp:Content>
