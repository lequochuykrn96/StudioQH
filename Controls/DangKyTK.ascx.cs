
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;

public partial class Controls_DangKyTK : System.Web.UI.UserControl
{
    //Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\DataDangKy.mdf;Integrated Security=True
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\DataDangKy.mdf;Integrated Security=True");
    protected void bntDK_Click(object sender, EventArgs e)
    {
            string sql = "Select Count(*) from [Table] where Ten ='" + Name.Text + "'";
            SqlCommand x = new SqlCommand(sql, con);
            con.Open();
            int temp = Convert.ToInt32(x.ExecuteScalar().ToString());
            con.Close();
            if (temp > 0)
            {
                Response.Write("<script>alert('Tài khoản này đã có')</script>");
            }
            else
            {
                string ins = "Insert into [Table](Ten,Gmail,SDT,MatKhau)values('" + Name.Text + "','" + EmailAddress.Text + "','" + PhoneHome.Text + "','" + Matkhau.Text + "')";
                SqlCommand com = new SqlCommand(ins, con);
                con.Open();
                com.ExecuteNonQuery();
                con.Close();
                if (Page.IsValid) {
                    Response.Write("<script>alert('Đăng ký thành công')</script>");
                }
            }

    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
}