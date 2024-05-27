using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web_1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cAccount"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            if (!IsPostBack)
            {
                string eqId = Request.QueryString["eqId"];
                string videoUrl = "";
                if (!string.IsNullOrEmpty(eqId))
                {
                    switch (eqId)
                    {
                        case "E001":
                            videoUrl = "~/Videos/test.mp4";
                            break;
                        case "E002":
                            videoUrl = "~/Videos/test1.mp4";
                            break;
                        default:
                            videoUrl = "~/Videos/default.mp4";
                            break;
                    }
                    videoSource.Attributes["src"] = videoUrl;
                    videoPlayer.Attributes["src"] = videoUrl;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            videoSource.Attributes["src"] = ("~/Videos/test.mp4");
            //videoPlayer.Attributes["src"] = videoUrl;
            //SetVideoSource("~/Videos/test.mp4");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //SetVideoSource("~/Videos/test1.mp4");
        }

        protected void Button7_Click(object sender, EventArgs e)
        {

        }

        protected void Button8_Click(object sender, EventArgs e)
        {

        }

        protected void Button9_Click(object sender, EventArgs e)
        {

        }

        protected void Button10_Click(object sender, EventArgs e)
        {

        }
        private void SetVideoSource(string videoUrl)
        {
            videoSource.Attributes["src"] = videoUrl;
            videoPlayer.Attributes["src"] = videoUrl;
        }
    }
} 