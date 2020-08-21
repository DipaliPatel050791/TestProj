using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Policy : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["LoginName"] != null)
            lblUserName.Text = Session["LoginName"].ToString();
        else
            Response.Redirect("DataLoginPolicy.aspx");

    }

    protected void lnkLogout_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Logout.aspx");
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session["Mode"] = "Insert";
        Response.Redirect("~/EntryForms/NewApplicationIT.aspx");
    }
}
