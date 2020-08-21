using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Account_MyProfile : System.Web.UI.Page
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
            fillState();
            fillProfileData(UID);
        }
    }
    private void setDS()
    {
        DS = null;
        DT = null;
        DS1 = null;
        DT1 = null;

    }
    private void fillProfileData(int UID)
    {
        try
        {
            DS1 = MyProfile.GetApplicantProfileDetailsByUserID(UID);
            DT1 = DS1.Tables[0];
           
            if (DT1 != null && DT1.Rows.Count > 0)
            {

                              


            }
        }
        catch (Exception ex)
        {
            lblMSG.Text = ex.Message;
        }
    }
    private void fillState()
    {
        setDS();
        try
        {
            DS = MyProfile.SelectState();
            DT = DS.Tables[0];
            if (DT != null && DT.Rows.Count > 0)
            {
                ddlState.DataSource = DT;
                ddlState.DataValueField = "id";
                ddlState.DataTextField = "state_name";
                ddlState.DataBind();
                ddlState.Items.Insert(0, new ListItem("-Select-", "0"));
            }
        }
        catch (Exception ex)
        {
            lblMSG.Text = ex.Message;
        }
    }
    protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtDistrict.Focus();
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtAadhaarNo.Text.Length != 0)
            {
                bool isValidnumber = AadharCard.validateVerhoeff(txtAadhaarNo.Text);
                if (isValidnumber)
                {
                    lblMSG.Text = "Aadhaar Number Validation Success.";
                }
                else
                {

                    lblMSG.Text = "Invalid Aadhaar Number";
                    return;
                }
            }

            i = MyProfile.InsertUpdateProfileDetails(txtFirstName.Text.ToString(),txtLastName.Text.ToString(),txtMobileNumber.Text.ToString(),txtTelephoneNumber.Text.ToString(),txtEmailId.Text.ToString(),txtPostalCode.Text.ToString(),txtAddressLine1.Text.ToString(),txtAddressLine2.Text.ToString(),Convert.ToInt32(ddlState.SelectedValue),txtDistrict.Text.ToString(),txtCityVillage.Text.ToString(),txtAadhaarNo.Text.ToString(),UID);
        
        }
        catch (Exception ex)
        {
            string errorMessage = ex.Message;
    ScriptManager.RegisterStartupScript(this, GetType(),
                    "ServerControlScript", "errorMessage", true);
        }



    }
}