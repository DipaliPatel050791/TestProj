using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using DbFactory;
using System.Web.UI.HtmlControls;
using System.IO;

public partial class EntryForms_IT_Annexure3A : System.Web.UI.Page
{
    int i = 0;
    int j = 0;
    int UID = 0;
    DataSet DS = null;
    DataTable DT = null;
    string ImageFileName = string.Empty;
    string imgName = string.Empty;
    string imgPath = string.Empty;
    int imgSize = 0;
    string extension = string.Empty;
    string File_name = string.Empty;
    int AnnexureID = 0;
    int ApplicationID = 0;
    int Annexure1ID = 0;
    int Annexure3ID = 0;
    int RegistrationNo = 0;

    int Annexure3UnitDetailID = 0;
    int Annexure3DateID = 0;
    int ITeSAddressID = 0;
    int Annexure3ExistingUnitDetailID = 0;
    int Annexure3FinMeansID = 0;
    int Annexure3BankAddressID = 0;
    int ApplicantID = 0;
    string mode = "add";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(Session["login_id"] as string))
        {
            UID = Convert.ToInt32(Session["login_id"].ToString().Trim());
        }
        if (!string.IsNullOrEmpty(Session["applicant_id"] as string))
        {
            ApplicantID = Convert.ToInt32(Session["applicant_id"].ToString());
        }
        if (!string.IsNullOrEmpty(Session["applicationid"] as string))
        {
            ApplicationID = Convert.ToInt32(Session["applicationid"].ToString());
        }
        if (!string.IsNullOrEmpty(Session["Annexure3ID"] as string))
        {
            Annexure3ID = Convert.ToInt32(Session["Annexure3ID"].ToString());
            ViewState["Annexure3ID"] = Annexure3ID;
        }
        if (!string.IsNullOrEmpty(Session["RegNo"] as string))
        {
            try
            {
                RegistrationNo = Convert.ToInt32(Session["RegNo"].ToString());
                lblRegistrationNoValue.Text = RegistrationNo.ToString();
            }
            catch { }
        }
        if (!string.IsNullOrEmpty(Session["Mode"] as string))
            mode = Session["Mode"].ToString().Trim().ToLower();
        if (!IsPostBack)
        {
            tabBasicInfo.Visible = true;
            tabDirectorDetails.Visible = false;
            tabITesUnitDetails.Visible = false;
            tabFinProj.Visible = false;
            tabAssisSought.Visible = false;
            tabBnkAccDetail.Visible = false;
            tabCommOper.Visible = false;
            tabDeclaration.Visible = false;
            tabAck.Visible = false;
            tabDocUpload.Visible = false;
            fillBasicInformation();
            fillState();
            fillCorrespondenceAddress();
            fillAuthorisedPersonDetails();
            fillEntityType();
            fillEntityDetails();
            fillGrid(ApplicationID);
            RepeterData();

            txtEntityName.ReadOnly = true;
            txtEntityMobileNo.ReadOnly = true;
            txtEntityEmailID.ReadOnly = true;
        }
    }
    public void RepeterData()
    {
        //Annexure3ID = Convert.ToInt32(ViewState["Annexure3ID"]);
        //Annexure3ID = Annexure3ID == 0 ? 8 : Annexure3ID; //temporary data
        setDS();
        //con.Open();
        //cmd = new SqlCommand("Select * from Comment Order By Post_Date desc", con);
        //DataSet ds = new DataSet();
        //da = new SqlDataAdapter(cmd);
        //da.Fill(ds);
        DS = ITApplication3A.GetAssistance_annexure3A(ApplicationID, Annexure3ID);
        DT = DS.Tables[0];
        RepterDetails.DataSource = DS;
        RepterDetails.DataBind();
    }
    protected void rdlAssistanceClaim_SelectedIndexChanged(object sender, EventArgs e)
    {
        RadioButtonList rdlAssistanceClaim = (RadioButtonList)sender;
        RepeaterItem item = (sender as RadioButtonList).NamingContainer as RepeaterItem;
        TextBox txtAssistaceAmount = (item.FindControl("txtAssistaceAmount") as TextBox);

        if (rdlAssistanceClaim.SelectedValue.ToString().Trim() == "y")
        {
            txtAssistaceAmount.ReadOnly = false;
        }
        else if (rdlAssistanceClaim.SelectedValue.ToString().Trim() == "n")
        {
            //txtAssistaceAmount.Text = "";
            txtAssistaceAmount.ReadOnly = true;
        }
    }
    protected void linktabBasicInfo_Click(object sender, EventArgs e)
    {
        tabBasicInfo.Visible = true;
        tabDirectorDetails.Visible = false;
        tabITesUnitDetails.Visible = false;
        tabFinProj.Visible = false;
        tabAssisSought.Visible = false;
        tabBnkAccDetail.Visible = false;
        tabCommOper.Visible = false;
        tabDeclaration.Visible = false;
        tabAck.Visible = false;
        tabDocUpload.Visible = false;
        linktabBasicInfo.CssClass = "nav-link text-sm text-capitalize active";
        linktabDirectorDetails.CssClass = "nav-link text-sm text-capitalize";
        linktabITesUnitDetails.CssClass = "nav-link text-sm text-capitalize";
        linktabFinProj.CssClass = "nav-link text-sm text-capitalize";
        linktabAssisSought.CssClass = "nav-link text-sm text-capitalize";
        linktabBnkAccDetail.CssClass = "nav-link text-sm text-capitalize";
        linktabCommOper.CssClass = "nav-link text-sm text-capitalize";
        linktabDeclaration.CssClass = "nav-link text-sm text-capitalize";
        linktabAck.CssClass = "nav-link text-sm text-capitalize";
        linktabReqDoc.CssClass = "nav-link text-sm text-capitalize";
    }
    protected void linktabDirectorDetails_Click(object sender, EventArgs e)
    {
        tabBasicInfo.Visible = false;
        tabDirectorDetails.Visible = true;
        tabITesUnitDetails.Visible = false;
        tabFinProj.Visible = false;
        tabAssisSought.Visible = false;
        tabBnkAccDetail.Visible = false;
        tabCommOper.Visible = false;
        tabDeclaration.Visible = false;
        tabAck.Visible = false;
        tabDocUpload.Visible = false;
        linktabBasicInfo.CssClass = "nav-link text-sm text-capitalize";
        linktabDirectorDetails.CssClass = "nav-link text-sm text-capitalize active";
        linktabITesUnitDetails.CssClass = "nav-link text-sm text-capitalize";
        linktabFinProj.CssClass = "nav-link text-sm text-capitalize";
        linktabAssisSought.CssClass = "nav-link text-sm text-capitalize";
        linktabBnkAccDetail.CssClass = "nav-link text-sm text-capitalize";
        linktabCommOper.CssClass = "nav-link text-sm text-capitalize";
        linktabDeclaration.CssClass = "nav-link text-sm text-capitalize";
        linktabAck.CssClass = "nav-link text-sm text-capitalize";
        linktabReqDoc.CssClass = "nav-link text-sm text-capitalize";
    }
    protected void linktabITesUnitDetails_Click(object sender, EventArgs e)
    {
        tabBasicInfo.Visible = false;
        tabDirectorDetails.Visible = false;
        tabITesUnitDetails.Visible = true;
        tabFinProj.Visible = false;
        tabAssisSought.Visible = false;
        tabBnkAccDetail.Visible = false;
        tabCommOper.Visible = false;
        tabDeclaration.Visible = false;
        tabAck.Visible = false;
        tabDocUpload.Visible = false;
        linktabBasicInfo.CssClass = "nav-link text-sm text-capitalize";
        linktabDirectorDetails.CssClass = "nav-link text-sm text-capitalize";
        linktabITesUnitDetails.CssClass = "nav-link text-sm text-capitalize active";
        linktabFinProj.CssClass = "nav-link text-sm text-capitalize";
        linktabAssisSought.CssClass = "nav-link text-sm text-capitalize";
        linktabBnkAccDetail.CssClass = "nav-link text-sm text-capitalize";
        linktabCommOper.CssClass = "nav-link text-sm text-capitalize";
        linktabDeclaration.CssClass = "nav-link text-sm text-capitalize";
        linktabAck.CssClass = "nav-link text-sm text-capitalize";
        linktabReqDoc.CssClass = "nav-link text-sm text-capitalize";
        fillCommonDetails();
        fillAnnexure3ITeSUniDetail();
        fillAnnexure3ITeSUniDetailDomesticTurnOver();
        fillAnnexure3ITeSUniDetailExportsTurnOver();
        fillAnnexure3ITeSUniDetailEmployeeCount();
        fillAnnexure3ITeSUniDetailExpansionDiversification();
    }
    protected void linktabFinProj_Click(object sender, EventArgs e)
    {
        tabBasicInfo.Visible = false;
        tabDirectorDetails.Visible = false;
        tabITesUnitDetails.Visible = false;
        tabFinProj.Visible = true;
        tabAssisSought.Visible = false;
        tabBnkAccDetail.Visible = false;
        tabCommOper.Visible = false;
        tabDeclaration.Visible = false;
        tabAck.Visible = false;
        tabDocUpload.Visible = false;
        linktabBasicInfo.CssClass = "nav-link text-sm text-capitalize";
        linktabDirectorDetails.CssClass = "nav-link text-sm text-capitalize";
        linktabITesUnitDetails.CssClass = "nav-link text-sm text-capitalize";
        linktabFinProj.CssClass = "nav-link text-sm text-capitalize active";
        linktabAssisSought.CssClass = "nav-link text-sm text-capitalize";
        linktabBnkAccDetail.CssClass = "nav-link text-sm text-capitalize";
        linktabCommOper.CssClass = "nav-link text-sm text-capitalize";
        linktabDeclaration.CssClass = "nav-link text-sm text-capitalize";
        linktabAck.CssClass = "nav-link text-sm text-capitalize";
        linktabReqDoc.CssClass = "nav-link text-sm text-capitalize";
        fillAnnexure3FPRevenewForecast();
        fillAnnexure3FPExpenditureForecast();
        fillAnnexure3FPNetProfitForecast();
        fillAnnexure3FPCashFlowBO();
        fillAnnexure3FPFinancingProject();
    }
    protected void linktabAssisSought_Click(object sender, EventArgs e)
    {
        tabBasicInfo.Visible = false;
        tabDirectorDetails.Visible = false;
        tabITesUnitDetails.Visible = false;
        tabFinProj.Visible = false;
        tabAssisSought.Visible = true;
        tabBnkAccDetail.Visible = false;
        tabCommOper.Visible = false;
        tabDeclaration.Visible = false;
        tabAck.Visible = false;
        tabDocUpload.Visible = false;
        linktabBasicInfo.CssClass = "nav-link text-sm text-capitalize";
        linktabDirectorDetails.CssClass = "nav-link text-sm text-capitalize";
        linktabITesUnitDetails.CssClass = "nav-link text-sm text-capitalize";
        linktabFinProj.CssClass = "nav-link text-sm text-capitalize";
        linktabAssisSought.CssClass = "nav-link text-sm text-capitalize active";
        linktabBnkAccDetail.CssClass = "nav-link text-sm text-capitalize";
        linktabCommOper.CssClass = "nav-link text-sm text-capitalize";
        linktabDeclaration.CssClass = "nav-link text-sm text-capitalize";
        linktabAck.CssClass = "nav-link text-sm text-capitalize";
        linktabReqDoc.CssClass = "nav-link text-sm text-capitalize";
    }
    protected void linktabBnkAccDetail_Click(object sender, EventArgs e)
    {
        tabBasicInfo.Visible = false;
        tabDirectorDetails.Visible = false;
        tabITesUnitDetails.Visible = false;
        tabFinProj.Visible = false;
        tabAssisSought.Visible = false;
        tabBnkAccDetail.Visible = true;
        tabCommOper.Visible = false;
        tabDeclaration.Visible = false;
        tabAck.Visible = false;
        tabDocUpload.Visible = false;
        linktabBasicInfo.CssClass = "nav-link text-sm text-capitalize";
        linktabDirectorDetails.CssClass = "nav-link text-sm text-capitalize";
        linktabITesUnitDetails.CssClass = "nav-link text-sm text-capitalize";
        linktabFinProj.CssClass = "nav-link text-sm text-capitalize";
        linktabAssisSought.CssClass = "nav-link text-sm text-capitalize";
        linktabBnkAccDetail.CssClass = "nav-link text-sm text-capitalize active";
        linktabCommOper.CssClass = "nav-link text-sm text-capitalize";
        linktabDeclaration.CssClass = "nav-link text-sm text-capitalize";
        linktabAck.CssClass = "nav-link text-sm text-capitalize";
        linktabReqDoc.CssClass = "nav-link text-sm text-capitalize";
        fillbankAccountDetail();
    }
    protected void linktabCommOper_Click(object sender, EventArgs e)
    {
        tabBasicInfo.Visible = false;
        tabDirectorDetails.Visible = false;
        tabITesUnitDetails.Visible = false;
        tabFinProj.Visible = false;
        tabAssisSought.Visible = false;
        tabBnkAccDetail.Visible = false;
        tabCommOper.Visible = true;
        tabDeclaration.Visible = false;
        tabAck.Visible = false;
        tabDocUpload.Visible = false;
        linktabBasicInfo.CssClass = "nav-link text-sm text-capitalize";
        linktabDirectorDetails.CssClass = "nav-link text-sm text-capitalize";
        linktabITesUnitDetails.CssClass = "nav-link text-sm text-capitalize";
        linktabFinProj.CssClass = "nav-link text-sm text-capitalize";
        linktabAssisSought.CssClass = "nav-link text-sm text-capitalize";
        linktabBnkAccDetail.CssClass = "nav-link text-sm text-capitalize";
        linktabCommOper.CssClass = "nav-link text-sm text-capitalize active";
        linktabDeclaration.CssClass = "nav-link text-sm text-capitalize";
        linktabAck.CssClass = "nav-link text-sm text-capitalize";
        linktabReqDoc.CssClass = "nav-link text-sm text-capitalize";
        fillCommOpeDateBegin();
    }
    protected void linktabDeclaration_Click(object sender, EventArgs e)
    {
        tabBasicInfo.Visible = false;
        tabDirectorDetails.Visible = false;
        tabITesUnitDetails.Visible = false;
        tabFinProj.Visible = false;
        tabAssisSought.Visible = false;
        tabBnkAccDetail.Visible = false;
        tabCommOper.Visible = false;
        tabDeclaration.Visible = true;
        tabAck.Visible = false;
        tabDocUpload.Visible = false;
        linktabBasicInfo.CssClass = "nav-link text-sm text-capitalize";
        linktabDirectorDetails.CssClass = "nav-link text-sm text-capitalize";
        linktabITesUnitDetails.CssClass = "nav-link text-sm text-capitalize";
        linktabFinProj.CssClass = "nav-link text-sm text-capitalize";
        linktabAssisSought.CssClass = "nav-link text-sm text-capitalize";
        linktabBnkAccDetail.CssClass = "nav-link text-sm text-capitalize";
        linktabCommOper.CssClass = "nav-link text-sm text-capitalize";
        linktabDeclaration.CssClass = "nav-link text-sm text-capitalize active";
        linktabAck.CssClass = "nav-link text-sm text-capitalize";
        linktabReqDoc.CssClass = "nav-link text-sm text-capitalize";
        fillDeclaration();
    }
    protected void linktabAck_Click(object sender, EventArgs e)
    {
        tabBasicInfo.Visible = false;
        tabDirectorDetails.Visible = false;
        tabITesUnitDetails.Visible = false;
        tabFinProj.Visible = false;
        tabAssisSought.Visible = false;
        tabBnkAccDetail.Visible = false;
        tabCommOper.Visible = false;
        tabDeclaration.Visible = false;
        tabAck.Visible = true;
        tabDocUpload.Visible = false;
        linktabBasicInfo.CssClass = "nav-link text-sm text-capitalize";
        linktabDirectorDetails.CssClass = "nav-link text-sm text-capitalize";
        linktabITesUnitDetails.CssClass = "nav-link text-sm text-capitalize";
        linktabFinProj.CssClass = "nav-link text-sm text-capitalize";
        linktabAssisSought.CssClass = "nav-link text-sm text-capitalize";
        linktabBnkAccDetail.CssClass = "nav-link text-sm text-capitalize";
        linktabCommOper.CssClass = "nav-link text-sm text-capitalize";
        linktabDeclaration.CssClass = "nav-link text-sm text-capitalize";
        linktabAck.CssClass = "nav-link text-sm text-capitalize active";
        linktabReqDoc.CssClass = "nav-link text-sm text-capitalize";
    }
    protected void linktabReqDoc_Click(object sender, EventArgs e)
    {
        tabBasicInfo.Visible = false;
        tabDirectorDetails.Visible = false;
        tabITesUnitDetails.Visible = false;
        tabFinProj.Visible = false;
        tabAssisSought.Visible = false;
        tabBnkAccDetail.Visible = false;
        tabCommOper.Visible = false;
        tabDeclaration.Visible = false;
        tabAck.Visible = false;
        tabDocUpload.Visible = true;
        linktabBasicInfo.CssClass = "nav-link text-sm text-capitalize";
        linktabDirectorDetails.CssClass = "nav-link text-sm text-capitalize";
        linktabITesUnitDetails.CssClass = "nav-link text-sm text-capitalize";
        linktabFinProj.CssClass = "nav-link text-sm text-capitalize";
        linktabAssisSought.CssClass = "nav-link text-sm text-capitalize";
        linktabBnkAccDetail.CssClass = "nav-link text-sm text-capitalize";
        linktabCommOper.CssClass = "nav-link text-sm text-capitalize";
        linktabDeclaration.CssClass = "nav-link text-sm text-capitalize";
        linktabAck.CssClass = "nav-link text-sm text-capitalize";
        linktabReqDoc.CssClass = "nav-link text-sm text-capitalize active";
    }
    protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
    {


    }
    protected void ddlTypeOfEntityValue_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ddlAreaScale_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ddlITeSState_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ddlAreaUsageScale_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnAddMore_Click(object sender, EventArgs e)
    {

    }
    protected void btnRemove_Click(object sender, EventArgs e)
    {

    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        //txtEntityEmailID.Text = "";
        //txtEntityMobileNo.Text = "";
        txtEntityTelNo.Text = "";
        //txtEntityName.Text = "";
        ddlAuthState.SelectedIndex = 0;
        txtCAPostalCode.Text = "";
        txtCAAddressLine1.Text = "";
        txtCAAddressLine2.Text = "";
        txtCACity.Text = "";
        ddlState.SelectedIndex = 0;
        txtCATelephoneNo.Text = "";
        txtCityVillage.Text = "";
        txtAuthAddressLine2.Text = "";
        txtAuthAddressLine1.Text = "";
        txtAuthPostalCode.Text = "";
        chkIsAuthAddrSameasCorrAddr.Checked = false;
        txtAPEmailId.Text = "";
        txtAPMobileNumber.Text = "";
        txtAPDesignation.Text = "";
        txtAPFirstName.Text = "";
        chkIsAuthPersonandApplicantSame.Checked = false;
        //Director Promotor Detail Pending
        //txtDirectorFirstName.Text = "";
        //txtDinNumber.Text = "";
        //txtDirectorPanNo.Text = "";
        //txtDirectorMobileNumber.Text = "";
        //txtDirectorEmailId.Text = "";
        //chkDirectorAddcheck.Checked = false;
        chkIsAuthPersonandApplicantSame.Checked = false;
        txtAPFirstName.Text = "";
        txtAPDesignation.Text = "";
        txtAPMobileNumber.Text = "";
        txtAPEmailId.Text = "";
        chkIsAuthAddrSameasCorrAddr.Checked = false;
        txtAuthPostalCode.Text = "";
        txtAuthAddressLine1.Text = "";
        txtAuthAddressLine2.Text = "";
        txtCityVillage.Text = "";
        ddlAuthState.SelectedIndex = 0;
        txtTINNo.Text = "";
        txtGSTIN.Text = "";
        txtPan.Text = "";
        txtCertificateOfIncorporation.Text = "";
        txtEntityRegistrationNo.Text = "";
        ddlTypeOfEntityValue.SelectedIndex = 0;

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {

            string EntityTelephoneNo = string.Empty;
            string Corresadd2 = string.Empty;
            string Authadd2 = string.Empty;
            string CorresTelephone = string.Empty;
            bool IsAuthorizedPersonAndApplicant_Same = false;
            bool IsAuthorizedPersonAndCorrespondenceAddress_Same = false;

            if (chkIsAuthPersonandApplicantSame.Checked)
                IsAuthorizedPersonAndApplicant_Same = true;
            if (chkIsAuthAddrSameasCorrAddr.Checked)
                IsAuthorizedPersonAndCorrespondenceAddress_Same = true;

            if (!string.IsNullOrEmpty(txtEntityTelNo.Text))
            {
                EntityTelephoneNo = txtEntityTelNo.Text.Trim();
            }
            if (!string.IsNullOrEmpty(txtCAAddressLine2.Text))
            {
                Corresadd2 = txtCAAddressLine2.Text.Trim();
            }
            if (!string.IsNullOrEmpty(txtAuthAddressLine2.Text))
            {
                Authadd2 = txtAuthAddressLine2.Text.Trim();
            }
            if (!string.IsNullOrEmpty(txtCATelephoneNo.Text))
            {
                CorresTelephone = txtCATelephoneNo.Text.Trim();
            }
            if (!string.IsNullOrEmpty(txtEntityName.Text) && !string.IsNullOrEmpty(txtEntityMobileNo.Text) && !string.IsNullOrEmpty(txtEntityEmailID.Text) && !string.IsNullOrEmpty(txtCAPostalCode.Text) && !string.IsNullOrEmpty(txtCAAddressLine1.Text) && !string.IsNullOrEmpty(txtCACity.Text) && ddlState.SelectedIndex > 0 && ddlTypeOfEntityValue.SelectedIndex > 0 && !string.IsNullOrEmpty(txtEntityRegistrationNo.Text) && !string.IsNullOrEmpty(txtCertificateOfIncorporation.Text) && !string.IsNullOrEmpty(txtPan.Text) && !string.IsNullOrEmpty(txtGSTIN.Text) && !string.IsNullOrEmpty(txtTINNo.Text) && !string.IsNullOrEmpty(txtAPFirstName.Text) && !string.IsNullOrEmpty(txtAPDesignation.Text) && !string.IsNullOrEmpty(txtAPMobileNumber.Text) && !string.IsNullOrEmpty(txtAPEmailId.Text) && !string.IsNullOrEmpty(txtAuthPostalCode.Text) && !string.IsNullOrEmpty(txtAuthAddressLine1.Text) && !string.IsNullOrEmpty(txtCityVillage.Text) && ddlAuthState.SelectedIndex > 0)
            {
                // var tuple = ITApplication3A.InsertITAnnexure3A(ApplicationID, txtEntityName.Text.ToString(), EntityTelephoneNo, Convert.ToInt16(txtEntityMobileNo.Text.ToString()), txtEntityEmailID.Text.ToString(), Convert.ToInt32(txtCAPostalCode.Text.ToString()), txtCAAddressLine1.Text.ToString(), Corresadd2, txtCACity.Text.ToString(), Convert.ToInt32(ddlState.SelectedValue.ToString()), CorresTelephone, Convert.ToInt32(ddlTypeOfEntityValue.SelectedValue.ToString()), txtEntityRegistrationNo.Text.ToString(), txtCertificateOfIncorporation.Text.ToString(), txtPan.Text.ToString(), txtGSTIN.Text.ToString(), txtTINNo.Text.ToString(), txtAPFirstName.Text.ToString(), txtAPDesignation.Text.ToString(), Convert.ToInt32(txtAPMobileNumber.Text.ToString()), txtAPEmailId.Text.ToString(), Convert.ToInt32(txtAuthPostalCode.Text.ToString()), txtAuthAddressLine1.Text.ToString(), Authadd2, txtCityVillage.Text.ToString(), Convert.ToInt32(ddlAuthState.SelectedValue.ToString()));
                //..ApplicationID = 130098; //temporary data
                if (!string.IsNullOrEmpty(ViewState["Annexure3ID"] as string))
                    Annexure3ID = int.Parse(ViewState["Annexure3ID"].ToString());
                var tuple = ITApplication3A.InsertUpdateITAnnexure3A(mode, Annexure3ID, ApplicationID, txtEntityName.Text.ToString(), EntityTelephoneNo, txtEntityMobileNo.Text.ToString(), txtEntityEmailID.Text.ToString(), txtCAPostalCode.Text.ToString(), txtCAAddressLine1.Text.ToString(), Corresadd2, txtCACity.Text.ToString(), Convert.ToInt32(ddlState.SelectedValue.ToString()), CorresTelephone, Convert.ToInt32(ddlTypeOfEntityValue.SelectedValue.ToString()), txtEntityRegistrationNo.Text.ToString(), txtCertificateOfIncorporation.Text.ToString(), txtPan.Text.ToString(), txtGSTIN.Text.ToString(), txtTINNo.Text.ToString(), txtAPFirstName.Text.ToString(), txtAPDesignation.Text.ToString(), txtAPMobileNumber.Text.ToString(), txtAPEmailId.Text.ToString(), Convert.ToInt32(txtAuthPostalCode.Text.ToString()), txtAuthAddressLine1.Text.ToString(), Authadd2, txtCityVillage.Text.ToString(), Convert.ToInt32(ddlAuthState.SelectedValue.ToString()), IsAuthorizedPersonAndApplicant_Same, IsAuthorizedPersonAndCorrespondenceAddress_Same);

                //File_name = tuple.Item1;
                Annexure3ID = Convert.ToInt32(tuple.Item1);
                ViewState["Annexure3ID"] = Annexure3ID;
                //..ApplicationID = Convert.ToInt32(tuple.Item2);
                //..ViewState["ApplicationID"] = ApplicationID;
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Enter Required Details.');", true);
            }
            linktabDirectorDetails_Click(sender, e);

        }
        catch (Exception ex)
        {
            //MSG.Text = ex.Message;
        }
    }
    protected void btnDirectorDetailReset_Click(object sender, EventArgs e)
    { }
    protected void btnDirectorDetailsubmit_Click(object sender, EventArgs e)
    {

        LblRequiredDirectorDetails.Visible = false;

        if (grdDirectorDetails.Rows.Count <= 0)
            LblRequiredDirectorDetails.Visible = true;
        else
            linktabITesUnitDetails_Click(sender, e);

    }
    protected void btnITeSReset_Click(object sender, EventArgs e)
    {
        txtAreaOfLand.Text = "";
        ddlAreaScale.SelectedIndex = 0;
        txtProjectDesc.Text = "";
        chkIslocationandCorrAddrSame.Checked = false;
        txtITeSPostalCode.Text = "";
        txtITeSAddressLine1.Text = "";
        txtITeSAddressLine2.Text = "";
        txtITeSCity.Text = "";
        ddlITeSState.SelectedIndex = 0;
        txtITeSTelephoneNumber.Text = "";
        txtDomesticTOYear1.Text = "";
        txtDomesticTOYear2.Text = "";
        txtDomesticTOYear3.Text = "";
        txtDomesticTOYear4.Text = "";
        txtDomesticTOYear5.Text = "";
        txtDomesticTOYear6.Text = "";
        txtExportTOYear1.Text = "";
        txtExportTOYear2.Text = "";
        txtExportTOYear3.Text = "";
        txtExportTOYear4.Text = "";
        txtExportTOYear5.Text = "";
        txtExportTOYear6.Text = "";
        txtEmployeesTOYear1.Text = "";
        txtEmployeesTOYear2.Text = "";
        txtEmployeesTOYear3.Text = "";
        txtEmployeesTOYear4.Text = "";
        txtEmployeesTOYear5.Text = "";
        txtEmployeesTOYear6.Text = "";
        txtAreaUsage.Text = "";
        txtNoOfEmployee.Text = "";
        txtEmployeeEPFAmount.Text = "";
        txtAvgLastYrEleUnit.Text = "";
        txtTOYear2.Text = "";
        txtTOYear1.Text = "";
        txtTOYear0.Text = "";
        txtGSTYear2.Text = "";
        txtGSTYear1.Text = "";
        txtGSTYear0.Text = "";
    }
    protected void btnITeSSave_Click(object sender, EventArgs e)
    {
        try
        {
            string ITeSTelephoneNumber = string.Empty;
            string ITeSadd1 = string.Empty;
            string ITeSadd2 = string.Empty;
            string DTYear1 = string.Empty;
            string DTYear2 = string.Empty;
            string DTYear3 = string.Empty;
            string DTYear4 = string.Empty;
            string DTYear5 = string.Empty;
            string DTYear6 = string.Empty;
            string ETYear1 = string.Empty;
            string ETYear2 = string.Empty;
            string ETYear3 = string.Empty;
            string ETYear4 = string.Empty;
            string ETYear5 = string.Empty;
            string ETYear6 = string.Empty;
            string ECYear1 = string.Empty;
            string ECYear2 = string.Empty;
            string ECYear3 = string.Empty;
            string ECYear4 = string.Empty;
            string ECYear5 = string.Empty;
            string ECYear6 = string.Empty;
            bool IsLocAddrSameAsCorrAddr = false;

            if (!string.IsNullOrEmpty(txtITeSTelephoneNumber.Text))
            {
                ITeSTelephoneNumber = txtITeSTelephoneNumber.Text.Trim();
            }
            if (!string.IsNullOrEmpty(txtITeSAddressLine1.Text))
            {
                ITeSadd1 = txtITeSAddressLine1.Text.Trim();
            }
            if (!string.IsNullOrEmpty(txtITeSAddressLine2.Text))
            {
                ITeSadd2 = txtITeSAddressLine2.Text.Trim();
            }
            if (chkIslocationandCorrAddrSame.Checked)
                IsLocAddrSameAsCorrAddr = true;

            if (DivUndertakingExpDiv.Visible == true)
            {
                if (!string.IsNullOrEmpty(rblUnitType.SelectedValue) && !string.IsNullOrEmpty(txtAreaOfLand.Text) && !string.IsNullOrEmpty(txtProjectDesc.Text) && !string.IsNullOrEmpty(txtITeSPostalCode.Text) && !string.IsNullOrEmpty(txtITeSAddressLine1.Text) && !string.IsNullOrEmpty(txtITeSCity.Text) && ddlITeSState.SelectedIndex > 0 && !string.IsNullOrEmpty(txtAreaUsage.Text) && ddlAreaUsageScale.SelectedIndex > 0 && !string.IsNullOrEmpty(txtNoOfEmployee.Text) && !string.IsNullOrEmpty(txtEmployeeEPFAmount.Text) && !string.IsNullOrEmpty(txtAvgLastYrEleUnit.Text) && !string.IsNullOrEmpty(txtTOYear2.Text) && !string.IsNullOrEmpty(txtTOYear1.Text) && !string.IsNullOrEmpty(txtTOYear0.Text) && !string.IsNullOrEmpty(txtGSTYear2.Text) && !string.IsNullOrEmpty(txtGSTYear1.Text) && !string.IsNullOrEmpty(txtGSTYear0.Text))
                {
                    //ddlAreaScale
                    var tuple = ITApplication3A.InsertITAnnexure3AITeSExpansionDiversification(Convert.ToInt32(ViewState["Annexure3ID"]), Convert.ToInt16(rblUnitType.SelectedValue), Convert.ToInt16(ddlAreaScale.SelectedValue), Convert.ToInt16(txtAreaOfLand.Text), txtProjectDesc.Text.ToString(), txtITeSPostalCode.Text.ToString(), ITeSadd1, ITeSadd2, txtITeSCity.Text.ToString(), Convert.ToInt32(ddlITeSState.SelectedValue.ToString()), ITeSTelephoneNumber, IsLocAddrSameAsCorrAddr, txtDomesticTOYear1.Text.ToString(), txtDomesticTOYear2.Text.ToString(), txtDomesticTOYear3.Text.ToString(), txtDomesticTOYear4.Text.ToString(), txtDomesticTOYear5.Text.ToString(), txtDomesticTOYear6.Text.ToString(), txtExportTOYear1.Text.ToString(), txtExportTOYear2.Text.ToString(), txtExportTOYear3.Text.ToString(), txtExportTOYear4.Text.ToString(), txtExportTOYear5.Text.ToString(), txtExportTOYear6.Text.ToString(), txtEmployeesTOYear1.Text.ToString(), txtEmployeesTOYear2.Text.ToString(), txtEmployeesTOYear3.Text.ToString(), txtEmployeesTOYear4.Text.ToString(), txtEmployeesTOYear5.Text.ToString(), txtEmployeesTOYear6.Text.ToString(), Convert.ToInt64(txtAreaUsage.Text), Convert.ToInt16(ddlAreaUsageScale.SelectedValue), Convert.ToInt64(txtNoOfEmployee.Text), Convert.ToInt64(txtEmployeeEPFAmount.Text), Convert.ToInt64(txtAvgLastYrEleUnit.Text), Convert.ToInt64(txtTOYear2.Text), Convert.ToInt64(txtTOYear1.Text), Convert.ToInt64(txtTOYear0.Text), Convert.ToInt64(txtGSTYear2.Text), Convert.ToInt64(txtGSTYear1.Text), Convert.ToInt64(txtGSTYear0.Text));
                    //File_name = tuple.Item1;
                    Annexure3UnitDetailID = Convert.ToInt32(tuple.Item1);
                    ViewState["Annexure3UnitDetailID"] = Annexure3UnitDetailID;
                    ITeSAddressID = Convert.ToInt32(tuple.Item2);
                    ViewState["ITeSAddressID"] = ITeSAddressID;
                    Annexure3ExistingUnitDetailID = Convert.ToInt32(tuple.Item3);
                    ViewState["Annexure3ExistingUnitDetailID"] = Annexure3ExistingUnitDetailID;

                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Enter Required Details.');", true);
                }
            }
            else
            {
                if (!string.IsNullOrEmpty(rblUnitType.SelectedValue) && !string.IsNullOrEmpty(txtAreaOfLand.Text) && !string.IsNullOrEmpty(txtProjectDesc.Text) && !string.IsNullOrEmpty(txtITeSPostalCode.Text) && !string.IsNullOrEmpty(txtITeSAddressLine1.Text) && !string.IsNullOrEmpty(txtITeSCity.Text) && ddlITeSState.SelectedIndex > 0)
                {
                    var tuple = ITApplication3A.InsertUpdateITAnnexure3AITeS(Convert.ToInt32(ViewState["Annexure3ID"]), Convert.ToInt16(rblUnitType.SelectedValue), Convert.ToInt16(ddlAreaScale.SelectedValue), Convert.ToInt16(txtAreaOfLand.Text), txtProjectDesc.Text.ToString(), txtITeSPostalCode.Text.ToString(), ITeSadd1, ITeSadd2, txtITeSCity.Text.ToString(), Convert.ToInt32(ddlITeSState.SelectedValue.ToString()), ITeSTelephoneNumber, IsLocAddrSameAsCorrAddr, txtDomesticTOYear1.Text.ToString(), txtDomesticTOYear2.Text.ToString(), txtDomesticTOYear3.Text.ToString(), txtDomesticTOYear4.Text.ToString(), txtDomesticTOYear5.Text.ToString(), txtDomesticTOYear6.Text.ToString(), txtExportTOYear1.Text.ToString(), txtExportTOYear2.Text.ToString(), txtExportTOYear3.Text.ToString(), txtExportTOYear4.Text.ToString(), txtExportTOYear5.Text.ToString(), txtExportTOYear6.Text.ToString(), txtEmployeesTOYear1.Text.ToString(), txtEmployeesTOYear2.Text.ToString(), txtEmployeesTOYear3.Text.ToString(), txtEmployeesTOYear4.Text.ToString(), txtEmployeesTOYear5.Text.ToString(), txtEmployeesTOYear6.Text.ToString());
                    //File_name = tuple.Item1;
                    Annexure3UnitDetailID = Convert.ToInt32(tuple.Item1);
                    ViewState["Annexure3UnitDetailID"] = Annexure3UnitDetailID;
                    ITeSAddressID = Convert.ToInt32(tuple.Item2);
                    ViewState["ITeSAddressID"] = ITeSAddressID;
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Enter Required Details.');", true);
                }
            }

        }
        catch (Exception ex)
        {
            MSG.Text = ex.Message;
        }
    }
    protected void btnFinancialReset_Click(object sender, EventArgs e)

    {
        txtRevenueForecastYear1.Text = string.Empty;
        txtRevenueForecastYear2.Text = string.Empty;
        txtRevenueForecastYear3.Text = string.Empty;
        txtRevenueForecastYear4.Text = string.Empty;
        txtRevenueForecastYear5.Text = string.Empty;
        txtRevenueForecastYear6.Text = string.Empty;
        txtExpenditureForecastYear1.Text = string.Empty;
        txtExpenditureForecastYear2.Text = string.Empty;
        txtExpenditureForecastYear3.Text = string.Empty;
        txtExpenditureForecastYear4.Text = string.Empty;
        txtExpenditureForecastYear5.Text = string.Empty;
        txtExpenditureForecastYear6.Text = string.Empty;
        txtNetProfitForecastYear1.Text = string.Empty;
        txtNetProfitForecastYear2.Text = string.Empty;
        txtNetProfitForecastYear3.Text = string.Empty;
        txtNetProfitForecastYear4.Text = string.Empty;
        txtNetProfitForecastYear5.Text = string.Empty;
        txtNetProfitForecastYear6.Text = string.Empty;
        txtBOForecastYear1.Text = string.Empty;
        txtBOForecastYear2.Text = string.Empty;
        txtBOForecastYear3.Text = string.Empty;
        txtBOForecastYear4.Text = string.Empty;
        txtBOForecastYear5.Text = string.Empty;
        txtBOForecastYear6.Text = string.Empty;
        txtGoGAssistance.Text = string.Empty;
        txtOtherGovtOrg.Text = string.Empty;
        txtPromoterContri.Text = string.Empty;
        txtDebtBorrow.Text = string.Empty;
        lblTotalAmount.Text = string.Empty;
    }
    protected void btnFinancialSave_Click(object sender, EventArgs e)
    {
        try
        {
            if (!string.IsNullOrEmpty(txtPromoterContri.Text))
            {
                var tuple = ITApplication3A.InsertITAnnexure3AFinancialProjection(Convert.ToInt32(ViewState["Annexure3ID"]), txtRevenueForecastYear1.Text.ToString(), txtRevenueForecastYear2.Text.ToString(), txtRevenueForecastYear3.Text.ToString(), txtRevenueForecastYear4.Text.ToString(), txtRevenueForecastYear5.Text.ToString(), txtRevenueForecastYear6.Text.ToString(), txtExpenditureForecastYear1.Text.ToString(), txtExpenditureForecastYear2.Text.ToString(), txtExpenditureForecastYear3.Text.ToString(), txtExpenditureForecastYear4.Text.ToString(), txtExpenditureForecastYear5.ToString(), txtExpenditureForecastYear6.Text.ToString(), txtNetProfitForecastYear1.Text.ToString(), txtNetProfitForecastYear2.Text.ToString(), txtNetProfitForecastYear3.Text.ToString(), txtNetProfitForecastYear4.Text.ToString(), txtNetProfitForecastYear5.Text.ToString(), txtNetProfitForecastYear6.Text.ToString(), txtBOForecastYear1.Text.ToString(), txtBOForecastYear2.Text.ToString(), txtBOForecastYear3.Text.ToString(), txtBOForecastYear4.Text.ToString(), txtBOForecastYear5.Text.ToString(), txtBOForecastYear6.Text.ToString(), Convert.ToInt64(txtGoGAssistance.Text.ToString()), Convert.ToInt64(txtOtherGovtOrg.Text.ToString()), Convert.ToInt64(txtPromoterContri.Text.ToString()), Convert.ToInt64(txtDebtBorrow.Text.ToString()));
                //File_name = tuple.Item1;
                Annexure3FinMeansID = Convert.ToInt32(tuple.Item1);
                ViewState["Annexure3FinMeansID"] = Annexure3FinMeansID;

            }
            else
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Enter Required Details.');", true);
            }
        }
        catch (Exception ex)
        {
            MSG.Text = ex.Message;
        }
    }
    protected void btnAssistanceReset_Click(object sender, EventArgs e)
    {

    }
    protected void btnAssistanceSave_Click(object sender, EventArgs e)
    {
        //string mode = "Add";
        //if (!string.IsNullOrEmpty(Session["Mode"] as string))
        //    mode = Session["Mode"].ToString().Trim().ToLower();

        int IncentiveID = 0;
        string AssistanceAmount = string.Empty;
        string Remarks = string.Empty;
        int count = 0;
        bool IsAssistanceClaim = true;

        Annexure3ID = Convert.ToInt32(ViewState["Annexure3ID"]);
        Annexure3ID = Annexure3ID == 0 ? 8 : Annexure3ID; //temporary data

        foreach (RepeaterItem item in RepterDetails.Items)
        {
            RadioButtonList rdlAssistanceClaim = (RadioButtonList)item.FindControl("rdlAssistanceClaim") as RadioButtonList;

            //if (rdlAssistanceClaim.Enabled==true && rdlAssistanceClaim.SelectedValue.ToString().Trim() == "y" && Annexure3ID > 0)
            if (Annexure3ID > 0)
            {
                if (item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
                {
                    Label lblIncentiveID = (Label)item.FindControl("lblIncentiveID");
                    if (!string.IsNullOrEmpty(lblIncentiveID.Text))
                    {
                        IncentiveID = Convert.ToInt32(lblIncentiveID.Text);
                    }
                    TextBox txtAssistaceAmount = (TextBox)item.FindControl("txtAssistaceAmount");
                    if (!string.IsNullOrEmpty(txtAssistaceAmount.Text))
                    {
                        AssistanceAmount = txtAssistaceAmount.Text.ToString();
                    }
                    else
                    {
                        if (rdlAssistanceClaim.Enabled == false || rdlAssistanceClaim.SelectedValue.ToString().Trim() == "n")
                            AssistanceAmount = "NA";
                        else
                            AssistanceAmount = txtAssistaceAmount.Text.ToString();
                    }
                    TextBox txtApplicantRemarks = (TextBox)item.FindControl("txtApplicantRemarks");
                    if (!string.IsNullOrEmpty(txtApplicantRemarks.Text))
                    {
                        Remarks = txtApplicantRemarks.Text.ToString();
                    }
                    else
                    {
                        if (rdlAssistanceClaim.Enabled == false)
                            Remarks = "NA";
                        else
                            Remarks = txtApplicantRemarks.Text.ToString();
                    }
                    if (rdlAssistanceClaim.SelectedValue.ToString().Trim() == "n")
                        IsAssistanceClaim = false;

                    i = ITApplication3A.IUAssistanceAnnexure3A(mode, Annexure3ID, UID, AssistanceAmount, Remarks, IncentiveID, IsAssistanceClaim);
                    if (i > 0)
                    {
                        count = count + 1;
                    }
                }
            }


            //if (count == RepterDetails.Items.Count)
            //{
            //    j = MyApplicationIT.UpdateStatusAnnexure2A(ApplicationID, 14, UID, txtFinalRemarks.Text);
            //}
        }
        //else if (rdRecommend.SelectedValue.ToString().Trim() == "r")
        //{
        //    i = MyApplicationIT.InsertAssistanceAnnexure2A(annexure2Aid, UID, 0, string.Empty, string.Empty, false, txtFinalRemarks.Text, 0);
        //    if (i > 0)
        //    {
        //        j = MyApplicationIT.UpdateStatusAnnexure2A(ApplicationID, 15, UID, txtFinalRemarks.Text);
        //    }
        //}
    }
    protected void btnBankDtlReset_Click(object sender, EventArgs e)
    {
        txtBankName.Text = string.Empty;
        txtBranchName.Text = string.Empty;
        txtBankAcctNo.Text = string.Empty;
        txtIFSCNo.Text = string.Empty;
        txtMicrCode.Text = string.Empty;
        txtBankAddress.Text = string.Empty;
    }
    protected void btnBankDtlSave_Click(object sender, EventArgs e)
    {
        try
        {
            if (!string.IsNullOrEmpty(rblPaymentMode.SelectedValue) && !string.IsNullOrEmpty(txtBankName.Text) && !string.IsNullOrEmpty(txtBranchName.Text) && !string.IsNullOrEmpty(txtBankAcctNo.Text) && !string.IsNullOrEmpty(txtIFSCNo.Text) && !string.IsNullOrEmpty(txtMicrCode.Text) && !string.IsNullOrEmpty(txtBankAddress.Text))
            {
                var tuple = ITApplication3A.InsertITAnnexure3ABankDetails(Convert.ToInt32(ViewState["Annexure3ID"]), Convert.ToInt16(rblPaymentMode.SelectedValue), txtBankName.Text.ToString(), txtBranchName.Text.ToString(), txtBankAcctNo.Text.ToString(), txtIFSCNo.Text.ToString(), txtMicrCode.Text.ToString(), txtBankAddress.Text.ToString());
                //File_name = tuple.Item1;
                Annexure3BankAddressID = Convert.ToInt32(tuple.Item1);
                ViewState["Annexure3BankAddressID"] = Annexure3BankAddressID;

            }
            else
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Enter Required Details.');", true);
            }
        }
        catch (Exception ex)
        {
            MSG.Text = ex.Message;
        }

    }
    protected void btnDateReset_Click(object sender, EventArgs e)
    {
        dateOfBeginning.Text = string.Empty;
    }
    protected void btnDateSave_Click(object sender, EventArgs e)
    {
        try
        {
            if (!string.IsNullOrEmpty(dateOfBeginning.Text))
            {
                var tuple = ITApplication3A.InsertITAnnexure3ACommOperation(Convert.ToInt32(ViewState["Annexure3ID"]), dateOfBeginning.Text.ToString());
                //File_name = tuple.Item1;
                Annexure3DateID = Convert.ToInt32(tuple.Item1);
                ViewState["Annexure3DateID"] = Annexure3DateID;

            }
            else
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Enter Required Details.');", true);
            }
        }
        catch (Exception ex)
        {
            MSG.Text = ex.Message;
        }
    }
    protected void btnDeclarationReset_Click(object sender, EventArgs e)
    {
        chkDeclaration.Checked = false;
    }
    protected void btnDeclarationSave_Click(object sender, EventArgs e)
    {
        if (chkDeclaration.Checked == true)
        {
            i = ITApplication3A.InsertITAnnexure3ADeclaration(Convert.ToInt32(ViewState["Annexure3ID"]), Convert.ToBoolean(chkDeclaration.Checked));
            //File_name = tuple.Item1;

        }
        else
        {
            ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Enter Required Details.');", true);
        }
    }
    protected void btnAttachedFileCCPDUpload_Click(object sender, EventArgs e)
    {
        string res = string.Empty;

        res = uploadFile(fuAttachedFileCCPD, "AttachedFileCCPD");
        if (!string.IsNullOrEmpty(res))
        {
            hdnAttachedFileCCPDFilename.Value = res;
            fuAttachedFileCCPD.SaveAs(Server.MapPath(Path.Combine("~/Upload/ITPolicy/", res)));
            lnkviewAttachedFileCCPD.Visible = true;
        }
    }
    protected void btnERDUpload_Click(object sender, EventArgs e)
    {
        string res = string.Empty;

        res = uploadFile(fuERD, "ERD");
        if (!string.IsNullOrEmpty(res))
        {
            hdnERDfilename.Value = res;
            fuERD.SaveAs(Server.MapPath(Path.Combine("~/Upload/ITPolicy/", res)));
            lnkviewERDCard.Visible = true;
        }
    }
    protected void btnuploadMAA_Click(object sender, EventArgs e)
    {
        string res = string.Empty;

        res = uploadFile(fuMAA, "MAA");
        if (!string.IsNullOrEmpty(res))
        {
            hdnMAAfilename.Value = res;
            fuMAA.SaveAs(Server.MapPath(Path.Combine("~/Upload/ITPolicy/", res)));
            lnkMAA.Visible = true;
        }
    }
    protected void btnuploadCOI_Click(object sender, EventArgs e)
    {
        string res = string.Empty;

        res = uploadFile(fuCOI, "COI");
        if (!string.IsNullOrEmpty(res))
        {
            hdnfpCOIfilename.Value = res;
            fuCOI.SaveAs(Server.MapPath(Path.Combine("~/Upload/ITPolicy/", res)));
            lnkCOI.Visible = true;
        }
    }
    protected void btnuploadPAN_Click(object sender, EventArgs e)
    {
        string res = string.Empty;

        res = uploadFile(fuPAN, "PAN");
        if (!string.IsNullOrEmpty(res))
        {
            hdnfpPANfilename.Value = res;
            fuPAN.SaveAs(Server.MapPath(Path.Combine("~/Upload/ITPolicy/", res)));
            lnkPAN.Visible = true;
        }
    }
    protected void btnuploadGSTIN_Click(object sender, EventArgs e)
    {
        string res = string.Empty;

        res = uploadFile(fuGSTIN, "GSTIN");
        if (!string.IsNullOrEmpty(res))
        {
            hdnfpGSTINfilename.Value = res;
            fuGSTIN.SaveAs(Server.MapPath(Path.Combine("~/Upload/ITPolicy/", res)));
            lnkGSTIN.Visible = true;
        }
    }
    protected void btnUploadCACerti_Click(object sender, EventArgs e)
    {
        string res = string.Empty;

        res = uploadFile(fuCACerti, "CACerti");
        if (!string.IsNullOrEmpty(res))
        {
            hdnfpCACertifilename.Value = res;
            fuCACerti.SaveAs(Server.MapPath(Path.Combine("~/Upload/ITPolicy/", res)));
            lnkCACerti.Visible = true;
        }
    }
    protected void btnuploadAuthLetter_Click(object sender, EventArgs e)
    {
        string res = string.Empty;

        res = uploadFile(fuAuthLetter, "AuthLetter");
        if (!string.IsNullOrEmpty(res))
        {
            hdnfpAuthLetterfilename.Value = res;
            fuAuthLetter.SaveAs(Server.MapPath(Path.Combine("~/Upload/ITPolicy/", res)));
            lnkAuthLetter.Visible = true;
        }
    }
    protected void btnuploadLandProof_Click(object sender, EventArgs e)
    {
        string res = string.Empty;

        res = uploadFile(fuLandProof, "LandProof");
        if (!string.IsNullOrEmpty(res))
        {
            hdnfuLandProoffilename.Value = res;
            fuLandProof.SaveAs(Server.MapPath(Path.Combine("~/Upload/ITPolicy/", res)));
            lnkLandProof.Visible = true;
        }
    }
    protected void btnuploadDPR_Click(object sender, EventArgs e)
    {
        string res = string.Empty;

        res = uploadFile(fuDPR, "DPR");
        if (!string.IsNullOrEmpty(res))
        {
            hdnfuDPRfilename.Value = res;
            fuDPR.SaveAs(Server.MapPath(Path.Combine("~/Upload/ITPolicy/", res)));
            lnkDPR.Visible = true;
        }
    }
    protected void btnuploadLoanSanctionLetter_Click(object sender, EventArgs e)
    {
        string res = string.Empty;

        res = uploadFile(fuLoanSanctionLetter, "LoanSanctionLetter");
        if (!string.IsNullOrEmpty(res))
        {
            hdnfuLoanSanctionLetterfilename.Value = res;
            fuLoanSanctionLetter.SaveAs(Server.MapPath(Path.Combine("~/Upload/ITPolicy/", res)));
            lnkLoanSanctionLetter.Visible = true;
        }
    }
    protected void lnkviewAttachedFileCCPD_Click(object sender, EventArgs e)
    {
        HiddenField hdn = new HiddenField();

        if (Session["Mode"].ToString() == "" || string.IsNullOrEmpty(ViewState["AttachedFileCCPD"].ToString()))
        {

            hdn.Value = "~/Upload/ITPolicy/" + hdnAttachedFileCCPDFilename.Value.ToString();
        }
        else
        {
            hdn.Value = "~/Upload/ITPolicy/" + ViewState["AttachedFileCCPD"].ToString();
        }

        ViewDoc(hdn);
    }
    protected void lnkviewERDCard_Click(object sender, EventArgs e)
    {
        HiddenField hdn = new HiddenField();

        if (Session["Mode"].ToString() == "" || string.IsNullOrEmpty(ViewState["ERD"].ToString()))
        {

            hdn.Value = "~/Upload/ITPolicy/" + hdnERDfilename.Value.ToString();
        }
        else
        {
            hdn.Value = "~/Upload/ITPolicy/" + ViewState["ERD"].ToString();
        }

        ViewDoc(hdn);
    }
    protected void lnkMAA_Click(object sender, EventArgs e)
    {
        HiddenField hdn = new HiddenField();

        if (Session["Mode"].ToString() == "" || string.IsNullOrEmpty(ViewState["MAA"].ToString()))
        {

            hdn.Value = "~/Upload/ITPolicy/" + hdnMAAfilename.Value.ToString();
        }
        else
        {
            hdn.Value = "~/Upload/ITPolicy/" + ViewState["MAA"].ToString();
        }

        ViewDoc(hdn);
    }
    protected void lnkCOI_Click(object sender, EventArgs e)
    {
        HiddenField hdn = new HiddenField();

        if (Session["Mode"].ToString() == "" || string.IsNullOrEmpty(ViewState["COI"].ToString()))
        {

            hdn.Value = "~/Upload/ITPolicy/" + hdnfpCOIfilename.Value.ToString();
        }
        else
        {
            hdn.Value = "~/Upload/ITPolicy/" + ViewState["COI"].ToString();
        }

        ViewDoc(hdn);
    }
    protected void lnkPAN_Click(object sender, EventArgs e)
    {
        HiddenField hdn = new HiddenField();

        if (Session["Mode"].ToString() == "" || string.IsNullOrEmpty(ViewState["PAN"].ToString()))
        {

            hdn.Value = "~/Upload/ITPolicy/" + hdnfpPANfilename.Value.ToString();
        }
        else
        {
            hdn.Value = "~/Upload/ITPolicy/" + ViewState["PAN"].ToString();
        }

        ViewDoc(hdn);
    }
    protected void lnkGSTIN_Click(object sender, EventArgs e)
    {
        HiddenField hdn = new HiddenField();

        if (Session["Mode"].ToString() == "" || string.IsNullOrEmpty(ViewState["GSTIN"].ToString()))
        {

            hdn.Value = "~/Upload/ITPolicy/" + hdnfpGSTINfilename.Value.ToString();
        }
        else
        {
            hdn.Value = "~/Upload/ITPolicy/" + ViewState["GSTIN"].ToString();
        }

        ViewDoc(hdn);
    }
    protected void lnkCACerti_Click(object sender, EventArgs e)
    {
        HiddenField hdn = new HiddenField();

        if (Session["Mode"].ToString() == "" || string.IsNullOrEmpty(ViewState["CACerti"].ToString()))
        {

            hdn.Value = "~/Upload/ITPolicy/" + hdnfpCACertifilename.Value.ToString();
        }
        else
        {
            hdn.Value = "~/Upload/ITPolicy/" + ViewState["CACerti"].ToString();
        }

        ViewDoc(hdn);
    }
    protected void lnkAuthLetter_Click(object sender, EventArgs e)
    {
        HiddenField hdn = new HiddenField();

        if (Session["Mode"].ToString() == "" || string.IsNullOrEmpty(ViewState["AuthLetter"].ToString()))
        {

            hdn.Value = "~/Upload/ITPolicy/" + hdnfpAuthLetterfilename.Value.ToString();
        }
        else
        {
            hdn.Value = "~/Upload/ITPolicy/" + ViewState["AuthLetter"].ToString();
        }

        ViewDoc(hdn);
    }
    protected void lnkLandProof_Click(object sender, EventArgs e)
    {
        HiddenField hdn = new HiddenField();

        if (Session["Mode"].ToString() == "" || string.IsNullOrEmpty(ViewState["LandProof"].ToString()))
        {

            hdn.Value = "~/Upload/ITPolicy/" + hdnfuLandProoffilename.Value.ToString();
        }
        else
        {
            hdn.Value = "~/Upload/ITPolicy/" + ViewState["LandProof"].ToString();
        }

        ViewDoc(hdn);
    }
    protected void lnkDPR_Click(object sender, EventArgs e)
    {
        HiddenField hdn = new HiddenField();

        if (Session["Mode"].ToString() == "" || string.IsNullOrEmpty(ViewState["DPR"].ToString()))
        {

            hdn.Value = "~/Upload/ITPolicy/" + hdnfuDPRfilename.Value.ToString();
        }
        else
        {
            hdn.Value = "~/Upload/ITPolicy/" + ViewState["DPR"].ToString();
        }

        ViewDoc(hdn);
    }
    protected void lnkLoanSanctionLetter_Click(object sender, EventArgs e)
    {
        HiddenField hdn = new HiddenField();

        if (Session["Mode"].ToString() == "" || string.IsNullOrEmpty(ViewState["LoanSanctionLetter"].ToString()))
        {

            hdn.Value = "~/Upload/ITPolicy/" + hdnfuLoanSanctionLetterfilename.Value.ToString();
        }
        else
        {
            hdn.Value = "~/Upload/ITPolicy/" + ViewState["LoanSanctionLetter"].ToString();
        }

        ViewDoc(hdn);
    }
    private void ViewDoc(HiddenField hdnfield)
    {
        if (!string.IsNullOrEmpty(hdnfield.Value.ToString()))
        {
            if (hdnfield.Value.ToString().Trim().EndsWith(".pdf"))
            {
                Response.ContentType = "application/pdf";
            }

            else
            {
                Response.ContentType = "image/jpg";
            }
            string filePath = hdnfield.Value.ToString();

            Response.AddHeader("Content-Disposition", "attachment;filename=\"" + filePath + "\"");
            Response.TransmitFile(Server.MapPath(filePath));
            Response.End();
        }
    }
    private string uploadFile(FileUpload fp, string UploadType)
    {
        int anexid = 0;
        int appID = 0;
        string result = string.Empty;
        if (fp.HasFiles)
        {

            imgPath = Server.MapPath("~/Upload/ITPolicy/");
            imgSize = fp.PostedFile.ContentLength;
            extension = Path.GetExtension(fp.FileName);
            if (fp.PostedFile.ContentLength > 20971520)// file should be decribed here(e.g. 4 mb then 4MB -> 4 * 1024 * 1024)
            {
                //Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('File is too big.')", true);
                MSG.Text = "File is too big, Max file size allowed is 20 MB.";
                return result;
            }
            if (extension != ".jpg" && extension != ".png" && extension != ".jpeg" && extension != ".pdf")
            {
                //Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Please choose only .jpg and .png image types!')", true);
                MSG.Text = "Please choose only .jpg and .png image types or .pdf!";
                return result;
            }

            if (!string.IsNullOrEmpty(Session["Mode"] as string))
            {

                if (Session["Mode"].ToString().Trim() == "update")
                {
                    if (!string.IsNullOrEmpty(ViewState["Annexure3ID"] as string) && !string.IsNullOrEmpty(ViewState["ApplicationID"] as string))
                    {
                        anexid = Convert.ToInt32(ViewState["Annexure3ID"].ToString());
                        appID = Convert.ToInt32(ViewState["ApplicationID"].ToString());
                    }
                }
            }
            else
            {


                if (ViewState["Annexure3ID"] != null)
                {
                    anexid = Convert.ToInt32(ViewState["Annexure3ID"].ToString());
                }

                if (ViewState["ApplicationID"] != null)
                {
                    appID = Convert.ToInt32(ViewState["ApplicationID"].ToString());
                }
            }
            result = ITApplication3A.InsertIDProofData(UID, extension, imgPath, imgSize, appID, anexid, UploadType);

        }
        return result;
    }
    private void setDS()
    {
        DS = null;
        DT = null;
    }
    private void fillBasicInformation()
    {
        setDS();
        try
        {
            DS = ITApplication3A.SelectApplicantDetail(ApplicationID); // DS = ITApplication3A.SelectApplicantDetail(Convert.ToInt16(Session["login_id"]));
            DT = DS.Tables[0];
            if (DT != null && DT.Rows.Count == 1)
            {

                if (!string.IsNullOrEmpty(DT.Rows[0]["entity_name"].ToString().Trim()))
                {
                    txtEntityName.Text = DT.Rows[0]["entity_name"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["entity_address_id"].ToString().Trim()))
                {
                    int addrID = int.Parse(DT.Rows[0]["entity_address_id"].ToString().Trim());
                    DataSet dsAddr = ITApplication3A.SelectAddressDetail(addrID);
                    txtEntityTelNo.Text = dsAddr.Tables[0].Rows[0]["telephone_number"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["entity_mobile_no"].ToString().Trim()))
                {
                    txtEntityMobileNo.Text = DT.Rows[0]["entity_mobile_no"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["entity_email_id"].ToString().Trim()))
                {
                    txtEntityEmailID.Text = DT.Rows[0]["entity_email_id"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["application_id"].ToString().Trim()))
                {
                    ApplicationID = int.Parse(DT.Rows[0]["application_id"].ToString().Trim());
                    ViewState["ApplicationID"] = ApplicationID;
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["Annexure1ID"].ToString().Trim()))
                {
                    Annexure1ID = int.Parse(DT.Rows[0]["Annexure1ID"].ToString().Trim());
                    ViewState["Annexure1ID"] = Annexure1ID;
                }
                //if (!string.IsNullOrEmpty(DT.Rows[0]["email_id"].ToString().Trim()))
                //{
                //    txtEmailId.Text = DT.Rows[0]["email_id"].ToString().Trim();
                //}
                //if (!string.IsNullOrEmpty(DT.Rows[0]["entity_pan"].ToString().Trim()))
                //{
                //    hdnPanNo.Value = DT.Rows[0]["entity_pan"].ToString().Trim();
                //    txtEntityPan.Text = DT.Rows[0]["entity_pan"].ToString().Trim();
                //}

            }
        }
        catch (Exception ex)
        {
            //MSG.Text = ex.Message;
        }
    }
    private void fillCorrespondenceAddress()
    {
        setDS();
        try
        {
            DS = ITApplication3A.SelectCorrespondenceadress(ApplicationID);
            DT = DS.Tables[0];
            if (DT != null && DT.Rows.Count == 1)
            {

                if (!string.IsNullOrEmpty(DT.Rows[0]["pin_code"].ToString().Trim()))
                {
                    txtCAPostalCode.Text = DT.Rows[0]["pin_code"].ToString().Trim();
                }

                if (!string.IsNullOrEmpty(DT.Rows[0]["address_line_1"].ToString().Trim()))
                {
                    txtCAAddressLine1.Text = DT.Rows[0]["address_line_1"].ToString().Trim();
                }

                if (!string.IsNullOrEmpty(DT.Rows[0]["address_line_2"].ToString().Trim()))
                {
                    txtCAAddressLine2.Text = DT.Rows[0]["address_line_2"].ToString().Trim();
                }

                if (!string.IsNullOrEmpty(DT.Rows[0]["city"].ToString().Trim()))
                {

                    txtCACity.Text = DT.Rows[0]["city"].ToString().Trim();
                }

                if (!string.IsNullOrEmpty(DT.Rows[0]["state_id"].ToString().Trim()))
                {

                    ddlState.SelectedValue = DT.Rows[0]["state_id"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["telephone_number"].ToString().Trim()))
                {

                    txtCATelephoneNo.Text = DT.Rows[0]["telephone_number"].ToString().Trim();
                }
            }
        }
        catch (Exception ex)
        {
            //MSG.Text = ex.Message;
        }
    }
    private void fillITeSLocationAddress()
    {
        setDS();
        try
        {
            DS = ITApplication3A.SelectITeSLocationAddress(Convert.ToInt16(ViewState["Annexure3ID"]), ApplicationID);
            DT = DS.Tables[0];
            if (DT != null && DT.Rows.Count == 1)
            {
                if (!string.IsNullOrEmpty(DT.Rows[0]["pin_code"].ToString().Trim()))
                {
                    txtITeSPostalCode.Text = DT.Rows[0]["pin_code"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["address_line_1"].ToString().Trim()))
                {
                    txtITeSAddressLine1.Text = DT.Rows[0]["address_line_1"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["address_line_2"].ToString().Trim()))
                {
                    txtITeSAddressLine2.Text = DT.Rows[0]["address_line_2"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["city"].ToString().Trim()))
                {
                    txtITeSCity.Text = DT.Rows[0]["city"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["state_id"].ToString().Trim()))
                {
                    ddlITeSState.SelectedValue = DT.Rows[0]["state_id"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["telephone_number"].ToString().Trim()))
                {
                    txtITeSTelephoneNumber.Text = DT.Rows[0]["telephone_number"].ToString().Trim();
                }

            }
        }
        catch (Exception ex)
        {
            //MSG.Text = ex.Message;
        }
    }
    private void fillDirectorAddress()
    {
        setDS();
        try
        {
            DS = ITApplication3A.SelectCorrespondenceadress(ApplicationID);
            DT = DS.Tables[0];
            if (DT != null && DT.Rows.Count == 1)
            {
                string DirAddress = string.Empty;

                if (!string.IsNullOrEmpty(DT.Rows[0]["address_line_1"].ToString().Trim()))
                {
                    DirAddress += DT.Rows[0]["address_line_1"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["address_line_2"].ToString().Trim()))
                {
                    DirAddress += ", " + DT.Rows[0]["address_line_2"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["city"].ToString().Trim()))
                {
                    DirAddress += ", " + DT.Rows[0]["city"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["pin_code"].ToString().Trim()))
                {
                    DirAddress += ", " + DT.Rows[0]["pin_code"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["state_id"].ToString().Trim()))
                {
                    DirAddress += ", " + ddlState.SelectedItem.ToString();
                }
                txtDirectorAddress.Text = DirAddress;

            }
        }
        catch (Exception ex)
        {
            //MSG.Text = ex.Message;
        }
    }
    private void fillAuthorisedPersonDetails()
    {
        setDS();
        try
        {
            DS = ITApplication3A.SelectAuthorisedPersonDetails(ApplicationID);
            DT = DS.Tables[0];
            if (DT != null && DT.Rows.Count == 1)
            {

                if (!string.IsNullOrEmpty(DT.Rows[0]["auth_person_name"].ToString().Trim()))
                {
                    txtAPFirstName.Text = DT.Rows[0]["auth_person_name"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["designation"].ToString().Trim()))
                {
                    txtAPDesignation.Text = DT.Rows[0]["designation"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["phone_no"].ToString().Trim()))
                {
                    txtAPMobileNumber.Text = DT.Rows[0]["phone_no"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["email_id"].ToString().Trim()))
                {
                    txtAPEmailId.Text = DT.Rows[0]["email_id"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["pin_code"].ToString().Trim()))
                {
                    txtAuthPostalCode.Text = DT.Rows[0]["pin_code"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["address_line_1"].ToString().Trim()))
                {
                    txtAuthAddressLine1.Text = DT.Rows[0]["address_line_1"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["address_line_2"].ToString().Trim()))
                {
                    txtAuthAddressLine2.Text = DT.Rows[0]["address_line_2"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["city"].ToString().Trim()))
                {
                    txtCityVillage.Text = DT.Rows[0]["city"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["state_id"].ToString().Trim()))
                {
                    ddlAuthState.SelectedValue = DT.Rows[0]["state_id"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["IsAuthorizedPersonAndApplicant_Same"].ToString().Trim()))
                {
                    chkIsAuthPersonandApplicantSame.Checked = Convert.ToBoolean(DT.Rows[0]["IsAuthorizedPersonAndApplicant_Same"].ToString().Trim());
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["IsAuthorizedPersonAndCorrespondenceAddress_Same"].ToString().Trim()))
                {
                    chkIsAuthAddrSameasCorrAddr.Checked = Convert.ToBoolean(DT.Rows[0]["IsAuthorizedPersonAndCorrespondenceAddress_Same"].ToString().Trim());
                }
            }
        }
        catch (Exception ex)
        {
            //MSG.Text = ex.Message;
        }
    }
    private void fillEntityDetails()
    {
        setDS();
        try
        {
            DS = ITApplication3A.SelectEntityDetails(ApplicationID);
            DT = DS.Tables[0];
            if (DT != null && DT.Rows.Count == 1)
            {
                if (!string.IsNullOrEmpty(DT.Rows[0]["entity_type_id"].ToString().Trim()))
                {
                    ddlTypeOfEntityValue.SelectedValue = DT.Rows[0]["entity_type_id"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["registration_number"].ToString().Trim()))
                {
                    txtEntityRegistrationNo.Text = DT.Rows[0]["registration_number"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["incorporation_certificate_number"].ToString().Trim()))
                {
                    txtCertificateOfIncorporation.Text = DT.Rows[0]["incorporation_certificate_number"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["entity_pan"].ToString().Trim()))
                {
                    txtPan.Text = DT.Rows[0]["entity_pan"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["gst_number"].ToString().Trim()))
                {
                    txtGSTIN.Text = DT.Rows[0]["gst_number"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["tin_no"].ToString().Trim()))
                {
                    txtTINNo.Text = DT.Rows[0]["tin_no"].ToString().Trim();
                }

            }
        }
        catch (Exception ex)
        {
            //MSG.Text = ex.Message;
        }
    }
    private void fillState()
    {
        setDS();
        try
        {
            DS = ITApplication.SelectState();
            DT = DS.Tables[0];
            if (DT != null && DT.Rows.Count > 0)
            {
                ddlState.DataSource = DT;
                ddlState.DataValueField = "id";
                ddlState.DataTextField = "state_name";
                ddlState.DataBind();
                ddlState.Items.Insert(0, new ListItem("Choose", "0"));

                //Authorised Person Details State
                ddlAuthState.DataSource = DT;
                ddlAuthState.DataValueField = "id";
                ddlAuthState.DataTextField = "state_name";
                ddlAuthState.DataBind();
                ddlAuthState.Items.Insert(0, new ListItem("Choose", "0"));

                //fill Eligible IT/ITeS Unit
                ddlITeSState.DataSource = DT;
                ddlITeSState.DataValueField = "id";
                ddlITeSState.DataTextField = "state_name";
                ddlITeSState.DataBind();
                ddlITeSState.Items.Insert(0, new ListItem("Choose", "0"));

            }
        }
        catch (Exception ex)
        {
            //MSG.Text = ex.Message;
        }
    }
    private void fillEntityType()
    {
        //Basic Info Entity Detail
        setDS();
        try
        {
            DS = ITApplication3A.SelectCommonDetails("ENTITY_TYPE");
            DT = DS.Tables[0];
            if (DT != null && DT.Rows.Count > 0)
            {
                ddlTypeOfEntityValue.DataSource = DT;
                ddlTypeOfEntityValue.DataValueField = "id";
                ddlTypeOfEntityValue.DataTextField = "name";
                ddlTypeOfEntityValue.DataBind();
                ddlTypeOfEntityValue.Items.Insert(0, new ListItem("Please select the type of entity", "0"));
            }
        }
        catch (Exception ex)
        {
            //MSG.Text = ex.Message;
        }


    }
    private void fillGrid(int ApplicationID)
    {
        setDS();
        try
        {
            DS = ITApplication3A.SelectDirectorAddress(ApplicationID);
            DT = DS.Tables[0];
            if (DT != null && DT.Rows.Count > 0)
            {
                grdDirectorDetails.DataSource = DT;
                grdDirectorDetails.DataBind();
                grdDirectorDetails.UseAccessibleHeader = true;
                grdDirectorDetails.HeaderRow.TableSection = TableRowSection.TableHeader;
                TableCellCollection cells = grdDirectorDetails.HeaderRow.Cells;
                cells[0].Attributes.Add("data-class", "expand");
                cells[1].Attributes.Add("data-hide", "phone,tablet");
                cells[2].Attributes.Add("data-hide", "phone,tablet");
            }
            else
            {
                grdDirectorDetails.DataSource = null;
                grdDirectorDetails.DataBind();
            }

        }
        catch (Exception ex)
        {
            MSG.Text = ex.Message;
        }
    }
    private void fillCommonDetails()
    {
        setDS();
        try
        {
            DS = ITApplication3A.SelectCommonDetails("IT_UNIT_AREA_TYPE");
            DT = DS.Tables[0];
            if (DT != null && DT.Rows.Count > 0)
            {
                ddlAreaScale.DataSource = DT;
                ddlAreaScale.DataValueField = "id";
                ddlAreaScale.DataTextField = "name";
                ddlAreaScale.DataBind();
                ddlAreaScale.Items.Insert(0, new ListItem("Please select relevant option", "0"));
            }
        }
        catch (Exception ex)
        {
            //MSG.Text = ex.Message;
        }

        //IT/ITeS Tab Unit Type
        setDS();
        try
        {
            DS = ITApplication3A.SelectCommonDetails("IT_UNIT_TYPE1");
            DT = DS.Tables[0];
            if (DT != null && DT.Rows.Count > 0)
            {
                rblUnitType.DataSource = DT;
                rblUnitType.DataValueField = "id";
                rblUnitType.DataTextField = "name";
                rblUnitType.DataBind();
                rblUnitType.SelectedIndex = 0;
                //ddlTypeOfEntityValue.Items.Insert(0, new ListItem("Please select the type of entity", "0"));
            }
        }
        catch (Exception ex)
        {
            //MSG.Text = ex.Message;
        }
    }
    private void fillAnnexure3ITeSUniDetail()
    {
        setDS();
        try
        {
            DS = ITApplication3A.SelectAnnexure3AITeSUniDetail(Annexure3ID);
            DT = DS.Tables[0];
            if (DT != null && DT.Rows.Count == 1)
            {

                if (!string.IsNullOrEmpty(DT.Rows[0]["unit_type_id"].ToString().Trim()))
                {
                    rblUnitType.SelectedValue = DT.Rows[0]["unit_type_id"].ToString().Trim();
                    if (rblUnitType.SelectedValue == "1")
                        
                        DivUndertakingExpDiv.Visible = false; //New
                    else
                    {
                        //Expansion / Diversification
                        DivUndertakingExpDiv.Visible = true;
                        fillAreaUsageScale();
                    }
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["area"].ToString().Trim()))
                {
                    txtAreaOfLand.Text = DT.Rows[0]["area"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["area_unit_id"].ToString().Trim()))
                {
                    ddlAreaScale.SelectedValue = DT.Rows[0]["area_unit_id"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["project_desc"].ToString().Trim()))
                {
                    txtProjectDesc.Text = DT.Rows[0]["project_desc"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["pin_code"].ToString().Trim()))
                {
                    txtITeSPostalCode.Text = DT.Rows[0]["pin_code"].ToString().Trim();
                }

                if (!string.IsNullOrEmpty(DT.Rows[0]["address_line_1"].ToString().Trim()))
                {
                    txtITeSAddressLine1.Text = DT.Rows[0]["address_line_1"].ToString().Trim();
                }

                if (!string.IsNullOrEmpty(DT.Rows[0]["address_line_2"].ToString().Trim()))
                {
                    txtITeSAddressLine2.Text = DT.Rows[0]["address_line_2"].ToString().Trim();
                }

                if (!string.IsNullOrEmpty(DT.Rows[0]["city"].ToString().Trim()))
                {

                    txtITeSCity.Text = DT.Rows[0]["city"].ToString().Trim();
                }

                if (!string.IsNullOrEmpty(DT.Rows[0]["state_id"].ToString().Trim()))
                {

                    ddlITeSState.SelectedValue = DT.Rows[0]["state_id"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["telephone_number"].ToString().Trim()))
                {

                    txtITeSTelephoneNumber.Text = DT.Rows[0]["telephone_number"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["IsLocAddrSameAsCorrAddr"].ToString().Trim()))
                {
                    chkIslocationandCorrAddrSame.Checked = Convert.ToBoolean(DT.Rows[0]["IsLocAddrSameAsCorrAddr"].ToString().Trim());
                }

            }
        }
        catch (Exception ex)
        {
            //MSG.Text = ex.Message;
        }
    }
    private void fillAnnexure3ITeSUniDetailDomesticTurnOver()
    {
        setDS();
        try
        {
            DS = ITApplication3A.SelectAnnexure3AITeSUniDetailDomesticTurnOver(Annexure3ID);
            DT = DS.Tables[0];
            if (DT != null && DT.Rows.Count == 1)
            {

                if (!string.IsNullOrEmpty(DT.Rows[0]["year1"].ToString().Trim()))
                {
                    txtDomesticTOYear1.Text = DT.Rows[0]["year1"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["year2"].ToString().Trim()))
                {
                    txtDomesticTOYear2.Text = DT.Rows[0]["year2"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["year3"].ToString().Trim()))
                {
                    txtDomesticTOYear3.Text = DT.Rows[0]["year3"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["year4"].ToString().Trim()))
                {
                    txtDomesticTOYear4.Text = DT.Rows[0]["year4"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["year5"].ToString().Trim()))
                {
                    txtDomesticTOYear5.Text = DT.Rows[0]["year5"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["year6"].ToString().Trim()))
                {
                    txtDomesticTOYear6.Text = DT.Rows[0]["year6"].ToString().Trim();
                }

            }
        }
        catch (Exception ex)
        {
            //MSG.Text = ex.Message;
        }
    }
    private void fillAnnexure3ITeSUniDetailExportsTurnOver()
    {
        setDS();
        try
        {
            DS = ITApplication3A.SelectAnnexure3AITeSUniDetailExportsTurnOver(Annexure3ID);
            DT = DS.Tables[0];
            if (DT != null && DT.Rows.Count == 1)
            {

                if (!string.IsNullOrEmpty(DT.Rows[0]["year1"].ToString().Trim()))
                {
                    txtExportTOYear1.Text = DT.Rows[0]["year1"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["year2"].ToString().Trim()))
                {
                    txtExportTOYear2.Text = DT.Rows[0]["year2"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["year3"].ToString().Trim()))
                {
                    txtExportTOYear3.Text = DT.Rows[0]["year3"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["year4"].ToString().Trim()))
                {
                    txtExportTOYear4.Text = DT.Rows[0]["year4"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["year5"].ToString().Trim()))
                {
                    txtExportTOYear5.Text = DT.Rows[0]["year5"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["year6"].ToString().Trim()))
                {
                    txtExportTOYear6.Text = DT.Rows[0]["year6"].ToString().Trim();
                }

            }
        }
        catch (Exception ex)
        {
            //MSG.Text = ex.Message;
        }
    }
    private void fillAnnexure3ITeSUniDetailEmployeeCount()
    {
        setDS();
        try
        {
            DS = ITApplication3A.SelectAnnexure3AITeSUniDetailEmployeeCount(Annexure3ID);
            DT = DS.Tables[0];
            if (DT != null && DT.Rows.Count == 1)
            {

                if (!string.IsNullOrEmpty(DT.Rows[0]["year1"].ToString().Trim()))
                {
                    txtEmployeesTOYear1.Text = DT.Rows[0]["year1"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["year2"].ToString().Trim()))
                {
                    txtEmployeesTOYear2.Text = DT.Rows[0]["year2"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["year3"].ToString().Trim()))
                {
                    txtEmployeesTOYear3.Text = DT.Rows[0]["year3"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["year4"].ToString().Trim()))
                {
                    txtEmployeesTOYear4.Text = DT.Rows[0]["year4"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["year5"].ToString().Trim()))
                {
                    txtEmployeesTOYear5.Text = DT.Rows[0]["year5"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["year6"].ToString().Trim()))
                {
                    txtEmployeesTOYear6.Text = DT.Rows[0]["year6"].ToString().Trim();
                }

            }
        }
        catch (Exception ex)
        {
            //MSG.Text = ex.Message;
        }
    }
    private void fillAnnexure3ITeSUniDetailExpansionDiversification()
    {
        setDS();
        try
        {
            DS = ITApplication3A.SelectAnnexure3AITeSUniDetailExpansionDiversification(Annexure3ID);
            DT = DS.Tables[0];
            if (DT != null && DT.Rows.Count == 1)
            {

                if (!string.IsNullOrEmpty(DT.Rows[0]["area"].ToString().Trim()))
                {
                    txtAreaUsage.Text = DT.Rows[0]["area"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["area_unit_id"].ToString().Trim()))
                {
                    ddlAreaUsageScale.SelectedValue = DT.Rows[0]["area_unit_id"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["emp_count"].ToString().Trim()))
                {
                    txtNoOfEmployee.Text = DT.Rows[0]["emp_count"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["epf_value"].ToString().Trim()))
                {
                    txtEmployeeEPFAmount.Text = DT.Rows[0]["epf_value"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["electricity_units"].ToString().Trim()))
                {
                    txtAvgLastYrEleUnit.Text = DT.Rows[0]["electricity_units"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["turnover_year2"].ToString().Trim()))
                {
                    txtTOYear2.Text = DT.Rows[0]["turnover_year2"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["turnover_year1"].ToString().Trim()))
                {
                    txtTOYear1.Text = DT.Rows[0]["turnover_year1"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["turnover_year0"].ToString().Trim()))
                {
                    txtTOYear0.Text = DT.Rows[0]["turnover_year0"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["tax_val_year2"].ToString().Trim()))
                {
                    txtGSTYear2.Text = DT.Rows[0]["tax_val_year2"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["tax_val_year1"].ToString().Trim()))
                {
                    txtGSTYear1.Text = DT.Rows[0]["tax_val_year1"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["tax_val_year0"].ToString().Trim()))
                {
                    txtGSTYear0.Text =  DT.Rows[0]["tax_val_year0"].ToString().Trim();
                }

            }
        }
        catch (Exception ex)
        {
            //MSG.Text = ex.Message;
        }
    }
    private void fillAnnexure3FPRevenewForecast()
    {
        setDS();
        try
        {
            DS = ITApplication3A.SelectAnnexure3FPRevenewForecast(Annexure3ID);
            DT = DS.Tables[0];
            if (DT != null && DT.Rows.Count == 1)
            {

                if (!string.IsNullOrEmpty(DT.Rows[0]["year1"].ToString().Trim()))
                {
                    txtRevenueForecastYear1.Text = DT.Rows[0]["year1"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["year2"].ToString().Trim()))
                {
                    txtRevenueForecastYear2.Text = DT.Rows[0]["year2"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["year3"].ToString().Trim()))
                {
                    txtRevenueForecastYear3.Text = DT.Rows[0]["year3"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["year4"].ToString().Trim()))
                {
                    txtRevenueForecastYear4.Text = DT.Rows[0]["year4"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["year5"].ToString().Trim()))
                {
                    txtRevenueForecastYear5.Text = DT.Rows[0]["year5"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["year6"].ToString().Trim()))
                {
                    txtRevenueForecastYear6.Text = DT.Rows[0]["year6"].ToString().Trim();
                }

            }
        }
        catch (Exception ex)
        {
            //MSG.Text = ex.Message;
        }
    }
    private void fillAnnexure3FPExpenditureForecast()
    {
        setDS();
        try
        {
            DS = ITApplication3A.SelectAnnexure3FPExpenditureForecast(Annexure3ID);
            DT = DS.Tables[0];
            if (DT != null && DT.Rows.Count == 1)
            {

                if (!string.IsNullOrEmpty(DT.Rows[0]["year1"].ToString().Trim()))
                {
                    txtExpenditureForecastYear1.Text = DT.Rows[0]["year1"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["year2"].ToString().Trim()))
                {
                    txtExpenditureForecastYear2.Text = DT.Rows[0]["year2"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["year3"].ToString().Trim()))
                {
                    txtExpenditureForecastYear3.Text = DT.Rows[0]["year3"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["year4"].ToString().Trim()))
                {
                    txtExpenditureForecastYear4.Text = DT.Rows[0]["year4"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["year5"].ToString().Trim()))
                {
                    txtExpenditureForecastYear5.Text = DT.Rows[0]["year5"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["year6"].ToString().Trim()))
                {
                    txtExpenditureForecastYear6.Text = DT.Rows[0]["year6"].ToString().Trim();
                }

            }
        }
        catch (Exception ex)
        {
            //MSG.Text = ex.Message;
        }
    }
    private void fillAnnexure3FPNetProfitForecast()
    {
        setDS();
        try
        {
            DS = ITApplication3A.SelectAnnexure3FPNetProfitForecast(Annexure3ID);
            DT = DS.Tables[0];
            if (DT != null && DT.Rows.Count == 1)
            {

                if (!string.IsNullOrEmpty(DT.Rows[0]["year1"].ToString().Trim()))
                {
                    txtNetProfitForecastYear1.Text = DT.Rows[0]["year1"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["year2"].ToString().Trim()))
                {
                    txtNetProfitForecastYear2.Text = DT.Rows[0]["year2"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["year3"].ToString().Trim()))
                {
                    txtNetProfitForecastYear3.Text = DT.Rows[0]["year3"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["year4"].ToString().Trim()))
                {
                    txtNetProfitForecastYear4.Text = DT.Rows[0]["year4"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["year5"].ToString().Trim()))
                {
                    txtNetProfitForecastYear5.Text = DT.Rows[0]["year5"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["year6"].ToString().Trim()))
                {
                    txtNetProfitForecastYear6.Text = DT.Rows[0]["year6"].ToString().Trim();
                }

            }
        }
        catch (Exception ex)
        {
            //MSG.Text = ex.Message;
        }
    }
    private void fillAnnexure3FPCashFlowBO()
    {
        setDS();
        try
        {
            DS = ITApplication3A.SelectAnnexure3FPCashFlowBO(Annexure3ID);
            DT = DS.Tables[0];
            if (DT != null && DT.Rows.Count == 1)
            {

                if (!string.IsNullOrEmpty(DT.Rows[0]["year1"].ToString().Trim()))
                {
                    txtBOForecastYear1.Text = DT.Rows[0]["year1"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["year2"].ToString().Trim()))
                {
                    txtBOForecastYear2.Text = DT.Rows[0]["year2"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["year3"].ToString().Trim()))
                {
                    txtBOForecastYear3.Text = DT.Rows[0]["year3"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["year4"].ToString().Trim()))
                {
                    txtBOForecastYear4.Text = DT.Rows[0]["year4"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["year5"].ToString().Trim()))
                {
                    txtBOForecastYear5.Text = DT.Rows[0]["year5"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["year6"].ToString().Trim()))
                {
                    txtBOForecastYear6.Text = DT.Rows[0]["year6"].ToString().Trim();
                }

            }
        }
        catch (Exception ex)
        {
            //MSG.Text = ex.Message;
        }
    }
    private void fillAnnexure3FPFinancingProject()
    {
        setDS();
        try
        {
            DS = ITApplication3A.SelectAnnexure3FPFinancingProject(Annexure3ID);
            DT = DS.Tables[0];
            if (DT != null && DT.Rows.Count == 1)
            {

                if (!string.IsNullOrEmpty(DT.Rows[0]["gog_assistance"].ToString().Trim()))
                {
                    txtGoGAssistance.Text = DT.Rows[0]["gog_assistance"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["govt_org_assistance"].ToString().Trim()))
                {
                    txtOtherGovtOrg.Text = DT.Rows[0]["govt_org_assistance"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["promoter_contribution"].ToString().Trim()))
                {
                    txtPromoterContri.Text = DT.Rows[0]["promoter_contribution"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["loan_amount"].ToString().Trim()))
                {
                    txtDebtBorrow.Text = DT.Rows[0]["loan_amount"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["project_cost"].ToString().Trim()))
                {
                    lblTotalAmount.Text = DT.Rows[0]["project_cost"].ToString().Trim();
                }


            }
        }
        catch (Exception ex)
        {
            //MSG.Text = ex.Message;
        }
    }
    private void fillbankAccountDetail()
    {
        setDS();
        try
        {
            DS = ITApplication3A.SelectAnnexure3BankAccountDetail(Annexure3ID);
            DT = DS.Tables[0];
            if (DT != null && DT.Rows.Count == 1)
            {

                if (!string.IsNullOrEmpty(DT.Rows[0]["PaymentMode"].ToString().Trim()))
                {
                    rblPaymentMode.SelectedValue = DT.Rows[0]["PaymentMode"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["bank_name"].ToString().Trim()))
                {
                    txtBankName.Text = DT.Rows[0]["bank_name"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["BranchName"].ToString().Trim()))
                {
                    txtBranchName.Text = DT.Rows[0]["BranchName"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["acc_no"].ToString().Trim()))
                {
                    txtBankAcctNo.Text = DT.Rows[0]["acc_no"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["ifsc_code"].ToString().Trim()))
                {
                    txtIFSCNo.Text = DT.Rows[0]["ifsc_code"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["micr_code"].ToString().Trim()))
                {
                    txtMicrCode.Text = DT.Rows[0]["micr_code"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["bank_address"].ToString().Trim()))
                {
                    txtBankAddress.Text = DT.Rows[0]["bank_address"].ToString().Trim();
                }


            }
        }
        catch (Exception ex)
        {
            //MSG.Text = ex.Message;
        }
    }
    private void fillDeclaration()
    {
        setDS();
        try
        {
            DS = ITApplication3A.SelectAnnexure3Declaration(Annexure3ID);
            DT = DS.Tables[0];
            if (DT != null && DT.Rows.Count == 1)
            {
                if (!string.IsNullOrEmpty(DT.Rows[0]["IsDeclaration"].ToString().Trim()))
                {
                    chkDeclaration.Checked = Convert.ToBoolean(DT.Rows[0]["IsDeclaration"].ToString().Trim());
                }

            }
        }
        catch (Exception ex)
        {
            //MSG.Text = ex.Message;
        }
    }
    private void fillCommOpeDateBegin()
    {
        setDS();
        try
        {
            DS = ITApplication3A.SelectAnnexure3CODateOfBegin(Annexure3ID);
            DT = DS.Tables[0];
            if (DT != null && DT.Rows.Count == 1)
            {
                if (!string.IsNullOrEmpty(DT.Rows[0]["op_start_date"].ToString().Trim()))
                {
                    dateOfBeginning.Text = DT.Rows[0]["op_start_date"].ToString().Trim();
                }

            }
        }
        catch (Exception ex)
        {
            //MSG.Text = ex.Message;
        }
    }
    private void ClearDirectorData()
    {
        txtDirectorFirstName.Text = "";
        txtDirectorMobileNumber.Text = "";
        txtDirectorPanNo.Text = "";
        txtDirectorEmailId.Text = "";
        txtDirectorAddress.Text = "";
        txtDinNumber.Text = "";
        chkDirectorAddcheck.Checked = false;
    }
    protected void btnAddDirector_Click(object sender, EventArgs e)
    {
        LblRequiredDirectorDetails.Visible = false;

        string DirectorName = txtDirectorFirstName.Text;
        string MobileNo = txtDirectorMobileNumber.Text;
        string Emailid = txtDirectorEmailId.Text;
        string PanNo = txtDirectorPanNo.Text;
        string DinNumber = txtDinNumber.Text;
        string DirectoreAddress = string.Empty;
        bool IsDirectorSameAsCorrespondence = false;

        if (chkDirectorAddcheck.Checked)
            IsDirectorSameAsCorrespondence = true;

        if (!string.IsNullOrEmpty(txtDirectorAddress.Text))
        {
            DirectoreAddress = txtDirectorAddress.Text;
        }
        if (!string.IsNullOrEmpty(DirectorName))
        {
            if (btnAddDirector.Text == "Add Director / Promotor")
            {
                i = ITApplication3A.InsertDirectorDetails(Annexure3ID, ApplicationID, DirectorName, DinNumber, PanNo, MobileNo, Emailid, DirectoreAddress, IsDirectorSameAsCorrespondence);
            }
            else if (btnAddDirector.Text == "Edit Director / Promotor" && ViewState["DirectorID"] != null)
            {
                if (Convert.ToInt16(hdnannexure3id.Value) > 0)
                {
                    if (ViewState["DirectorID"] != null && !(string.IsNullOrEmpty(hdnaddressid.Value)))
                    {
                        i = ITApplication3A.updateDirectorDetails(Annexure3ID, Convert.ToInt32(ViewState["DirectorID"]), Convert.ToInt32(hdnaddressid.Value), DirectorName, PanNo, MobileNo, Emailid, DirectoreAddress, DinNumber, IsDirectorSameAsCorrespondence);
                    }
                }
                else
                {
                    MSG.Text = "Edit Disabled,after save and Continue you can change the details.";
                }
            }
        }
        if (i > 0)
        {
            setDS();
            try
            {
                ClearDirectorData();
                btnAddDirector.Text = "Add Director / Promotor";
                fillGrid(ApplicationID);
            }
            catch (Exception ex)
            {
                MSG.Text = ex.Message;
            }
        }
    }
    protected void grdDirectorDetails_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.ToString().Equals("process", StringComparison.CurrentCultureIgnoreCase))
        {
            btnAddDirector.Text = "Edit Director / Promotor";
            GridViewRow gvr = (GridViewRow)((Button)e.CommandSource).NamingContainer;

            int id = Convert.ToInt32(e.CommandArgument.ToString());
            ViewState["DirectorID"] = id;
            if (id > 0)
            {
                try
                {
                    Button btn_Edit; Button btn_Delete;
                    foreach (GridViewRow dr in grdDirectorDetails.Rows)
                    {
                        btn_Edit = (Button)dr.FindControl("btn_Edit");
                        btn_Edit.Enabled = false;
                        btn_Delete = (Button)dr.FindControl("btn_Delete");
                        btn_Delete.Enabled = false;
                    }
                    //btn_Edit = (Button)gvr.FindControl("btn_Edit");
                    //btn_Edit.Enabled = false;
                    //btn_Delete = (Button)gvr.FindControl("btn_Delete");
                    //btn_Delete.Enabled = false;

                    Label lblDirectorName = (Label)gvr.FindControl("lblDirectorName");
                    txtDirectorFirstName.Text = lblDirectorName.Text;

                    Label lblDirectorPAN = (Label)gvr.FindControl("lblDirectorPAN");
                    txtDirectorPanNo.Text = lblDirectorPAN.Text;

                    Label lblDirectorMobile = (Label)gvr.FindControl("lblDirectorMobile");
                    txtDirectorMobileNumber.Text = lblDirectorMobile.Text;

                    Label lblDirectorEmail = (Label)gvr.FindControl("lblDirectorEmail");
                    txtDirectorEmailId.Text = lblDirectorEmail.Text;

                    Label lblDirectoraddress = (Label)gvr.FindControl("lblDirectoraddress");
                    txtDirectorAddress.Text = lblDirectoraddress.Text;

                    Label lbl_AddressID = (Label)gvr.FindControl("lbl_AddressID");
                    hdnaddressid.Value = lbl_AddressID.Text;

                    Label lblDinNumber = (Label)gvr.FindControl("lblDinNumber");
                    txtDinNumber.Text = lblDinNumber.Text;

                    CheckBox chkIsAddrSameAsCorr = (CheckBox)gvr.FindControl("chkIsAddrSameAsCorr");
                    chkDirectorAddcheck.Checked = Convert.ToBoolean(chkIsAddrSameAsCorr.Text);
                    //Label lbl_Annexure1ID = (Label)gvr.FindControl("lbl_Annexure1ID");
                    //hdnannexure1id.Value = lbl_Annexure1ID.Text;

                    Label lbl_Annexure3ID = (Label)gvr.FindControl("lbl_Annexure3ID");
                    hdnannexure3id.Value = lbl_Annexure3ID.Text;

                }
                catch (Exception ex)
                {
                    MSG.Text = ex.Message;
                }
            }
        }
        if (e.CommandName.ToString().Equals("delete1", StringComparison.CurrentCultureIgnoreCase))
        {

            GridViewRow gvr1 = (GridViewRow)((Button)e.CommandSource).NamingContainer;
            int id1 = Convert.ToInt32(e.CommandArgument.ToString());

            //Label lbl_Annexure1ID = (Label)gvr1.FindControl("lbl_Annexure1ID");
            //hdnannexure1id.Value = lbl_Annexure1ID.Text;

            Label lbl_Annexure3ID = (Label)gvr1.FindControl("lbl_Annexure3ID");
            hdnannexure3id.Value = lbl_Annexure3ID.Text;

            Label lbl_AddressID = (Label)gvr1.FindControl("lbl_AddressID");
            hdnaddressid.Value = lbl_AddressID.Text;

            if (id1 > 0)
            {
                if (!(string.IsNullOrEmpty(hdnannexure3id.Value)) && !(string.IsNullOrEmpty(hdnaddressid.Value)))
                {
                    i = ITApplication3A.DeleteDirectorDetails(Convert.ToInt32(hdnannexure3id.Value), id1, Convert.ToInt32(hdnaddressid.Value));
                }
                ScriptManager.RegisterStartupScript(this, GetType(),
                    "ServerControlScript", "Status detail deleted", true);
                fillGrid(Convert.ToInt32(Annexure3ID));

                grdDirectorDetails.Visible = true;
            }
        }
    }
    protected void chkauthPersonAddress_CheckedChanged(object sender, EventArgs e)
    {
        if (chkIsAuthAddrSameasCorrAddr.Checked)
        {
            fillCorrespondenceAddress();
        }
        else
        {
            txtAuthPostalCode.Text = "";
            txtAuthAddressLine1.Text = "";
            txtAuthAddressLine2.Text = "";
            txtCityVillage.Text = "";
            ddlAuthState.SelectedIndex = 0;
        }
    }
    protected void chkauthorisedPerson_CheckedChanged(object sender, EventArgs e)
    {
        setDS();
        try
        {
            if (chkIsAuthPersonandApplicantSame.Checked)
            {
                DS = ITApplication.SelectApplicantDetail(ApplicationID);
                DT = DS.Tables[0];
                if (DT != null && DT.Rows.Count == 1)
                {
                    if (!string.IsNullOrEmpty(DT.Rows[0]["first_name"].ToString().Trim()) && !string.IsNullOrEmpty(DT.Rows[0]["last_name"].ToString().Trim()))
                    {
                        txtAPFirstName.Text = DT.Rows[0]["first_name"].ToString().Trim() + " " + DT.Rows[0]["last_name"].ToString().Trim();
                    }
                    if (!string.IsNullOrEmpty(DT.Rows[0]["Designation"].ToString().Trim()))
                    {
                        txtAPDesignation.Text = DT.Rows[0]["Designation"].ToString().Trim();
                    }
                    if (!string.IsNullOrEmpty(DT.Rows[0]["mobile_no"].ToString().Trim()))
                    {
                        txtAPMobileNumber.Text = DT.Rows[0]["mobile_no"].ToString().Trim();
                    }
                    if (!string.IsNullOrEmpty(DT.Rows[0]["email_id"].ToString().Trim()))
                    {
                        txtAPEmailId.Text = DT.Rows[0]["email_id"].ToString().Trim();
                    }
                }
            }
            else
            {
                txtAPFirstName.Text = string.Empty;
                txtAPDesignation.Text = string.Empty;
                txtAPMobileNumber.Text = string.Empty;
                txtAPEmailId.Text = string.Empty;
            }
        }
        catch (Exception ex)
        {
            //MSG.Text = ex.Message;
        }
    }
    protected void chkDirectorAddcheck_OnCheckedChanged(object sender, EventArgs e)
    {
        CheckBox chk = (CheckBox)sender;
        //RepeaterItem item = (RepeaterItem)chk.NamingContainer;
        if (chk.Checked)
        {
            if (ViewState["ApplicationID"] != null)
            {
                fillDirectorAddress();
            }
        }
        else
        {
            //TextBox txtDirectorAddress = (TextBox)item.FindControl("txtDirectorAddress");
            txtDirectorAddress.Text = "";
        }
    }
    protected void chkIslocationandCorrAddrSame_CheckedChanged(object sender, EventArgs e)
    {
        if (chkIslocationandCorrAddrSame.Checked)
        {
            if (ViewState["Annexure3ID"] != null)
            {
                fillITeSLocationAddress();
            }
        }
        else
        {
            txtITeSPostalCode.Text = string.Empty;
            txtITeSAddressLine1.Text = string.Empty;
            txtITeSAddressLine2.Text = string.Empty;
            txtITeSCity.Text = string.Empty;
            txtITeSTelephoneNumber.Text = string.Empty;
            ddlITeSState.SelectedIndex = 0;
        }
    }
    protected void rblUnitType_Changed(object sender, EventArgs e)
    {
        if (rblUnitType.SelectedValue == "1")
        {
            //New
            DivUndertakingExpDiv.Visible = false;
        }
        else
        {
            //Expansion / Diversification
            DivUndertakingExpDiv.Visible = true;
            fillAreaUsageScale();

        }
    }
    private void fillAreaUsageScale()
    {
        setDS();
        try
        {
            DS = ITApplication3A.SelectCommonDetails("IT_UNIT_AREA_TYPE");
            DT = DS.Tables[0];
            if (DT != null && DT.Rows.Count > 0)
            {
                ddlAreaUsageScale.DataSource = DT;
                ddlAreaUsageScale.DataValueField = "id";
                ddlAreaUsageScale.DataTextField = "name";
                ddlAreaUsageScale.DataBind();
                ddlAreaUsageScale.Items.Insert(0, new ListItem("Please select relevant option", "0"));
            }
        }
        catch (Exception ex)
        {
            //MSG.Text = ex.Message;
        }
    }


    protected void RepterDetails_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        if (e.Item.ItemIndex > -1)
        {
            Label lblISConsidered = (Label)e.Item.FindControl("lblISConsidered") as Label;
            TextBox txtAssistaceAmount = (TextBox)e.Item.FindControl("txtAssistaceAmount") as TextBox;
            RadioButtonList rdlAssistanceClaim = (RadioButtonList)e.Item.FindControl("rdlAssistanceClaim") as RadioButtonList;
            TextBox txtApplicantRemarks = (TextBox)e.Item.FindControl("txtApplicantRemarks") as TextBox;
            Label lblIsAssistanceClaim = (Label)e.Item.FindControl("lblIsAssistanceClaim") as Label;

            if (lblISConsidered.Text == "False" && (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem))
            {
                rdlAssistanceClaim.Enabled = false;
                txtAssistaceAmount.ReadOnly = true;
                txtApplicantRemarks.ReadOnly = true;
            }
            //else if (lblISConsidered.Text == "True" && txtAssistaceAmount.Text == "NA")
            //{
            //    rdlAssistanceClaim.SelectedValue = "n";
            //}

            if (txtAssistaceAmount.Text == "NA") txtAssistaceAmount.Text = "";
            if (txtApplicantRemarks.Text == "NA") txtApplicantRemarks.Text = "";

            rdlAssistanceClaim.SelectedValue = "y";
            if (lblIsAssistanceClaim.Text.Trim() == "False")
            {
                rdlAssistanceClaim.SelectedValue = "n";
                txtAssistaceAmount.ReadOnly = true;
            }
        }
    }
}