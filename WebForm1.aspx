<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="WebForm1.aspx.cs" Inherits="web_1.WebForm1" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<style>
        body, html {
            margin: 0;
            padding: 0;
            overflow: hidden;
            align-content:center;
        }
        .wrapper {
             display: grid;
             width:2500px;
             grid-template-rows: 2fr 5fr; 
             grid-template-columns: 1fr 5fr;
        }

</style>
    <main aria-labelledby="title"> 
        <div class="wrapper">
            <div>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/螢幕擷取畫面 2024-03-19 122535.png" Width="100%" />
            </div>
            <div>
                <video id="videoPlayer" runat="server" width="320" height="240" controls>
                    <source id="videoSource" runat="server"  src="tes.mp4" type="video/mp4">Your browser does not support the video tag.
                </video>
                <%--<video width="320" height="240" controls>
                    <source src="tes.mp4" type="video/mp4"> Your browser does not support the video tag. </video> --%>
            </div>
            <div>
                <table style="border:none">
                    <tr>
                        <td><asp:Button ID="Button1" runat="server" Text="一樓走廊-1" Width="100px" OnClick="Button1_Click"  /></td>
                        <td><asp:Button ID="Button2" runat="server" Text="一樓走廊-2" Width="100px" OnClick="Button2_Click" /></td>
                        <td><asp:Button ID="Button7" runat="server" Text="廚房" Width="100px" OnClick="Button7_Click" /></td>
                    </tr>
                    <tr>
                        <td> <asp:Button ID="Button8" runat="server" Text="客廳" Width="100px" OnClick="Button8_Click" /></td>
                        <td><asp:Button ID="Button9" runat="server" Text="玄關" Width="100px" OnClick="Button9_Click" /></td>
                        <td> <asp:Button ID="Button10" runat="server" Text="飯廳" Width="100px" OnClick="Button10_Click" /></td>
                    </tr>
                </table>
            </div>
        </div>
    </main>
</asp:Content>
<%--
    
      #content {
      width: 100%;
      height: 100%;
      display: flex;
      flex-wrap: wrap;
  }

  .panel1 {
      width: 30%;
      height: 100%;
      padding: 10px;
  }
  .panel2{
      width: 70%;
      height: 100%;  
      padding: 10px;
  }
    
    <div id="content">
       
    
        <asp:Panel ID="map" runat="server" BackColor="#FFFF99"  class="panel1">
             <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/t.png" Width="100%" />
        </asp:Panel>

        <asp:Panel ID="screen" runat="server" BackColor="#FFCCFF" class="panel2">
            <video controls width="250">
                <source src="https://youtu.be/AsXtYDiwdbw?si=g4QXyXzyxCXGHuij" type="video/mp4" />
            </video>
             <!--<video src="https://youtu.be/AsXtYDiwdbw?si=g4QXyXzyxCXGHuij" controls="controls" style="margin-top:10px; width:100%;"></video>-->
        </asp:Panel>

        <asp:Panel ID="button" runat="server" BackColor="#99FFCC" class="panel1">
            <asp:Button ID="Button1" runat="server" Text="Button" />
            <asp:Button ID="Button2" runat="server" Text="Button" />
            <asp:Button ID="Button3" runat="server" Text="Button" />
            <asp:Button ID="Button4" runat="server" Text="Button" />
            <asp:Button ID="Button5" runat="server" Text="Button" />
            <asp:Button ID="Button6" runat="server" Text="Button" />
        </asp:Panel>

        <asp:Panel ID="info" runat="server" BackColor="#99CCFF" class="panel2">
            <asp:TextBox ID="TextBox1" runat="server" style="width: 100%;">12324556</asp:TextBox>
        </asp:Panel>
    </div>--%>