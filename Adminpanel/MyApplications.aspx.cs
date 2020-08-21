using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Adminpanel_MyApplications : System.Web.UI.Page
{
    string uname = string.Empty;
    DataSet DS = null;
    DataTable DT = null;
    DataSet DS1 = null;
    DataTable DT1 = null;
    int i = 0;
    Int32 UID = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label lblPage = (Label)Master.FindControl("lblPage");
        lblPage.Text = "my applications";

        if (!IsPostBack)
        {
            FillGridData();
        }
    }
    private void setDS()
    {
        DS = null;
        DT = null;
        DS1 = null;
        DT1 = null;

    }
    public void FillGridData()
    {
        //con.Open();
        //cmd = new SqlCommand("Select * from Comment Order By Post_Date desc", con);
        //DataSet ds = new DataSet();
        //da = new SqlDataAdapter(cmd);
        //da.Fill(ds);
        DS = MyApplicationIT.GetallITApplicationAdmin();
        DT = DS.Tables[0];
        if (DT != null && DT.Rows.Count > 0)
        {
            grdApplication.DataSource = DS;
            grdApplication.DataBind();
        }
        else
        {
            grdApplication.DataSource = null;
            grdApplication.DataBind();
        }

    }

    protected void btnSubmitAnnexure2_Click(object sender, EventArgs e)
    {

       
    }

    protected void grdApplication_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.ToString().Equals("submitAnnexure2", StringComparison.CurrentCultureIgnoreCase))
        {


            GridViewRow gvr = (GridViewRow)((Button)e.CommandSource).NamingContainer;

            int id = Convert.ToInt32(e.CommandArgument.ToString());
            Session["ApplicationID"] = id;
            Response.Redirect("Annexure2A.aspx"); 
        }
    }
}