<%@ Page Title="" Language="C#" MasterPageFile="~/Prog4/Prog4MasterPage.Master" AutoEventWireup="true" CodeBehind="Shopping.aspx.cs" Inherits="WebSite.Prog4.Shopping" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 700px;
        }
        .auto-style5 {
            width: 400px;
        }
        .auto-style6 {
            width: 400px;
        }
        .auto-style7 {
            width: 400px;
            height: 26px;
        }
        .auto-style8 {
            margin-left: 0px;
        }
        .auto-style9 {
            margin-left: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label1" runat="server" Text="Product ID:"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtPID" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:Label ID="lblDNE" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label2" runat="server" Text="Product Name:"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtName" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label3" runat="server" Text="Unit Price:"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtPrice" runat="server" ReadOnly="True" style="text-align: right"></asp:TextBox>
            </td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="Label4" runat="server" Text="Quntity:"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="txtQuantity" runat="server" TextMode="Number" style="text-align: right"></asp:TextBox>
            </td>
            <td class="auto-style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Quantity is Required for Calculation" ForeColor="Red" ValidationGroup="Quantity"></asp:RequiredFieldValidator>
                <br />
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Quantity is not a non-negative integer" ForeColor="Red" ValidationGroup="Quantity" ControlToValidate="txtQuantity" MaximumValue="10000000000" MinimumValue="0" Type="Double"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label5" runat="server" Text="Sub Total:"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtSubtotal" runat="server" ReadOnly="True" style="text-align: right"></asp:TextBox>
            </td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label6" runat="server" Text="Tax:"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtTax" runat="server" ReadOnly="True" style="text-align: right"></asp:TextBox>
            </td>
            <td class="auto-style5">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Label ID="Label7" runat="server" Text="Grand Total:"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtGrandtotal" runat="server" ReadOnly="True" style="text-align: right"></asp:TextBox>
            </td>
            <td class="auto-style5">
                <asp:Button ID="btnFindItem" runat="server" CssClass="auto-style8" Text="Find Item" OnClick="btnFindItem_Click" />
                <asp:Button ID="btnCalculate" runat="server" Text="Calculate" CssClass="auto-style9" OnClick="btnCalculate_Click" ValidationGroup="Quantity"/>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:SqlDataSource ID="SDSProduct" runat="server" ConnectionString="<%$ ConnectionStrings:UWPCS3870ConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
            </td>
            <td class="auto-style5">
                &nbsp;</td>
            <td class="auto-style5">
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="DataSourceHolder" runat="server">
</asp:Content>
