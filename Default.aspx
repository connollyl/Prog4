<%@ Page Title="" Language="C#" MasterPageFile="~/Prog4/Prog4MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebSite.Prog4.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 21px;
        }
        .auto-style2 {
            margin-left: 26px;
        }
        .auto-style3 {
            margin-left: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GVProduct" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="ProductID" DataSourceID="SDSProduct" ForeColor="Black" GridLines="None" PageSize="5">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
            <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerSettings Visible="False" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    <asp:Button ID="btnFirst" runat="server" OnClick="btnFirst_Click" Text="First" Width="56px" />
    <asp:Button ID="btnPrevious" runat="server" CssClass="auto-style1" OnClick="btnPrevious_Click" Text="Previous" />
    <asp:Button ID="btnNext" runat="server" CssClass="auto-style2" OnClick="btnNext_Click" Text="Next" />
    <asp:Button ID="btnLast" runat="server" CssClass="auto-style3" OnClick="btnLast_Click" Text="Last" />
    <asp:SqlDataSource ID="SDSProduct" runat="server" ConnectionString="<%$ ConnectionStrings:UWPCS3870ConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="DataSourceHolder" runat="server">
    </asp:Content>
