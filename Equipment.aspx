<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Equipment.aspx.cs" Inherits="web_1.Equipment" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
            <h1>設備</h1>
    <asp:GridView ID="GridView1" runat="server"  OnRowCommand="GridView1_RowCommand">
        <Columns>
            <asp:ButtonField ButtonType="Button" Text="查看畫面"  CommandName="View"/>
        </Columns>
</asp:GridView>
    </main>
</asp:Content>
