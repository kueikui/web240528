<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="web_1.Web.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" id="Head1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Session最常用在會員登入的身分檢查上面</title>
    <style type="text/css">
    .auto-style1 {
        background-color: #FFFF00;
    }
    .auto-style2 {
        color: #FF3300;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
     <asp:Panel ID="ChartPanel" runat="server"></asp:Panel>


        <asp:Chart ID="Chart1" runat="server" OnLoad="Chart1_Load" AlternateText="載入失敗" BackColor="FloralWhite" BorderlineWidth="0" Height="250px" Width="500px">
    <Legends>
        <asp:Legend AutoFitMinFontSize="5" Name="Legend1" Title="性別"></asp:Legend>
    </Legends>
    <Titles>
        <asp:Title Text="男女跌倒次數比較" />
    </Titles>
    <Series>
        <asp:Series Name="Series1" Legend="Legend1" ChartType="Column"></asp:Series>
    </Series>
    <ChartAreas>
        <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
    </ChartAreas>
</asp:Chart>

    </form>
</body>
</html>
