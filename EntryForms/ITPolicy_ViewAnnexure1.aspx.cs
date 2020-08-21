using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EntryForms_ITPolicy_ViewAnnexure1 : System.Web.UI.Page
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
            LoadFormData();
        }
    }
    private void setDS()
    {
        DS = null;
        DT = null;
        DS1 = null;
        DT1 = null;

    }
    private void LoadFormData()
    {
        setDS();
        try
        {
            DS = ITPolicyViewAnnexure1.GetAnnexure1FormData(Convert.ToInt64(Session["applicant_id"]));
            DT = DS.Tables[0];
            if (DT != null && DT.Rows.Count > 0)
            {
                //Applicant's Details
                if (Convert.ToInt64(Session["Annexure1Page"])==1)
                {
                    divRegistration.Visible = false;
                }
                else
                {
                    divRegistration.Visible = true;
                    lblRegistrationNoValue.Text = DT.Rows[0]["registration_number"].ToString();
                }
                lblFirstNameValue.Text= DT.Rows[0]["first_name"].ToString();
                lblLastNameValue.Text= DT.Rows[0]["last_name"].ToString();
                lblMobileNoValue.Text = DT.Rows[0]["mobile_no"].ToString();
                lblEmailIDValue.Text= DT.Rows[0]["email_id"].ToString();
                //Correspondence Address
                lblCorresPostalCodeValue.Text= DT.Rows[0]["pin_code"].ToString();
                lblCorresAddressLine1Value.Text= DT.Rows[0]["address_line_1"].ToString();
                lblCorresAddressLine2Value.Text= DT.Rows[0]["address_line_2"].ToString();
                lblCorresCityVillageValue.Text = DT.Rows[0]["city"].ToString();
                lblCorresStateValue.Text= DT.Rows[0]["state_name"].ToString();
                lblCorresTelephoneNoValue.Text= DT.Rows[0]["telephone_number"].ToString();
                //Identity Proof
                lblIDProofValue.Text= DT.Rows[0]["IdProffType"].ToString();
                lblIDNumberValue.Text= DT.Rows[0]["IDProffValue"].ToString();
                lblScannedIDDocUploadedValue.Text= DT.Rows[0]["Scanned_CopyOf_IDProff_Uploaded"].ToString();
                //Entity Details
                lblEntityPANValue.Text= DT.Rows[0]["entity_pan"].ToString();
                lblScannedPANDocUploadedValue.Text= DT.Rows[0]["Entity_ScannedCopyOfPANCardUploaded"].ToString();
                lblEntityNameValue.Text= DT.Rows[0]["entity_name"].ToString();
                lblTypeOfEntityValue.Text= DT.Rows[0]["Entity_Type_That_Will_Seek_Assistance_Under_The_Scheme"].ToString();
                lblPartnershipDeedDocsValue.Text= DT.Rows[0]["Entity_Partnership_Deed_Uploaded"].ToString();
                lblCertifiedMemorendumDocsValue.Text= DT.Rows[0]["Entity_Memorandum_And_Articles_Of_Association_Doc_Uploaded"].ToString();
                lblEntityMobileNoValue.Text = DT.Rows[0]["Entity_mobile_no"].ToString();
                lblEntityTelephoneNoValue.Text = DT.Rows[0]["EntityTelephoneNo"].ToString();
                lblFaxNoValue.Text = DT.Rows[0]["EntityFaxNo"].ToString();
                lblEntityEmailIDValue.Text= DT.Rows[0]["EntityEmailID"].ToString();
                //Office Address
                lblIsOfficeAddressSameAsCorresValue.Text= DT.Rows[0]["Is_Office_Address_Same_As_Correspondence_Address"].ToString();
                lblOfficePostalCodeValue.Text= DT.Rows[0]["Office_PostalCode"].ToString();
                lblOfficeAddress1Value.Text = DT.Rows[0]["Office_AddressLine1"].ToString();
                lblOfficeAddress2Value.Text = DT.Rows[0]["Office_AddressLine2"].ToString();
                lblOfficeCityVillageValue.Text= DT.Rows[0]["Office_City"].ToString();
                lblOfficeStateValue.Text= DT.Rows[0]["Office_State"].ToString();
                //Factory Address
                lblIsFactoryAddressSameAsCorresValue.Text= DT.Rows[0]["Factory_Address_Same_As_The_Correspondence_Address"].ToString();
                lblFactoryPostalCodeValue.Text= DT.Rows[0]["Facotory_Address_PostalCode"].ToString();
                lblFactoryAddress1Value.Text = DT.Rows[0]["FactoryAddress_Line1"].ToString();
                lblFactoryAddress2Value.Text= DT.Rows[0]["FactoryAddress_Line2"].ToString();
                lblFactoryCityVillageValue.Text= DT.Rows[0]["FactoryCity"].ToString();
                lblFactoryStateValue.Text= DT.Rows[0]["FactoryState"].ToString();
                //Required Documents
                lblRequiredDocRegistrationNoValue.Text= DT.Rows[0]["registration_number"].ToString();
                lblIsRegistrationDocUploadedValue.Text= DT.Rows[0]["Is_Registation_Doc_Uploaded"].ToString();
                lblCertOfIncorpValue.Text = DT.Rows[0]["CertificateOfInCorporation"].ToString();
                lblUploadDocCertOfIncorpValue.Text= DT.Rows[0]["IsDoc_uploded_Scanned_Copy_Of_Certificate_Of_Incorporation"].ToString();
                lblGSTINValue.Text= DT.Rows[0]["GSTIN"].ToString();
                lblIsGSTRegCertiUploadedValue.Text = DT.Rows[0]["Is_GST_Registration_Certificate_Uploaded"].ToString();
                lblIsCACertiShareHoldingValue.Text= DT.Rows[0]["Is_CA_Certificate_Showing_The_Shareholding_Pattern_Uploaded"].ToString();
                //Director / Promotor Details
                lblDirectorPromoterNameValue.Text = DT.Rows[0]["director_name"].ToString();
                lblDirectorPromoterMobileNoValue.Text= DT.Rows[0]["PromotorPhoneNo"].ToString();
                lblDirectorPromoterEmailIDValue.Text= DT.Rows[0]["PromotorEmailID"].ToString();
                lblDirectorPromoterPANNoValue.Text = DT.Rows[0]["director_pan"].ToString();
                lblIsDirectorPromoterAddressSameAsCorresValue.Text = DT.Rows[0]["Is_DirectorPromotor_Address_Same_As_The_Correspondence_Address"].ToString();
                lblDirectorPromoterAddressValue.Text= DT.Rows[0]["DirectorAddress"].ToString();
                //Authorised Person Details
                lblIsAuthorizeandApplicantSameValue.Text = DT.Rows[0]["IsAuthorized_Person_And_Applicant_The_Same"].ToString();
                lblAuthorizePersonNameValue.Text= DT.Rows[0]["AuthorizePerson"].ToString();
                lblAuthorizePersonDesignationValue.Text= DT.Rows[0]["AuthPersondesignation"].ToString();
                lblAuthorizePersonMobileNoValue.Text= DT.Rows[0]["AuthPersonPhoneNo"].ToString();
                lblAuthorizePersonEmailIDValue.Text= DT.Rows[0]["AuthPersonEmailID"].ToString();
                lblIsAuthorizePersonPersonAddressSameCorresAddrValue.Text= DT.Rows[0]["Authorised_Person_Address_Same_As_Correspondence_Address"].ToString();
                lblAuthorizePersonAddressValue.Text= DT.Rows[0]["AuthorisedPersonAddress"].ToString();
                //Assistance Sought
                lblAssistanceSoughtForValue.Text = DT.Rows[0]["AssistanceSaughtFor"].ToString();
                //Information For Unit Type
                //IT / ITeS Unit(New or Expansion / Diversification)
                lblITeSUnitLocationValue.Text= DT.Rows[0]["ITUnitLocation"].ToString();
                lblITeSUnitTentativeAreaValue.Text = DT.Rows[0]["ITUnitTentativeArea"].ToString();
                lblITeSUnitTentativeInvestmentValue.Text= DT.Rows[0]["ITUnitproject_cost"].ToString();
                lblITeSUnitTentativeEmploymentValue.Text = DT.Rows[0]["ITUnitemployment"].ToString();
                lblITeSUnitTypeValue.Text = DT.Rows[0]["ITUnitType"].ToString();
                //IT / ITeS Park
                lblITeSParkLocationValue.Text= DT.Rows[0]["ITeSPark_location"].ToString();
                lblITeSParkTypeValue.Text = DT.Rows[0]["ITeSParkTypeName"].ToString();
                lblITeSParkAreaValue.Text= DT.Rows[0]["ITParkTentativeArea"].ToString();
                lblITeSParkBuiltUpAreaValue.Text = DT.Rows[0]["ITesBuildUpArea"].ToString();
                lblITeSParkProjectCostValue.Text= DT.Rows[0]["ITesproject_cost"].ToString();
                lblITeSParkActivitiesValue.Text= DT.Rows[0]["ITesdescription"].ToString();
                //Research & Development Institution
                lblRnDLocationValue.Text= DT.Rows[0]["RDlocation"].ToString();
                lblRnDAreaValue.Text= DT.Rows[0]["RDTentativeArea"].ToString();
                lblRnDProjectCostValue.Text = DT.Rows[0]["RDProjectCost"].ToString();
                lblRnDActivitiesValue.Text = DT.Rows[0]["RDdescription"].ToString();
                //Finishing School
                lblFSLocationValue.Text = DT.Rows[0]["FSlocation"].ToString();
                lblFSAreaValue.Text = DT.Rows[0]["FSTentativeArea"].ToString();
                lblFSProjectCostValue.Text = DT.Rows[0]["FSProjectCost"].ToString();
                lblFSActivitiesValue.Text= DT.Rows[0]["FSdescription"].ToString();
                //IT / ITeS Industry Association
                lblITIndusNameValue.Text = DT.Rows[0]["exhibition_name"].ToString();
                lblITIndusDateValue.Text= DT.Rows[0]["exhibition_date"].ToString();
                lblITIndusExpenditureValue.Text= DT.Rows[0]["expenditure"].ToString();
                lblITIndusAssistanceAvailValue.Text= DT.Rows[0]["is_availed_scheme"].ToString();
                lblITIndusExhibitionDateValue.Text= DT.Rows[0]["availed_scheme_date"].ToString();
                lblITIndusAmountValue.Text= DT.Rows[0]["availed_scheme_amount"].ToString();
                //Contract / Sponsored Research Work
                lblSponsTopicValue.Text= DT.Rows[0]["research_topic"].ToString();
                lblSponsOrgValue.Text= DT.Rows[0]["assigning_organisation"].ToString();
                lblSponsResearchDurationValue.Text= DT.Rows[0]["research_duration"].ToString();
                lblSponsResearchCostValue.Text= DT.Rows[0]["CSproject_cost"].ToString();
                lblSponsOrgNameAssistValue.Text= DT.Rows[0]["earlier_assistance_organisation"].ToString();
                //Approximate Amount of Assistance Sought
                lblAssistAmountCapSubValue.Text= DT.Rows[0]["CSproject_cost"].ToString();
                lblAssistAmountStampDutyValue.Text= DT.Rows[0]["CSproject_cost"].ToString();
                lblAssistAmountLeaseRentalValue.Text= DT.Rows[0]["CSproject_cost"].ToString();
                lblAssistAmountIntSubsidyValue.Text= DT.Rows[0]["CSproject_cost"].ToString();
                lblAssistAmountPowerTariffValue.Text= DT.Rows[0]["CSproject_cost"].ToString();
                lblAssistAmountGSTValue.Text= DT.Rows[0]["CSproject_cost"].ToString();
                lblAssistAmountEPFValue.Text= DT.Rows[0]["CSproject_cost"].ToString();
                lblAssistAmountQCValue.Text= DT.Rows[0]["CSproject_cost"].ToString();
            }
        }
        catch (Exception ex)
        {
            string errorMessage = ex.Message;
            ScriptManager.RegisterStartupScript(this, GetType(),
                            "ServerControlScript", "errorMessage", true);
        }
    }
}