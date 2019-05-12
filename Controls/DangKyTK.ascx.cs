
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Controls_DangKyTK : System.Web.UI.UserControl
{
    protected void bntDK_Click(object sender, EventArgs e)
    {
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