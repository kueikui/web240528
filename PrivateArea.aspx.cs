using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web_1
{
    public partial class PrivateArea : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cAccount"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}