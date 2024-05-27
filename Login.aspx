<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="web_1.Web.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        .container {
            width: 400px;
            margin: 0px auto;
            text-align: center;
            padding: 20px;
            border: 1px solid #ccc;
            border-bottom-left-radius: 0; /* 下左角弧度 */
    border-bottom-right-radius: 0; /* 下右角弧度 */
        }

        .input-field {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            box-sizing: border-box;
        }

        .choose-container {
            width:450px;
            margin: 80px auto 0px;
            text-align: center;        
        }

        .choose-btn {
            background-color: #4CAF50;
            border: none;
            color: white;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            border-top-left-radius: 7px; /* 上左角弧度 */
            border-top-right-radius: 7px; /* 上右角弧度 */
        }

        .login-container{
            width:400px;
        }

        .login-btn {
            background-color: #4CAF50;
            border: none;
            color: white;
            padding: 12px 24px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            border-radius: 7px;
            margin-right: 10px;
        }

        h2 {
            background-color: #0077b6;
            color: white;
            text-align: center;
            padding: 10px 20px;
            display: inline-block;
            border-radius: 20px;
        }
        .forget-btn{
            background-color: transparent;
            border: none;
        }
        .sign_up-btn{
            background-color: transparent;
            border: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel3" runat="server">
            <div class="choose-container">
                <asp:Button ID="Button1" runat="server" Text="系統登入" BackColor="Aqua" BorderColor="#66FFFF" Height="50px" Width="218px" CssClass="choose-btn" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" Text="居家登入" BackColor="#66FFFF" BorderColor="#66FFFF" Height="50px" Width="218px" CssClass="choose-btn" OnClick="Button2_Click" />
            </div>
        </asp:Panel>

        <div class="container">
            <asp:Panel ID="Panel1" runat="server">
               
                <h2>Login</h2>
                <div class="form-container">
                    <div>
                        <label for="txtUsername">Username:</label>
                        <asp:TextBox ID="cAccountText" runat="server" CssClass="input-field" Width="300px"></asp:TextBox>
                    </div>
                    <div>
                        <label for="txtPassword">Password:</label>
                        <asp:TextBox ID="cPasswordText" runat="server" TextMode="Password" CssClass="input-field" Width="300px"></asp:TextBox>
                    </div>
                    <div class="login-container">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" CssClass="login-btn" />
                    </div>
                    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
                </div>
                <div class="link-container">
                    <asp:Button ID="forget" runat="server" Text="忘記密碼" BorderStyle="None" CssClass="forget-btn" ForeColor="#0066FF" />
                    <br />
                    <asp:Button ID="sign_up" runat="server" Text="註冊" BorderStyle="None" CssClass="sign_up-btn" ForeColor="#0066FF" Visible="False" OnClick="sign_up_Click" />
                </div>
            </asp:Panel>
       
            <asp:Panel ID="Panel2" runat="server" Visible="False" Width="400px">
                  <h2>註冊帳號</h2>
                    <div class="form-container">
                        用戶姓名:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <br />
                        帳號:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <br />
                        密碼:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>


                        <div class="login-container">
                            <asp:Button ID="Button3" runat="server" Text="Login" OnClick="btnLogin_Click" CssClass="login-btn" />
                        </div>
                        <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
                    </div>   
            </asp:Panel>
         </div>
        
        <asp:PasswordRecovery ID="PasswordRecovery1" runat="server"></asp:PasswordRecovery>
            <video width="320" height="240" controls>
                <source src="test.mp4" type="video/mp4">
                Your browser does not support the video tag.
            </video>
    </form>
</body>
</html>
