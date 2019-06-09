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
        if (LoiNhan.Text.Trim().Length == 0)
        {
            Response.Write("<script>alert('Bạn chưa để lại lời nhắn')</script>");
            return;
        }
        string ins = "Insert into [LoiNhan](Ten,Coment)values('" + Pagelienhe.Text + "','" + LoiNhan.Text + "')";
        SqlCommand com = new SqlCommand(ins, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
        if (Page.IsValid)
        {
            Hloinhan.Visible = true;
            Hienthiloinhan.Text = Pagelienhe.Text;
            Hienloinhan.Text = LoiNhan.Text;
        }
    }
}