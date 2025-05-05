<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="datashow1.aspx.cs" Inherits="session_7.datashow1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-3 bg">
        <div class="row">
            <h2>Register Now</h2>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="mb-3 mt-3">
                    <label>Name:</label>
                    <asp:TextBox runat="server" placeholder="Enter Name" CssClass="form-control" ID="txtName"></asp:TextBox>
                </div>
                <div class="mb-3 mt-3">
                    <label>City:</label>
                    <asp:TextBox runat="server" placeholder="Enter City" CssClass="form-control" ID="txtCity"></asp:TextBox>
                </div>
                <asp:Button runat="server" Text="Register" OnClick="btnSubmit_Click" OnClientClick="return validform()" CssClass="btn btn-primary" ID="btnSubmit" />
            </div>
        </div>
        <hr />
        <div class="row">
            <h3>Student List</h3>
        </div>
        <div class="row">
            <asp:GridView ID="gvdata" OnRowUpdating="gvdata_RowUpdating"  DataKeyNames="Srno" OnRowDeleting="gvdata_RowDeleting" OnRowEditing="gvdata_RowEditing" OnRowCancelingEdit="gvdata_RowCancelingEdit" CssClass="table table-striped" runat="server" AutoGenerateColumns="false" EmptyDataText="No data found">
                <Columns>
                    <asp:TemplateField HeaderText="Student Name" ItemStyle-Width="150">
                        <ItemTemplate>
                            <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txteName" runat="server" Text='<%# Eval("Name") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="City" ItemStyle-Width="150">
                        <ItemTemplate>
                            <asp:Label ID="lblCountry" runat="server" Text='<%# Eval("City") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txteCountry" runat="server" Text='<%# Eval("City") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true"
                        ItemStyle-Width="150" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
    <script>
        function validform() {
            let name = document.getElementById('<%= this.txtName.ClientID %>').value;
            let city = document.getElementById('<%= this.txtCity.ClientID %>').value;
            if (name == "" || city == "") {
                swal("Please enter all required fields..!", "", "error");
                return false;
            }
            return true;
        }
    </script>
</asp:Content>
