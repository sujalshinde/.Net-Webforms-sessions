<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="textchanged1.aspx.cs" Inherits="session5.textchanged1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <label>Select City</label>
                    <asp:DropDownList AutoPostBack="true" OnSelectedIndexChanged="ddlCity_SelectedIndexChanged" runat="server" ID="ddlCity" CssClass="form-control my-2">
                        <asp:ListItem Text="Select City" Value="Select"></asp:ListItem>
                        <asp:ListItem Text="Kolhapur" Value="Kolhapur"></asp:ListItem>
                        <asp:ListItem Text="Pune" Value="Pune"></asp:ListItem>
                        <asp:ListItem Text="Mumbai" Value="Mumbai"></asp:ListItem>
                        <asp:ListItem Text="Delhi" Value="Delhi"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <asp:TextBox runat="server" Enabled="false" ID="txtCity" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
