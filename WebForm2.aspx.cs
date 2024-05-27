using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
namespace web_1.Web
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        static string connectionString = "server=203.64.84.154;database=care;uid=root;password=Topic@2024;port = 33061";

        protected void Page_Load(object sender, EventArgs e)
        { 
        
        }
        protected void Chart1_Load(object sender, EventArgs e)
        {
            //string connectionString = "your_connection_string";
            string query = "SELECT f.fTime, e.eGender, COUNT(f.fId) AS FallCount FROM Elder e JOIN Fall f ON e.eId = f.eId GROUP BY f.fTime, e.eGender ORDER BY f.fTime, e.eGender";

            DataTable dt = new DataTable();

            MySqlConnection conn = new MySqlConnection(connectionString);
            MySqlCommand cmd = new MySqlCommand(query, conn);
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                da.Fill(dt);


            Chart1.Series.Clear();
            Series maleSeries = new Series("男性");
            maleSeries.ChartType = SeriesChartType.Column;
            maleSeries.Color = System.Drawing.Color.Blue;

            Series femaleSeries = new Series("女性");
            femaleSeries.ChartType = SeriesChartType.Column;
            femaleSeries.Color = System.Drawing.Color.Pink;

            foreach (DataRow row in dt.Rows)
            {
                DateTime date = Convert.ToDateTime(row["fTime"]);
                string gender = row["eGender"].ToString();
                int fallCount = Convert.ToInt32(row["FallCount"]);

                if (gender == "male")
                {
                    maleSeries.Points.AddXY(date, fallCount);
                }
                else if (gender == "female")
                {
                    femaleSeries.Points.AddXY(date, fallCount);
                }
            }

            Chart1.Series.Add(maleSeries);
            Chart1.Series.Add(femaleSeries);

            Chart1.ChartAreas[0].AxisX.Title = "日期";
            Chart1.ChartAreas[0].AxisY.Title = "跌倒次數";
            Chart1.Titles[0].Text = "每日男女跌倒次數比較";
        }
    }
}