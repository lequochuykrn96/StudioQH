using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Theme
        if (!Page.IsPostBack)
        {
            string selectedTheme = Page.Theme;
            HttpCookie preferredTheme = Request.Cookies.Get("PreferredTheme");
            if (preferredTheme != null)
            {
                selectedTheme = preferredTheme.Value;
            }
            if (!string.IsNullOrEmpty(selectedTheme))
            {
                ListItem item = ThemeList.Items.FindByValue(selectedTheme);
                if (item != null)
                {
                    item.Selected = true;
                }
            }
        }
        //Tree view
        switch (Page.Theme.ToLower())
        {
            case "night":
                Menu.Visible = false;
                TreeView1.Visible = true;
                break;
            default:
                Menu.Visible = true;
                TreeView1.Visible = false;
                break;
        }
    }
    
    protected void ThemeList_SelectedIndexChanged(object sender, EventArgs e)
    {
        HttpCookie preferredTheme = new HttpCookie("PreferredTheme");
        preferredTheme.Expires = DateTime.Now.AddMonths(3);
        preferredTheme.Value = ThemeList.SelectedValue;
        Response.Cookies.Add(preferredTheme);
        Response.Redirect(Request.Url.ToString());
    }
    protected void bntDN_Click(object sender, EventArgs e)
    {
        if (TBDN.Text.Trim().Length == 0)
        {
            return;
        }
        if (TBMK.Text.Trim().Length == 0)
        {
            return;
        }
        else
        {
            XuatHien.Text = TBDN.Text + "<br/>Chào mừng bạn đến với StudioQH ";
            DangNhap.Visible = false;
            XuatHien.Visible = true;
        }
    }
    protected void bntDK_Click(object sender, EventArgs e)
    { 

    }

}
