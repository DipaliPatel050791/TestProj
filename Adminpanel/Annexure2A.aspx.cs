using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Adminpanel_Annexure2A : System.Web.UI.Page
{
    int ApplicationID = 0;
    DataSet DS = null;
    DataTable DT = null;
    DataSet DS1 = null;
    DataTable DT1 = null;
    int UID = 0;
    int i = 0;
    int j = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label lblPage = (Label)Master.FindControl("lblPage");
        lblPage.Text = "annexure-2A • in-principle approval";

        if (Session["ApplicationID"] != null)
        {

            ApplicationID = Convert.ToInt32(Session["ApplicationID"].ToString().Trim());
        }
        if (!IsPostBack)
        {
            FillEntityDetails();
            RepeterData();
        }
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
        setDS();
        //con.Open();
        //cmd = new SqlCommand("Select * from Comment Order By Post_Date desc", con);
        //DataSet ds = new DataSet();
        //da = new SqlDataAdapter(cmd);
        //da.Fill(ds);
        DS = MyApplicationIT.GetAssistance_annexure2A(ApplicationID);
        DT = DS.Tables[0];
        RepterDetails.DataSource = DS;
        RepterDetails.DataBind();
    }

    public void FillEntityDetails()
    {
        setDS();
        DS = MyApplicationIT.GetEntity_annexure2A(ApplicationID);
        DT = DS.Tables[0];
        if (DT != null && DT.Rows.Count > 0)
        {
            if (!string.IsNullOrEmpty(DT.Rows[0]["Registration_Number"].ToString()))
            {
                lblRegNo.Text = DT.Rows[0]["Registration_Number"].ToString();
            }
            if (!string.IsNullOrEmpty(DT.Rows[0]["entity_pan"].ToString()))
            {
                lblEntityPAN.Text = DT.Rows[0]["entity_pan"].ToString();
            }
            if (!string.IsNullOrEmpty(DT.Rows[0]["entity_name"].ToString()))
            {
                lblEntityName.Text = DT.Rows[0]["entity_name"].ToString();
            }
            if (!string.IsNullOrEmpty(DT.Rows[0]["TypeOfEntity"].ToString()))
            {
                lblEntityType.Text = DT.Rows[0]["TypeOfEntity"].ToString();
            }
        }
    }

    protected void rdRecommend_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rdRecommend.SelectedValue.ToString ().Trim ()== "a")
        {
            divAssistance.Visible = true; 
        }
        else if (rdRecommend.SelectedValue.ToString().Trim() == "r")
        {
            divAssistance.Visible = false;
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        int IncentiveID = 0;
        int annexure2Aid = 0;
        decimal AssistanceByApplicant = 0;
        string CapitalByExecutive = string.Empty;
        string Remarks = string.Empty;
        bool CapitalConsidered = false;
        string finalremarks = string.Empty;
        int count = 0;

        annexure2Aid = MyApplicationIT.InsertAnnexure2A(ApplicationID,UID); 


        if (rdRecommend.SelectedValue.ToString().Trim() == "a" && annexure2Aid>0)
        {
            foreach (RepeaterItem item in RepterDetails.Items)
            {
                if (item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
                {
                    Label lblIncentiveID = (Label)item.FindControl("lblIncentiveID");
                    if (!string.IsNullOrEmpty(lblIncentiveID.Text))
                    {
                        IncentiveID = Convert.ToInt32(lblIncentiveID.Text); 
                    }
                    Label lblAssistanceByApplicant = (Label)item.FindControl("lblAssistanceByApplicant");
                    if (!string.IsNullOrEmpty(lblAssistanceByApplicant.Text))
                    {
                        AssistanceByApplicant = Convert.ToDecimal(lblAssistanceByApplicant.Text); 
                    }
                    TextBox txtCapitalByExe = (TextBox)item.FindControl("txtCapitalByExe");
                    if (!string.IsNullOrEmpty(txtCapitalByExe.Text))
                    {
                        CapitalByExecutive = txtCapitalByExe.Text.ToString();
                    }
                    else
                    {
                        CapitalByExecutive = "NA";
                    }
                    TextBox txtCapitalRemarks = (TextBox)item.FindControl("txtCapitalRemarks");
                    if (!string.IsNullOrEmpty(txtCapitalRemarks.Text))
                    {
                        Remarks = txtCapitalRemarks.Text.ToString();
                    }
                    else
                    {
                        Remarks = "NA";
                    }
                    RadioButtonList rdlCapitalConsidered = (RadioButtonList)item.FindControl("rdlCapitalConsidered");
                    
                    if (rdlCapitalConsidered.SelectedValue.ToString().Trim()== "c")
                    {
                        CapitalConsidered = true;
                    }
                    else if(rdlCapitalConsidered.SelectedValue.ToString().Trim() == "n")
                    {
                        CapitalConsidered = false;
                    }
                    if (!string.IsNullOrEmpty(txtFinalRemarks.Text))
                    {
                        finalremarks = txtFinalRemarks.Text; 
                    }

                    i = MyApplicationIT.InsertAssistanceAnnexure2A(annexure2Aid, 1, AssistanceByApplicant, CapitalByExecutive, Remarks, CapitalConsidered, finalremarks, IncentiveID);
                    if (i>0)
                    {
                        count = count + 1;
                    }
                }
            }

            if (count== RepterDetails.Items.Count)
            {
                j = MyApplicationIT.UpdateStatusAnnexure2A(ApplicationID, 14, UID, txtFinalRemarks.Text);
            }
        }
        else if (rdRecommend.SelectedValue.ToString().Trim() == "r")
        {
            i = MyApplicationIT.InsertAssistanceAnnexure2A(annexure2Aid, UID, 0, string.Empty, string.Empty, false, txtFinalRemarks.Text,0);
            if(i>0)
            {
                j = MyApplicationIT.UpdateStatusAnnexure2A(ApplicationID, 15, UID, txtFinalRemarks.Text);
            }
        }
    }
}