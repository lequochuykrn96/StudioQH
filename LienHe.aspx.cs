using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : BasePage
{
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\DataDangKy.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Ten"] != null)
        {
            Pagelienhe.Text = Session["Ten"].ToString();
        }
        else
        {
            Response.Redirect("~/Login/Login.aspx");
        }
    }

    protected void gui_Click(object sender, EventArgs e)
    {
        string ins = "Insert into [LoiNhan](Ten,Coment)values('" + Pagelienhe.Text + "','" + LoiNhan.Text + "')";
        SqlCommand com = new SqlCommand(ins, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
        if (Page.IsValid)
        {
            Response.Write("<script>alert('Cảm ơn bạn đã gửi, chúng tôi sẽ liên lạc sớm nhất')</script>");
        }
    }
}