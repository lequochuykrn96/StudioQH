using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Controls_DangNhap : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void bntDangNhap_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            string fileName = Server.MapPath("~/App_Data/DangNhap.txt");
            string MessageBody = File.ReadAllText(fileName);
            MessageBody = MessageBody.Replace("##DangNhap##", TKDangNhap.Text);
            MessageBody = MessageBody.Replace("##MatKhau##", MKDangNhap.Text);
            HienThiDangNhap.Visible = true;
            HienThiDangNhap.Text = MessageBody;
            FormTable.Visible = false;
        }
    }
}