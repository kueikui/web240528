using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace web_1.Web
{
    public partial class Login : System.Web.UI.Page
    {
        static string connectionString = "server=203.64.84.154;database=care;uid=root;password=Topic@2024;port = 33061";
        protected void Page_Load(object sender, EventArgs e)
        {
            //https://ithelp.ithome.com.tw/articles/10265283?sc=rss.iron
        }


        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string account = cAccountText.Text.Trim();
            string password = cPasswordText.Text.Trim();

            MySqlConnection connection = new MySqlConnection(connectionString);
            connection.Open();
            string query = "SELECT cAccount, cPassword FROM CarerLogin WHERE cAccount = @Account AND cPassword = @Password";
            MySqlCommand command = new MySqlCommand(query, connection);
            command.Parameters.AddWithValue("@Account", account);
            command.Parameters.AddWithValue("@Password", password);
            MySqlDataReader reader = command.ExecuteReader();

            if (reader.Read())
            {
                Session["cAccount"] = reader["cAccount"].ToString();
                Response.Redirect("WebForm1.aspx");
            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "帳號或密碼不正確";
            }
            reader.Close();
            connection.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            sign_up.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            sign_up.Visible = true;
        }

        protected void sign_up_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
            Panel1.Visible = false;
            Panel3.Visible = false;
        }
    }
} //if (TextBox1.Text == "123" & TextBox2.Text == "123")
            //{
            //    Response.Cookies["u_name"].Value = "123";

            //    Response.Cookies["Login"].Value = "OK";
            //    Response.Cookies["Login"].Expires = DateTime.Now.AddDays(30);
            //    //登入成功，這個Cookie的期限是三十天內都有效！
            //}

            //Response.Redirect("Cookie_Login_end.aspx");
            //登入後，不管帳號密碼對不對，都會到下一個網頁。
            //帳號密碼正確的人，下一頁會看見正確訊息！
            //帳號密碼錯誤的人，下一頁會看見錯誤訊息。
        //    protected void Page_Load(object sender, EventArgs e)
        //{
        //    GenerateCaptcha();
        //}

       
        //protected void btnRefreshCaptcha_Click(object sender, EventArgs e)
        //{
        //    // 刷新驗證碼
        //    GenerateCaptcha();
        //}

        //private void GenerateCaptcha()
        //{
        //    // 生成隨機驗證碼
        //    string captcha = GenerateRandomCode();

        //    // 將驗證碼存入Session，以便在驗證時使用
        //    Session["Captcha"] = captcha;

        //    // 產生圖片並顯示驗證碼
        //    imgCaptcha.ImageUrl = "GenerateCaptchaImage.ashx?code=" + captcha;
        //}

        //private string GenerateRandomCode()
        //{
        //    // 生成4位隨機數字驗證碼
        //    Random random = new Random();
        //    string chars = "0123456789";
        //    string code = "";
        //    for (int i = 0; i < 4; i++)
        //    {
        //        code += chars[random.Next(chars.Length)];
        //    }
        //    return code;
        //}