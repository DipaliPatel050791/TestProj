using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EntryForms_MyApplicationIT : System.Web.UI.Page
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

        if (!string.IsNullOrEmpty(Session["LoginName"] as string))
        {

            uname = Session["LoginName"].ToString().Trim();
        }
        else
        {
            Response.Redirect("~/Account/DataLoginPolicy.aspx");
        }
        if (!string.IsNullOrEmpty(Session["login_id"] as string))
        {
            UID = Convert.ToInt32(Session["login_id"].ToString().Trim());
        }
        if (!IsPostBack)
        {
            RepeterData();
        }

    }

    protected void btnView_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        RepeaterItem ritem = (RepeaterItem)btn.NamingContainer;
        Session["applicant_id"] = (Label)ritem.FindControl("lblApplicantIDValue");
        Response.Redirect("~/EntryForms/ITPolicy_ViewAnnexure1.aspx");
    }

    
    private void setDS()
    {
        DS = null;
        DT = null;
        DS1 = null;
        DT1 = null;

    }
    public void RepeterData()
    {
        //con.Open();
        //cmd = new SqlCommand("Select * from Comment Order By Post_Date desc", con);
        //DataSet ds = new DataSet();
        //da = new SqlDataAdapter(cmd);
        //da.Fill(ds);
        DS = MyApplicationIT.GetallITApplicationFromLoginID(UID);
        DT = DS.Tables[0];
        RepterDetails.DataSource = DS;
        RepterDetails.DataBind();
    }
    protected void btnEditApplication_Click(object sender, EventArgs e) {
       
        LinkButton btn = (LinkButton)sender;
        RepeaterItem ritem = (RepeaterItem)btn.NamingContainer;
        Label lblApplicantIDValue = (Label)ritem.FindControl("lblApplicantIDValue") as Label;
        HiddenField hdnAnexureID= (HiddenField)ritem.FindControl("hdnAnexureID") as HiddenField;
        HiddenField hdnApplicationID = (HiddenField)ritem.FindControl("hdnApplicationID") as HiddenField;
        Session["applicant_id"] = lblApplicantIDValue.Text;
        Session["annexure_id"] = hdnAnexureID.Value;
        Session["applicationid"] = hdnApplicationID.Value;
        Session["Mode"] = "update";
        Response.Redirect("~/EntryForms/NewApplicationIT.aspx");
    }
    protected void btnEditAnnexure3_Click(object sender, EventArgs e)
    {
       

        LinkButton btn = (LinkButton)sender;
        RepeaterItem ritem = (RepeaterItem)btn.NamingContainer;
        Label lblApplicantIDValue = (Label)ritem.FindControl("lblApplicantIDValue") as Label;
        HiddenField hdnAnexureID = (HiddenField)ritem.FindControl("hdnAnexureID") as HiddenField;
        HiddenField hdnAnnexure3Id = (HiddenField)ritem.FindControl("hdnAnnexure3Id") as HiddenField;
        HiddenField hdnApplicationID = (HiddenField)ritem.FindControl("hdnApplicationID") as HiddenField;
        Session["applicant_id"] = lblApplicantIDValue.Text;
        Session["annexure_id"] = hdnAnexureID.Value;
        Session["applicationid"] = hdnApplicationID.Value;
        Session["Annexure3ID"] = hdnAnnexure3Id.Value;
        if (Convert.ToInt32(Session["Annexure3ID"]) == 0)
        {
            Session["Mode"] = "Add";
        }
        else
        {
            Session["Mode"] = "update";
        }
        Label lblRegistrationNoValue = (Label)ritem.FindControl("lblRegistrationNoValue") as Label;

        Session["RegNo"] = lblRegistrationNoValue.Text;

        Response.Redirect("~/EntryForms/IT_Annexure3A.aspx");
    }

}