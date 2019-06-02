using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : BasePage
{
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
}