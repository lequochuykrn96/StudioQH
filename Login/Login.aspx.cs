using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Login_Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\DataDangKy.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void bntdangnhap_Click(object sender, EventArgs e)
    {
        string check = "select count(*) from [Table] where Ten='" + TBDN.Text + "'and MatKhau='" + TBMK.Text + "'";
        SqlCommand com = new SqlCommand(check, con);
        con.Open();
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        con.Close();
        if (temp == 1)
        {
            Session["Ten"] = TBDN.Text;
            Response.Redirect("~/TrangChu.aspx");
        }
        else if (TBDN.Text.Trim()!=null)
        {
            Response.Write("<script>alert('Username/Password chưa đúng')</script>");
        }
    }
    protected void bntdangky_Click(object sender, EventArgs e)
    {

    }
}