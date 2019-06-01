
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;

public partial class Controls_DangKyTK : System.Web.UI.UserControl
{
    SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|DataDangKy.mdf;Integrated Security=True");
    protected void bntDK_Click(object sender, EventArgs e)
    {
        string ins = "Insert into [Table](Ten,Gmail,SDT,MatKhau)values('" + Name.Text + "','" + EmailAddress.Text + "','" + PhoneHome.Text + "','" + Matkhau.Text + "')";
        SqlCommand com = new SqlCommand(ins, con);
        con.Open();
        com.ExecuteNonQuery();
        con.Close();
        if (Page.IsValid)
        {
            string fileName = Server.MapPath("~/App_Data/DangKy.txt");
            string MessageBody = File.ReadAllText(fileName);
            MessageBody = MessageBody.Replace("##Name##", Name.Text);
            MessageBody = MessageBody.Replace("##Email##", EmailAddress.Text);
            MessageBody = MessageBody.Replace("##HomePhone##", PhoneHome.Text);
            MessageBody = MessageBody.Replace("##MatKhau##", Matkhau.Text);
            HienThi.Visible = true;
            HienThi.Text = MessageBody;
            FormTable.Visible = false;

        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
    }
}