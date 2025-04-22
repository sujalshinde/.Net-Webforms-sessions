<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ontextchanged1.aspx.cs" Inherits="session_4.ontextchanged1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <label>Enter Name:</label>
                    <asp:TextBox runat="server" AutoPostBack="true" OnTextChanged="txtName_TextChanged" ID="txtName" CssClass="form-control"></asp:TextBox>
                </div>
                 <div class="form-group">
                    <label>Your Name is :</label>
                    <asp:TextBox runat="server" Enabled="false" ID="txtValue" CssClass="form-control"></asp:TextBox>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
