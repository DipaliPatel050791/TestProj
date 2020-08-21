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

public partial class EntryForms_NewApplicationIT : System.Web.UI.Page
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
    int ApplicantID = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!string.IsNullOrEmpty(Session["login_id"] as string))
        {
            UID = Convert.ToInt32(Session["login_id"].ToString().Trim());
        }

        Label lblPage = (Label)Master.FindControl("lblPage");
        lblPage.Text = "annexure-1";

        if (!IsPostBack)
        {
            tabBasicDetails.Visible = true;
            tabEntityDetails.Visible = false;
            tabAssistanceDetails.Visible = false;
            tabIncentiveDetails.Visible = false;
            tabacknowledge.Visible = false;
            tabDocUpload.Visible = false;
            fillApplicantDetail();
            fillIdentityProof();
            fillState();
            fillEntityType();
            fillEntityAssistance();
            FillAreaType();
            FillUnitType();
            FillParkType();
            //  FillAvailAssistance();
            //   ShowHideAssistanceSought(ddlEntityAssistance.SelectedValue);
            // bindReapeater();

            if (!string.IsNullOrEmpty(Session["Mode"] as string))
            {

                if (Session["Mode"].ToString().Trim() == "update")
                {
                    if (!string.IsNullOrEmpty(Session["annexure_id"] as string))
                    {
                        AnnexureID = Convert.ToInt32(Session["annexure_id"].ToString());
                    }
                    if (!string.IsNullOrEmpty(Session["applicationid"] as string))
                    {
                        ApplicationID = Convert.ToInt32(Session["applicationid"].ToString());
                    }
                    if (!string.IsNullOrEmpty(Session["applicant_id"] as string))
                    {
                        ApplicantID = Convert.ToInt32(Session["applicant_id"].ToString());
                    }
                }
                FillData(AnnexureID, ApplicationID, ApplicantID);
                FillDataACK(AnnexureID, ApplicationID, ApplicantID);
            }

        }
    }

    private void FillData(int annexureid,int applicationid,int applicantID)
    {
        DataSet DSFill = new DataSet();
        DataTable DTFill = new DataTable();
        try
        {
            DSFill = ITApplication.BindAlldata(annexureid, applicationid, applicantID);
            DTFill = DSFill.Tables[0];
            if (DTFill != null && DTFill.Rows.Count==1)
            {

                if (!string.IsNullOrEmpty(DTFill.Rows[0]["corresPincode"].ToString() ))
                {
                    txtPostalCode.Text = DTFill.Rows[0]["corresPincode"].ToString();
                    
                }
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["corresaddress_line_1"].ToString()))
                {
                    txtAddline1.Text = DTFill.Rows[0]["corresaddress_line_1"].ToString();
                }
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["corresaddress_line_2"].ToString()))
                {
                    txtAddline2.Text = DTFill.Rows[0]["corresaddress_line_2"].ToString();
                }
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["correscity"].ToString()))
                {
                    txtCity.Text = DTFill.Rows[0]["correscity"].ToString();
                }
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["correstelephone_number"].ToString()))
                {
                    txtTelephoneNo.Text = DTFill.Rows[0]["correstelephone_number"].ToString();
                }
                //fillState();
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["corresstateid"].ToString()))
                {
                    ddlState.SelectedValue   = DTFill.Rows[0]["corresstateid"].ToString();
                }
               // fillIdentityProof();
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["applicant_id_proof_type_id"].ToString()))
                {
                    ddlIdentityProof.SelectedValue = DTFill.Rows[0]["applicant_id_proof_type_id"].ToString();
                }
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["applicant_id_proof_number"].ToString()))
                {
                    txtIDNo.Text = DTFill.Rows[0]["applicant_id_proof_number"].ToString();
                }
                //fillEntityType();
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["entity_type_id"].ToString()))
                {
                    ddlTypeOfEntity.SelectedValue = DTFill.Rows[0]["entity_type_id"].ToString();
                }
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["entity_address_id"].ToString()))
                {
                    hdnEntityaddressid.Value  = DTFill.Rows[0]["entity_address_id"].ToString();
                }

                if (!string.IsNullOrEmpty(DTFill.Rows[0]["entity_mobileno"].ToString()))
                {
                    txtEntityMobileNo.Text = DTFill.Rows[0]["entity_mobileno"].ToString();
                }
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["entity_email_id"].ToString()))
                {
                    txtEntityEmailId.Text = DTFill.Rows[0]["entity_email_id"].ToString();
                }

                if (!string.IsNullOrEmpty(DTFill.Rows[0]["EntityTelephone"].ToString()))
                {
                   txtEntityTelephoneNo.Text = DTFill.Rows[0]["EntityTelephone"].ToString();
                }
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["FaxNumber"].ToString()))
                {
                    txtEntityFaxNo.Text = DTFill.Rows[0]["FaxNumber"].ToString();
                }

                if (!string.IsNullOrEmpty(DTFill.Rows[0]["ISOfficeSameAsCorrespondense"].ToString()))
                {
                    bool OfficeSameasCorres = false;
                    OfficeSameasCorres = Convert.ToBoolean(DTFill.Rows[0]["ISOfficeSameAsCorrespondense"].ToString());
                    if (OfficeSameasCorres == true)
                    {
                        chkOfficeAddsameCorrespondence.Checked = true;
                    }
                    else
                    {
                        chkOfficeAddsameCorrespondence.Checked = false;
                    }
                }

                if (!string.IsNullOrEmpty(DTFill.Rows[0]["Office_address_id"].ToString()))
                {
                    hdnOfficeaddressid.Value = DTFill.Rows[0]["Office_address_id"].ToString();
                }


                if (!string.IsNullOrEmpty(DTFill.Rows[0]["OfficePincode"].ToString()))
                {
                    txtOfficePostalCode.Text = DTFill.Rows[0]["OfficePincode"].ToString();
                }
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["OfficeAddress1"].ToString()))
                {
                    txtOfficeAddress1.Text = DTFill.Rows[0]["OfficeAddress1"].ToString();
                }
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["OfficeAddress2"].ToString()))
                {
                    txtOfficeAddress2.Text = DTFill.Rows[0]["OfficeAddress2"].ToString();
                }
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["OfficeCity"].ToString()))
                {
                    txtOfficeCity.Text = DTFill.Rows[0]["OfficeCity"].ToString();
                }
                
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["OfficeState"].ToString()))
                {
                    ddlOfficeState.SelectedValue = DTFill.Rows[0]["OfficeState"].ToString();
                }


                if (!string.IsNullOrEmpty(DTFill.Rows[0]["IsFactorySameAsCorrespondence"].ToString()))
                {
                    bool ISFactorySameAsCorrespondence = false;
                    ISFactorySameAsCorrespondence = Convert.ToBoolean(DTFill.Rows[0]["IsFactorySameAsCorrespondence"].ToString()); 
                    if (ISFactorySameAsCorrespondence == true)
                    {
                        chkFactoryAddcheck.Checked = true;
                    }
                    else
                    {
                        chkFactoryAddcheck.Checked = false;
                    }
                }

                if (!string.IsNullOrEmpty(DTFill.Rows[0]["factory_address_id"].ToString()))
                {
                   hdnFactoryaddressid.Value = DTFill.Rows[0]["factory_address_id"].ToString();
                }


                if (!string.IsNullOrEmpty(DTFill.Rows[0]["FactoryPincode"].ToString()))
                {
                   txtFactoryPostalCode.Text = DTFill.Rows[0]["FactoryPincode"].ToString();
                }
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["FactoryAddress1"].ToString()))
                {
                    txtFactoryAdd1.Text = DTFill.Rows[0]["FactoryAddress1"].ToString();
                }
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["FactoryAddress2"].ToString()))
                {
                    txtFactoryAdd2.Text = DTFill.Rows[0]["FactoryAddress2"].ToString();
                }
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["FactoryCity"].ToString()))
                {
                    txtFactoryCity.Text = DTFill.Rows[0]["FactoryCity"].ToString();
                }
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["FactoryCity"].ToString()))
                {
                    ddlFactoryState.SelectedValue = DTFill.Rows[0]["FactoryState"].ToString();
                }
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["Registration_No"].ToString()))
                {
                    txtRegistrationNo.Text = DTFill.Rows[0]["Registration_No"].ToString();
                }
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["incorporation_certificate_number"].ToString()))
                {
                    txtIncorporationCerti.Text = DTFill.Rows[0]["incorporation_certificate_number"].ToString();
                }
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["gst_number"].ToString()))
                {
                    txtGSTIN.Text = DTFill.Rows[0]["gst_number"].ToString();
                }
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["AssistanceSought"].ToString()))
                {
                    ddlEntityAssistance.SelectedValue = DTFill.Rows[0]["AssistanceSought"].ToString();
                }
                ShowHideAssistanceSought(ddlEntityAssistance.SelectedValue);




                if (ddlEntityAssistance.SelectedValue == "IT_ITES_UNIT")
                {
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["area"].ToString()))
                    {
                        txtUnitArea.Text = DTFill.Rows[0]["area"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["area_unit_id"].ToString()))
                    {
                        ddlAreaType.SelectedValue = DTFill.Rows[0]["area_unit_id"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["location"].ToString()))
                    {
                        txtUnitArea.Text = DTFill.Rows[0]["location"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["project_cost"].ToString()))
                    {
                        txtInvestment.Text = DTFill.Rows[0]["project_cost"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["employment"].ToString()))
                    {
                        txtEmployment.Text = DTFill.Rows[0]["employment"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["unit_type_id"].ToString()))
                    {
                        rdUnitType.SelectedValue = DTFill.Rows[0]["unit_type_id"].ToString();
                    }
                }
                else if (ddlEntityAssistance.SelectedValue == "IT_ITES_PARK")
                {
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["location"].ToString()))
                    {
                        txtParkLocation.Text = DTFill.Rows[0]["location"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["park_type_id"].ToString()))
                    {
                        rdlParkType.SelectedValue = DTFill.Rows[0]["park_type_id"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["area"].ToString()))
                    {
                        txtTentativeParkArea.Text = DTFill.Rows[0]["area"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["area_unit_id"].ToString()))
                    {
                        ddlTentativeParkArea.SelectedValue = DTFill.Rows[0]["area_unit_id"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["build_up_area"].ToString()))
                    {
                        txtBuiltupParkArea.Text = DTFill.Rows[0]["build_up_area"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["build_up_area_unit_id"].ToString()))
                    {
                        ddlBuiltupParkArea.SelectedValue = DTFill.Rows[0]["build_up_area_unit_id"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["project_cost"].ToString()))
                    {
                        txtParkProjectCost.Text = DTFill.Rows[0]["project_cost"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["description"].ToString()))
                    {
                        txtParkActivity.Text = DTFill.Rows[0]["description"].ToString();
                    }
                }
                else if (ddlEntityAssistance.SelectedValue == "R_AND_D_INSTITUTION")
                {
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["location"].ToString()))
                    {
                        txtRNDLocation.Text = DTFill.Rows[0]["location"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["area"].ToString()))
                    {
                        txtRNDTentativeArea.Text = DTFill.Rows[0]["area"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["area_unit_id"].ToString()))
                    {
                        ddlRNDTentativeAreaType.SelectedValue = DTFill.Rows[0]["area_unit_id"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["project_cost"].ToString()))
                    {
                        txtRNDTentativeCost.Text = DTFill.Rows[0]["project_cost"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["description"].ToString()))
                    {
                        txtRNDActivity.Text = DTFill.Rows[0]["description"].ToString();
                    }
                }
                else if (ddlEntityAssistance.SelectedValue == "FINISHING_SCHOOL")
                {
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["location"].ToString()))
                    {
                        txtFishingSchoolLocation.Text = DTFill.Rows[0]["location"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["area"].ToString()))
                    {
                        txtFishingschoolTentativeArea.Text = DTFill.Rows[0]["area"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["area_unit_id"].ToString()))
                    {
                        ddlFishingAreaType.SelectedValue = DTFill.Rows[0]["area_unit_id"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["project_cost"].ToString()))
                    {
                        txtFishingProjectCost.Text = DTFill.Rows[0]["project_cost"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["description"].ToString()))
                    {
                        txtFishingActivity.Text = DTFill.Rows[0]["description"].ToString();
                    }
                }
                else if (ddlEntityAssistance.SelectedValue == "IT_OR_ITES_INDUSTRY_ASSOCIATION")
                {
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["exhibition_name"].ToString()))
                    {
                        txtExhibitionname.Text = DTFill.Rows[0]["exhibition_name"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["exhibition_date"].ToString()))
                    {
                        txtdateforExhibition.Text = Convert.ToDateTime(DTFill.Rows[0]["exhibition_date"].ToString()).ToString("dd-MM-yyyy");
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["expenditure"].ToString()))
                    {
                        txtexpenditurePlanned.Text = DTFill.Rows[0]["expenditure"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["is_availed_scheme"].ToString()))
                    {
                        rdlAvailAssistance.SelectedValue = DTFill.Rows[0]["is_availed_scheme"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["expenditure"].ToString()))
                    {
                        txtexpenditurePlanned.Text = DTFill.Rows[0]["expenditure"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["availed_scheme_date"].ToString()))
                    {
                        txtavailSchemeDate.Text = Convert.ToDateTime(DTFill.Rows[0]["availed_scheme_date"].ToString()).ToString("dd-MM-yyyy");
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["project_cost"].ToString()))
                    {
                        txtIndustryAssociationAmount.Text = DTFill.Rows[0]["project_cost"].ToString();
                    }
                }
                else if (ddlEntityAssistance.SelectedValue == "CONTRACT_OR_SPONSORED_RESEARCH_WORK")
                {
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["research_topic"].ToString()))
                    {
                        txtResearchTopic.Text = DTFill.Rows[0]["research_topic"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["assigning_organisation"].ToString()))
                    {
                        txtResearchAssigningOrg.Text = DTFill.Rows[0]["assigning_organisation"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["research_duration"].ToString()))
                    {
                        txtTotalduration.Text = DTFill.Rows[0]["research_duration"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["project_cost"].ToString()))
                    {
                        txtTotalCostforResearch.Text = DTFill.Rows[0]["project_cost"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["earlier_assistance_organisation"].ToString()))
                    {
                        txtOrgNameforAssistance.Text = DTFill.Rows[0]["earlier_assistance_organisation"].ToString();
                    }

                  
                }
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["applicant_address_id"].ToString()))
                {
                    hdnapplicant_address_id.Value = DTFill.Rows[0]["applicant_address_id"].ToString();
                }
                



                fillGrid(AnnexureID);
                FillAuthorisedDetails(AnnexureID);
                fillIncentiveDetails(AnnexureID, ddlEntityAssistance.SelectedValue.ToString());
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["IDproofFileName"].ToString()))
                {
                    ViewState["IDProof"] = DTFill.Rows[0]["IDproofFileName"].ToString();
                    lnkviewIDprrof.Visible = true;
                }

                if (!string.IsNullOrEmpty(DTFill.Rows[0]["PANCardFileName"].ToString()))
                {
                    ViewState["PanCard"] = DTFill.Rows[0]["PANCardFileName"].ToString();
                    lnkviewPANCard.Visible = true;
                }
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["PartnershipFileName"].ToString()))
                {
                    ViewState["Partnership"] = DTFill.Rows[0]["PartnershipFileName"].ToString();
                    lnkPartnershipdeed.Visible = true;
                }
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["MemorandumFileName"].ToString()))
                {
                    ViewState["Memorandum"] = DTFill.Rows[0]["MemorandumFileName"].ToString();
                    lnkMemorandum.Visible = true;
                }
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["RegistrationFileName"].ToString()))
                {
                    ViewState["Registration"] = DTFill.Rows[0]["RegistrationFileName"].ToString();
                    lnkreg.Visible = true;
                }
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["IncorporationFileName"].ToString()))
                {
                    ViewState["Incorporation"] = DTFill.Rows[0]["IncorporationFileName"].ToString();
                    lnkCorporation.Visible = true;
                }

                if (!string.IsNullOrEmpty(DTFill.Rows[0]["GSTFileName"].ToString()))
                {
                    ViewState["GST"] = DTFill.Rows[0]["GSTFileName"].ToString();
                    lnkGST.Visible = true;
                }
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["CAFileName"].ToString()))
                {
                    ViewState["CA"] = DTFill.Rows[0]["CAFileName"].ToString();
                    lnkCACertificate.Visible = true;
                }
            }
        }
        catch (Exception ex)
        {
            //MSG.Text = ex.Message;
        }
    }


    private void FillDataACK(int annexureid, int applicationid, int applicantID)
    {
        DataSet DSFill = new DataSet();
        DataTable DTFill = new DataTable();
        try
        {
            DSFill = ITApplication.BindAlldataForAck(annexureid, applicationid, applicantID);
            DTFill = DSFill.Tables[0];
            if (DTFill != null && DTFill.Rows.Count == 1)
            {

                if (!string.IsNullOrEmpty(DTFill.Rows[0]["corresPincode"].ToString()))
                {
                   lblackCorPostalCode.Text  = DTFill.Rows[0]["corresPincode"].ToString();
                  
                }
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["corresaddress_line_1"].ToString()))
                {
                    lblackCorAddressline1.Text = DTFill.Rows[0]["corresaddress_line_1"].ToString();
                }
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["corresaddress_line_2"].ToString()))
                {
                    lblackCorAddressline2.Text = DTFill.Rows[0]["corresaddress_line_2"].ToString();
                }
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["correscity"].ToString()))
                {
                    lblackCorCity.Text = DTFill.Rows[0]["correscity"].ToString();
                }
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["correstelephone_number"].ToString()))
                {
                    lblackCorTelephoneNumber.Text = DTFill.Rows[0]["correstelephone_number"].ToString();
                }
                //fillState();
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["corresState"].ToString()))
                {
                    lblackCorState.Text  = DTFill.Rows[0]["corresState"].ToString();
                }
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["IDProof"].ToString()))
                {
                    lblackIDProof.Text = DTFill.Rows[0]["IDProof"].ToString();
                }
                                      
              
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["applicant_id_proof_number"].ToString()))
                {
                    lblackIDProofNumber.Text = DTFill.Rows[0]["applicant_id_proof_number"].ToString();
                }

                if (!string.IsNullOrEmpty(DTFill.Rows[0]["ScanCopyIDProof"].ToString()))
                {
                    lblackScanCopyIDProofUploaded.Text = DTFill.Rows[0]["ScanCopyIDProof"].ToString();
                }

                if (!string.IsNullOrEmpty(DTFill.Rows[0]["ScanCopyPAN"].ToString()))
                {
                    lblackIsPanAttached.Text = DTFill.Rows[0]["ScanCopyPAN"].ToString();
                }
                

                //fillEntityType();
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["TypeOfEntity"].ToString()))
                {
                    lblackEntityType.Text = DTFill.Rows[0]["TypeOfEntity"].ToString();
                }

                if (!string.IsNullOrEmpty(DTFill.Rows[0]["ScanCopyPartner"].ToString()))
                {
                    lblackCertificateOfPartnership.Text = DTFill.Rows[0]["ScanCopyPartner"].ToString();
                }


                if (!string.IsNullOrEmpty(DTFill.Rows[0]["ScanCopyMemorandum"].ToString()))
                {
                    lblackMemorandumArticle.Text = DTFill.Rows[0]["ScanCopyMemorandum"].ToString();
                }

                

                //if (!string.IsNullOrEmpty(DTFill.Rows[0]["entity_address_id"].ToString()))
                //{
                //    hdnEntityaddressid.Value = DTFill.Rows[0]["entity_address_id"].ToString();
                //}

                if (!string.IsNullOrEmpty(DTFill.Rows[0]["entity_mobileno"].ToString()))
                {
                    lblackEntityMob.Text = DTFill.Rows[0]["entity_mobileno"].ToString();
                }
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["entity_email_id"].ToString()))
                {
                    lblEntityEmail.Text = DTFill.Rows[0]["entity_email_id"].ToString();
                }

                if (!string.IsNullOrEmpty(DTFill.Rows[0]["EntityTelephone"].ToString()))
                {
                    lblackEntityTelephone.Text = DTFill.Rows[0]["EntityTelephone"].ToString();
                }
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["FaxNumber"].ToString()))
                {
                    lblackEntityFAX.Text = DTFill.Rows[0]["FaxNumber"].ToString();
                }

                if (!string.IsNullOrEmpty(DTFill.Rows[0]["ISOfficeSameAsCorrespondense"].ToString()))
                {
                    bool OfficeSameasCorres = false;
                    OfficeSameasCorres = Convert.ToBoolean(DTFill.Rows[0]["ISOfficeSameAsCorrespondense"].ToString());
                    if (OfficeSameasCorres)
                    {
                        lblackIsOfficeaddresssameasCorres.Text = "Yes";
                    }
                    else
                    {
                        lblackIsOfficeaddresssameasCorres.Text = "No";
                    }
                }

                //if (!string.IsNullOrEmpty(DTFill.Rows[0]["Office_address_id"].ToString()))
                //{
                //    hdnOfficeaddressid.Value = DTFill.Rows[0]["Office_address_id"].ToString();
                //}


                if (!string.IsNullOrEmpty(DTFill.Rows[0]["OfficePincode"].ToString()))
                {
                    lblackOfficePostalCode.Text = DTFill.Rows[0]["OfficePincode"].ToString();
                }
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["OfficeAddress1"].ToString()))
                {
                    lblackOfficeaddress1.Text = DTFill.Rows[0]["OfficeAddress1"].ToString();
                }
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["OfficeAddress2"].ToString()))
                {
                    lblackOfficeaddress2.Text = DTFill.Rows[0]["OfficeAddress2"].ToString();
                }
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["OfficeCity"].ToString()))
                {
                    lblackOfficeCity.Text = DTFill.Rows[0]["OfficeCity"].ToString();
                }

                if (!string.IsNullOrEmpty(DTFill.Rows[0]["OfficeState"].ToString()))
                {
                    lblackOfficeState.Text = DTFill.Rows[0]["OfficeState"].ToString();
                }




                if (!string.IsNullOrEmpty(DTFill.Rows[0]["IsFactorySameAsCorrespondence"].ToString()))
                {
                    bool ISFactorySameAsCorrespondence = false;
                    ISFactorySameAsCorrespondence = Convert.ToBoolean(DTFill.Rows[0]["IsFactorySameAsCorrespondence"].ToString());

                    if (ISFactorySameAsCorrespondence)
                    {
                        lblackFactorySameasCorresadress.Text = "Yes";
                    }
                    else
                    {
                        lblackFactorySameasCorresadress.Text = "No";
                    }
                }

                //if (!string.IsNullOrEmpty(DTFill.Rows[0]["factory_address_id"].ToString()))
                //{
                //    hdnFactoryaddressid.Value = DTFill.Rows[0]["factory_address_id"].ToString();
                //}


                if (!string.IsNullOrEmpty(DTFill.Rows[0]["FactoryPincode"].ToString()))
                {
                   lblackFactoryPostalCode.Text = DTFill.Rows[0]["FactoryPincode"].ToString();
                }
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["FactoryAddress1"].ToString()))
                {
                    lblackFactoryaddress1.Text = DTFill.Rows[0]["FactoryAddress1"].ToString();
                }
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["FactoryAddress2"].ToString()))
                {
                    lblackFactoryaddress2.Text = DTFill.Rows[0]["FactoryAddress2"].ToString();
                }
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["FactoryCity"].ToString()))
                {
                    lblackFactoryCity.Text= DTFill.Rows[0]["FactoryCity"].ToString();
                }
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["FactoryState"].ToString()))
                {
                   lblackFactoryState.Text = DTFill.Rows[0]["FactoryState"].ToString();
                }


                if (!string.IsNullOrEmpty(DTFill.Rows[0]["Registration_No"].ToString()))
                {
                    txtRegistrationNo.Text = DTFill.Rows[0]["Registration_No"].ToString();
                }
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["incorporation_certificate_number"].ToString()))
                {
                    txtIncorporationCerti.Text = DTFill.Rows[0]["incorporation_certificate_number"].ToString();
                }
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["gst_number"].ToString()))
                {
                    txtGSTIN.Text = DTFill.Rows[0]["gst_number"].ToString();
                }



                if (!string.IsNullOrEmpty(DTFill.Rows[0]["AssistanceName"].ToString()))
                {
                    lblackAssistanceSought.Text = DTFill.Rows[0]["AssistanceName"].ToString();
                }

                string AssistanceEnum = string.Empty;
                if (!string.IsNullOrEmpty(DTFill.Rows[0]["AssistanceEnum"].ToString()))
                {
                    AssistanceEnum = DTFill.Rows[0]["AssistanceEnum"].ToString().Trim();
                }

                ShowHideAssistanceSoughtAck(AssistanceEnum);

                if (AssistanceEnum == "IT_ITES_UNIT")
                {
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["area"].ToString()))
                    {
                        lblAckUnitArea.Text = DTFill.Rows[0]["area"].ToString();
                    }
                    //if (!string.IsNullOrEmpty(DTFill.Rows[0]["area_unit_id"].ToString()))
                    //{
                    //    ddlAreaType.SelectedValue = DTFill.Rows[0]["area_unit_id"].ToString();
                    //}
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["location"].ToString()))
                    {
                        lblAckUnitLocation.Text = DTFill.Rows[0]["location"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["project_cost"].ToString()))
                    {
                        lblackUnitInvestment.Text = DTFill.Rows[0]["project_cost"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["employment"].ToString()))
                    {
                        lblackunitEmployment.Text = DTFill.Rows[0]["employment"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["UnitType"].ToString()))
                    {
                        lblackUnitType.Text = DTFill.Rows[0]["UnitType"].ToString();
                    }
                }
                else if (AssistanceEnum == "IT_ITES_PARK")
                {
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["location"].ToString()))
                    {
                        lblackITParkLoc.Text = DTFill.Rows[0]["location"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["ParkType"].ToString()))
                    {
                        lblackITParkType.Text = DTFill.Rows[0]["ParkType"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["area"].ToString()))
                    {
                        lblackITTentativeParkArea.Text = DTFill.Rows[0]["area"].ToString();
                    }
                    //if (!string.IsNullOrEmpty(DTFill.Rows[0]["area_unit_id"].ToString()))
                    //{
                    //    ddlTentativeParkArea.SelectedValue = DTFill.Rows[0]["area_unit_id"].ToString();
                    //}
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["build_up_area"].ToString()))
                    {
                        lblAckITParkBuitupArea.Text = DTFill.Rows[0]["build_up_area"].ToString();
                    }
                    //if (!string.IsNullOrEmpty(DTFill.Rows[0]["build_up_area_unit_id"].ToString()))
                    //{
                    //    ddlBuiltupParkArea.SelectedValue = DTFill.Rows[0]["build_up_area_unit_id"].ToString();
                    //}
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["project_cost"].ToString()))
                    {
                        lblackITParkProjectCost.Text = DTFill.Rows[0]["project_cost"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["description"].ToString()))
                    {
                        lblackITParkDesc.Text = DTFill.Rows[0]["description"].ToString();
                    }
                }
                else if (AssistanceEnum == "R_AND_D_INSTITUTION")
                {
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["location"].ToString()))
                    {
                        lblAckRNDLoc.Text = DTFill.Rows[0]["location"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["area"].ToString()))
                    {
                        lblackRNDTentativeArea.Text = DTFill.Rows[0]["area"].ToString();
                    }
                    //if (!string.IsNullOrEmpty(DTFill.Rows[0]["area_unit_id"].ToString()))
                    //{
                    //    ddlRNDTentativeAreaType.SelectedValue = DTFill.Rows[0]["area_unit_id"].ToString();
                    //}
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["project_cost"].ToString()))
                    {
                        lblackRNDProjectCost.Text = DTFill.Rows[0]["project_cost"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["description"].ToString()))
                    {
                        lblackRNDDesc.Text = DTFill.Rows[0]["description"].ToString();
                    }
                }
                else if (AssistanceEnum == "FINISHING_SCHOOL")
                {
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["location"].ToString()))
                    {
                        lblAckFishingLoc.Text = DTFill.Rows[0]["location"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["area"].ToString()))
                    {
                        lblAckFishingTentativeArea.Text = DTFill.Rows[0]["area"].ToString();
                    }
                    //if (!string.IsNullOrEmpty(DTFill.Rows[0]["area_unit_id"].ToString()))
                    //{
                    //    ddlFishingAreaType.SelectedValue = DTFill.Rows[0]["area_unit_id"].ToString();
                    //}
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["project_cost"].ToString()))
                    {
                        lblAckFishingTentativeProjectCose.Text = DTFill.Rows[0]["project_cost"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["description"].ToString()))
                    {
                        lblackFishingDesc.Text = DTFill.Rows[0]["description"].ToString();
                    }
                }
                else if (AssistanceEnum == "IT_OR_ITES_INDUSTRY_ASSOCIATION")
                {
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["exhibition_name"].ToString()))
                    {
                        lblAckIndustryExibitionName.Text = DTFill.Rows[0]["exhibition_name"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["exhibition_date"].ToString()))
                    {
                        lblackIndustryForExibitionDate.Text = Convert.ToDateTime(DTFill.Rows[0]["exhibition_date"].ToString()).ToString("dd-MM-yyyy");
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["expenditure"].ToString()))
                    {
                        lblackIndustryexpenditurePlanned.Text = DTFill.Rows[0]["expenditure"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["is_availed_scheme"].ToString()))
                    {
                        lblackIndustryIsAvailAssistance.Text = DTFill.Rows[0]["is_availed_scheme"].ToString();
                    }
                    //if (!string.IsNullOrEmpty(DTFill.Rows[0]["expenditure"].ToString()))
                    //{
                    //    txtexpenditurePlanned.Text = DTFill.Rows[0]["expenditure"].ToString();
                    //}
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["availed_scheme_date"].ToString()))
                    {
                        lblackIndustryOfExibitionDate.Text = Convert.ToDateTime(DTFill.Rows[0]["availed_scheme_date"].ToString()).ToString("dd-MM-yyyy");
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["project_cost"].ToString()))
                    {
                        lblackIndustryAmount.Text = DTFill.Rows[0]["project_cost"].ToString();
                    }
                }
                else if (AssistanceEnum == "CONTRACT_OR_SPONSORED_RESEARCH_WORK")
                {
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["research_topic"].ToString()))
                    {
                        lblackResearchTopic.Text = DTFill.Rows[0]["research_topic"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["assigning_organisation"].ToString()))
                    {
                        lblackResearchOrg.Text = DTFill.Rows[0]["assigning_organisation"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["research_duration"].ToString()))
                    {
                        lblackResearchDuration.Text = DTFill.Rows[0]["research_duration"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["project_cost"].ToString()))
                    {
                        lblackResearchTotalCost.Text = DTFill.Rows[0]["project_cost"].ToString();
                    }
                    if (!string.IsNullOrEmpty(DTFill.Rows[0]["earlier_assistance_organisation"].ToString()))
                    {
                        lblackResearchOrgName.Text = DTFill.Rows[0]["earlier_assistance_organisation"].ToString();
                    }


                }
                //if (!string.IsNullOrEmpty(DTFill.Rows[0]["applicant_address_id"].ToString()))
                //{
                //    hdnapplicant_address_id.Value = DTFill.Rows[0]["applicant_address_id"].ToString();
                //}


                fillIncentiveDetailsack(AnnexureID, AssistanceEnum);


                FillDirectorGridForACK(AnnexureID);
                FillAuthorisedDetailsACK(AnnexureID);
                //fillIncentiveDetails(AnnexureID, ddlEntityAssistance.SelectedValue.ToString());
                //if (!string.IsNullOrEmpty(DTFill.Rows[0]["IDproofFileName"].ToString()))
                //{
                //    ViewState["IDProof"] = DTFill.Rows[0]["IDproofFileName"].ToString();
                //    lnkviewIDprrof.Visible = true;
                //}

                //if (!string.IsNullOrEmpty(DTFill.Rows[0]["PANCardFileName"].ToString()))
                //{
                //    ViewState["PanCard"] = DTFill.Rows[0]["PANCardFileName"].ToString();
                //    lnkviewPANCard.Visible = true;
                //}
                //if (!string.IsNullOrEmpty(DTFill.Rows[0]["PartnershipFileName"].ToString()))
                //{
                //    ViewState["Partnership"] = DTFill.Rows[0]["PartnershipFileName"].ToString();
                //    lnkPartnershipdeed.Visible = true;
                //}
                //if (!string.IsNullOrEmpty(DTFill.Rows[0]["MemorandumFileName"].ToString()))
                //{
                //    ViewState["Memorandum"] = DTFill.Rows[0]["MemorandumFileName"].ToString();
                //    lnkPartnershipdeed.Visible = true;
                //}
                //if (!string.IsNullOrEmpty(DTFill.Rows[0]["RegistrationFileName"].ToString()))
                //{
                //    ViewState["Registration"] = DTFill.Rows[0]["RegistrationFileName"].ToString();
                //    lnkreg.Visible = true;
                //}
                //if (!string.IsNullOrEmpty(DTFill.Rows[0]["IncorporationFileName"].ToString()))
                //{
                //    ViewState["Incorporation"] = DTFill.Rows[0]["IncorporationFileName"].ToString();
                //    lnkCorporation.Visible = true;
                //}

                //if (!string.IsNullOrEmpty(DTFill.Rows[0]["GSTFileName"].ToString()))
                //{
                //    ViewState["GST"] = DTFill.Rows[0]["GSTFileName"].ToString();
                //    lnkGST.Visible = true;
                //}
                //if (!string.IsNullOrEmpty(DTFill.Rows[0]["CAFileName"].ToString()))
                //{
                //    ViewState["CA"] = DTFill.Rows[0]["CAFileName"].ToString();
                //    lnkCACertificate.Visible = true;
                //}
            }
        }
        catch (Exception ex)
        {
            //MSG.Text = ex.Message;
        }
    }



    private void setDS()
    {
        DS = null;
        DT = null;
    }

    private void ClearControls()
    {
        txtFirstName.Text = "";
        txtLastName.Text = "";
        txtMobileNumber.Text = "";
        txtEmailId.Text = "";
        txtPostalCode.Text = "";
        txtAddline1.Text = "";
        txtAddline2.Text = "";
        txtCity.Text = "";
        ddlState.SelectedIndex = 0;
        txtTelephoneNo.Text = "";
        ddlIdentityProof.SelectedIndex = 0;
        txtIDNo.Text = "";
    }
    private void fillIdentityProof()
    {
        setDS();
        try
        {
            DS = ITApplication.SelectIdentityProof();
            DT = DS.Tables[0];
            if (DT != null && DT.Rows.Count > 0)
            {
                ddlIdentityProof.DataSource = DT;



                ddlIdentityProof.DataValueField = "id";
                ddlIdentityProof.DataTextField = "name";

                ddlIdentityProof.DataBind();
                ddlIdentityProof.Items.Insert(0, new ListItem("Choose", "0"));


                //Types of Entity dropdown





            }
        }
        catch (Exception ex)
        {
            //MSG.Text = ex.Message;
        }
    }

    private void fillEntityType()
    {
        setDS();
        try
        {
            DS = ITApplication.SelectEntityType();
            DT = DS.Tables[0];
            if (DT != null && DT.Rows.Count > 0)
            {
                ddlTypeOfEntity.DataSource = DT;



                ddlTypeOfEntity.DataValueField = "id";
                ddlTypeOfEntity.DataTextField = "name";

                ddlTypeOfEntity.DataBind();
                ddlTypeOfEntity.Items.Insert(0, new ListItem("Please select the type of entity", "0"));
            }
        }
        catch (Exception ex)
        {
            //MSG.Text = ex.Message;
        }
    }


    private void fillIncentiveDetails(int AnexureID, string Entity_enum)
    {
        DataSet dsIncentive = new DataSet();
        DataTable dtIncentive = new DataTable();
        try
        {
            dsIncentive = ITApplication.SelectIncentiveDetails(AnexureID, Entity_enum);
            dtIncentive = dsIncentive.Tables[0];
            if (dtIncentive != null && dtIncentive.Rows.Count > 0)
            {
                grdIncentive.DataSource = dtIncentive;

                grdIncentive.DataBind();

                grdIncentive.UseAccessibleHeader = true;
                grdIncentive.HeaderRow.TableSection = TableRowSection.TableHeader;
                TableCellCollection cells = grdIncentive.HeaderRow.Cells;

                cells[0].Attributes.Add("data-class", "expand");
                cells[1].Attributes.Add("data-hide", "phone,tablet");
                cells[2].Attributes.Add("data-hide", "phone,tablet");

            }
            else
            {
                grdIncentive.DataSource = null;
                grdIncentive.DataBind();
            }
        }
        catch (Exception ex)
        {
            //MSG.Text = ex.Message;
        }
    }


    private void fillIncentiveDetailsack(int AnexureID, string Entity_enum)
    {
        DataSet dsIncentive = new DataSet();
        DataTable dtIncentive = new DataTable();
        try
        {
            dsIncentive = ITApplication.SelectIncentiveDetails(AnexureID, Entity_enum);
            dtIncentive = dsIncentive.Tables[0];
            if (dtIncentive != null && dtIncentive.Rows.Count > 0)
            {
                RPTIncentive.DataSource = dtIncentive;

                RPTIncentive.DataBind();

                

            }
            else
            {
                RPTIncentive.DataSource = null;
                RPTIncentive.DataBind();
            }
        }
        catch (Exception ex)
        {
            //MSG.Text = ex.Message;
        }
    }
    private void fillEntityAssistance()
    {
        setDS();
        try
        {
            DS = ITApplication.SelectEntityAssistance();
            DT = DS.Tables[0];
            if (DT != null && DT.Rows.Count > 0)
            {
                ddlEntityAssistance.DataSource = DT;



                ddlEntityAssistance.DataValueField = "entity_enum";
                ddlEntityAssistance.DataTextField = "entity_name";

                ddlEntityAssistance.DataBind();
                ddlEntityAssistance.Items.Insert(0, new ListItem("Please select relevant option", "0"));
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

                //fill Office State
                ddlOfficeState.DataSource = DT;
                ddlOfficeState.DataValueField = "id";
                ddlOfficeState.DataTextField = "state_name";
                ddlOfficeState.DataBind();
                ddlOfficeState.Items.Insert(0, new ListItem("Choose", "0"));

                //fill Factory State
                ddlFactoryState.DataSource = DT;
                ddlFactoryState.DataValueField = "id";
                ddlFactoryState.DataTextField = "state_name";
                ddlFactoryState.DataBind();
                ddlFactoryState.Items.Insert(0, new ListItem("Choose", "0"));

            }
        }
        catch (Exception ex)
        {
            //MSG.Text = ex.Message;
        }
    }



    //------ Assistance sought fill data-----//

    private void FillAreaType()
    {
        setDS();
        try
        {
            DS = ITApplication.SelectCommonValue("IT_UNIT_AREA_TYPE");
            DT = DS.Tables[0];
            if (DT != null && DT.Rows.Count > 0)
            {
                ddlAreaType.DataSource = DT;
                ddlAreaType.DataValueField = "id";
                ddlAreaType.DataTextField = "name";
                ddlAreaType.DataBind();

                ddlBuiltupParkArea.DataSource = DT;
                ddlBuiltupParkArea.DataValueField = "id";
                ddlBuiltupParkArea.DataTextField = "name";
                ddlBuiltupParkArea.DataBind();

                ddlTentativeParkArea.DataSource = DT;
                ddlTentativeParkArea.DataValueField = "id";
                ddlTentativeParkArea.DataTextField = "name";
                ddlTentativeParkArea.DataBind();


                ddlRNDTentativeAreaType.DataSource = DT;
                ddlRNDTentativeAreaType.DataValueField = "id";
                ddlRNDTentativeAreaType.DataTextField = "name";
                ddlRNDTentativeAreaType.DataBind();

                ddlFishingAreaType.DataSource = DT;
                ddlFishingAreaType.DataValueField = "id";
                ddlFishingAreaType.DataTextField = "name";
                ddlFishingAreaType.DataBind();
                
            }
        }
        catch (Exception ex)
        {
            //MSG.Text = ex.Message;
        }
    }
    private void FillParkType()
    {
        setDS();
        try
        {
            DS = ITApplication.SelectCommonValue("IT_PARK_TYPE");
            DT = DS.Tables[0];
            if (DT != null && DT.Rows.Count > 0)
            {
                rdlParkType.DataSource = DT;



                rdlParkType.DataValueField = "id";
                rdlParkType.DataTextField = "name";

                rdlParkType.DataBind();

            }
        }
        catch (Exception ex)
        {
            //MSG.Text = ex.Message;
        }
    }


    //private void FillAvailAssistance()
    //{
    //    setDS();
    //    try
    //    {
    //        DS = ITApplication.SelectCommonValue("IT_Avail_Assistance");
    //        DT = DS.Tables[0];
    //        if (DT != null && DT.Rows.Count > 0)
    //        {
    //            rdlAvailAssistance.DataSource = DT;



    //            rdlAvailAssistance.DataValueField = "id";
    //            rdlAvailAssistance.DataTextField = "name";

    //            rdlAvailAssistance.DataBind();

    //        }
    //    }
    //    catch (Exception ex)
    //    {
    //        //MSG.Text = ex.Message;
    //    }
    //}



    private void FillUnitType()
    {
        setDS();
        try
        {
            DS = ITApplication.SelectCommonValue("IT_UNIT_TYPE1");
            DT = DS.Tables[0];
            if (DT != null && DT.Rows.Count > 0)
            {
                rdUnitType.DataSource = DT;



                rdUnitType.DataValueField = "id";
                rdUnitType.DataTextField = "name";

                rdUnitType.DataBind();

            }
        }
        catch (Exception ex)
        {
            //MSG.Text = ex.Message;
        }
    }

    //------------------------


    //private void bindReapeater()
    //{
    //    setDS();
    //    try
    //    {
    //        DS = ITApplication.SelectEmptyDirectorDetails();
    //        DT = DS.Tables[0];
    //        if (DT != null && DT.Rows.Count > 0)
    //        {
    //            ViewState["ExistingDS"] = DS;
    //            Repeater1.DataSource = DS;
    //            Repeater1.DataBind();
    //        }
    //    }
    //    catch (Exception ex)
    //    {
    //        //MSG.Text = ex.Message;
    //    }
    //}
    private void HideallDiv()
    {
        tabBasicDetails.Visible = false;
        linktabTitle1.CssClass = "nav-link text-sm text-capitalize";
        linktabTitle2.CssClass = "nav-link text-sm text-capitalize";
        linktabTitle3.CssClass = "nav-link text-sm text-capitalize";
        linktabTitle4.CssClass = "nav-link text-sm text-capitalize";
        linktabTitle5.CssClass = "nav-link text-sm text-capitalize";
        linktabTitle6.CssClass = "nav-link text-sm text-capitalize";
        tabEntityDetails.Visible = false;
        tabAssistanceDetails.Visible = false;
        tabIncentiveDetails.Visible = false;
        tabacknowledge.Visible = false;
        tabDocUpload.Visible = false;
    }
    private void hideallAssistance()
    {
        divItItesUnit.Visible = false;
        divItItesPark.Visible = false;
        divRNDInstitute.Visible = false;
        divFishingSchool.Visible = false;
        divItIndustryAssociation.Visible = false;
        divContractResearchwork.Visible = false;

    }

    private void hideallAckAssistance()
    {
        divAckItItesUnit.Visible = false;
        divAckItItesPark.Visible = false;
        divAckRNDInstitute.Visible = false;
        divAckFishingSchool.Visible = false;
        divAckItIndustryAssociation.Visible = false;
        divAckContractResearchwork.Visible = false;

    }
    private void ShowHideDiv(string DivName)
    {
        switch (DivName)
        {
            case "tabBasicDetails":
                HideallDiv();
                tabBasicDetails.Visible = true;
                linktabTitle1.CssClass = "nav-link text-sm text-capitalize active";
                break;
            case "tabEntityDetails":
                HideallDiv();
                tabEntityDetails.Visible = true;
                linktabTitle2.CssClass = "nav-link text-sm text-capitalize active";
                break;
            case "tabAssistanceDetails":
                HideallDiv();
                tabAssistanceDetails.Visible = true;
                linktabTitle3.CssClass = "nav-link text-sm text-capitalize active";
                break;
            case "tabIncentiveDetails":
                HideallDiv();
                tabIncentiveDetails.Visible = true;
                linktabTitle4.CssClass = "nav-link text-sm text-capitalize active";
                break;
            case "tabacknowledge":
                HideallDiv();
                tabacknowledge.Visible = true;
                linktabTitle5.CssClass = "nav-link text-sm text-capitalize active";
                break;
            case "tabDocUpload":
                HideallDiv();
                tabDocUpload.Visible = true;
                linktabTitle6.CssClass = "nav-link text-sm text-capitalize active";
                break;
        }

    }

    private void enableAssistanceUnitValidator()
    {
        reqLocation.Enabled = true;
        reqUnitArea.Enabled = true;
        reqInvestment.Enabled = true;
        reqEmployment.Enabled = true;
    }
    private void enableAssistanceUnitParkValidator()
    {
        reqParkLocation.Enabled = true;
        reqTentativeParkArea.Enabled = true;
        reqBuiltupParkArea.Enabled = true;
        reqTentativeProjectCost.Enabled = true;
        reqDescActivities.Enabled = true;
    }
    private void enableRNDInstituteValidator()
    {
        reqRNDLocation.Enabled = true;
        reqRNDTentativeCost.Enabled = true;
        reqRNDActivity.Enabled = true;

    }
    private void enableFishingInstituteValidator()
    {
        reqFishingschoolLocation.Enabled = true;
        reqFishingProjectCost.Enabled = true;
        reqFishingActivity.Enabled = true;

    }

    private void enableIndustryAssosiationValidator()
    {
        reqexhibitionname.Enabled = true;
        reqdateforExhibition.Enabled = true;
        reqexpenditurePlanned.Enabled = true;
        reqAvailSchemeDate.Enabled = true;
        reqIndustryAssociationAmount.Enabled = true;
    }
    private void enableContractSponsoredResearchValidator()
    {
        reqResearchTopic.Enabled = true;
        reqResearchAssigningOrg.Enabled = true;
        reqTotalduration.Enabled = true;
        reqTotalCostforResearch.Enabled = true;
        reqOrgNameforAssistance.Enabled = true;
    }
    private void clearforUnit()
    {

    }
    private void clearforPark()
    {

    }


    private void ShowHideAssistanceSoughtAck(string groupName)
    {
        switch (groupName)
        {
            case "IT_ITES_UNIT":
                hideallAckAssistance();
                divAckItItesUnit.Visible = true;
              
                break;
            case "IT_ITES_PARK":
                hideallAckAssistance();
                divAckItItesPark.Visible = true;
             
                break;

            case "R_AND_D_INSTITUTION":
                hideallAckAssistance();
                divAckRNDInstitute.Visible = true;
              
                break;

            case "FINISHING_SCHOOL":
                hideallAckAssistance();
                divAckFishingSchool.Visible = true;
                break;

            case "IT_OR_ITES_INDUSTRY_ASSOCIATION":
                hideallAckAssistance();
                divAckItIndustryAssociation.Visible = true;
                break;

            case "CONTRACT_OR_SPONSORED_RESEARCH_WORK":
                hideallAckAssistance();
                divAckContractResearchwork.Visible = true;
                break;
        }

    }

    private void ShowHideAssistanceSought(string groupName)
    {
        switch (groupName)
        {
            case "IT_ITES_UNIT":
                hideallAssistance();
                divItItesUnit.Visible = true;
                enableAssistanceUnitValidator();
                break;
            case "IT_ITES_PARK":
                hideallAssistance();
                divItItesPark.Visible = true;
                enableAssistanceUnitParkValidator();
                break;

            case "R_AND_D_INSTITUTION":
                hideallAssistance();
                divRNDInstitute.Visible = true;
                enableRNDInstituteValidator();
                break;

            case "FINISHING_SCHOOL":
                hideallAssistance();
                divFishingSchool.Visible = true;
                enableFishingInstituteValidator();
                break;
            case "IT_OR_ITES_INDUSTRY_ASSOCIATION":
                hideallAssistance();
                divItIndustryAssociation.Visible = true;
                enableIndustryAssosiationValidator();
                break;

            case "CONTRACT_OR_SPONSORED_RESEARCH_WORK":
                hideallAssistance();
                divContractResearchwork.Visible = true;
                enableContractSponsoredResearchValidator();
                break;
        }

    }

    private void fillcorrespondenceAddress(int annexureID, string tab)
    {
        setDS();
        try
        {
            DS = ITApplication.SelectCorrespondenceadress(annexureID);
            DT = DS.Tables[0];
            if (DT != null && DT.Rows.Count == 1)
            {

                if (tab == "OfficeAdd")
                {

                    if (!string.IsNullOrEmpty(DT.Rows[0]["pin_code"].ToString().Trim()))
                    {
                        txtOfficePostalCode.Text = DT.Rows[0]["pin_code"].ToString().Trim();
                    }

                    if (!string.IsNullOrEmpty(DT.Rows[0]["address_line_1"].ToString().Trim()))
                    {
                        txtOfficeAddress1.Text = DT.Rows[0]["address_line_1"].ToString().Trim();
                    }

                    if (!string.IsNullOrEmpty(DT.Rows[0]["address_line_2"].ToString().Trim()))
                    {
                        txtOfficeAddress2.Text = DT.Rows[0]["address_line_2"].ToString().Trim();
                    }


                    if (!string.IsNullOrEmpty(DT.Rows[0]["city"].ToString().Trim()))
                    {

                        txtOfficeCity.Text = DT.Rows[0]["city"].ToString().Trim();
                    }


                    if (!string.IsNullOrEmpty(DT.Rows[0]["state_id"].ToString().Trim()))
                    {

                        ddlOfficeState.SelectedValue = DT.Rows[0]["state_id"].ToString().Trim();
                    }


                }
                else if (tab == "FactoryAdd")
                {


                    if (!string.IsNullOrEmpty(DT.Rows[0]["pin_code"].ToString().Trim()))
                    {
                        txtFactoryPostalCode.Text = DT.Rows[0]["pin_code"].ToString().Trim();
                    }

                    if (!string.IsNullOrEmpty(DT.Rows[0]["address_line_1"].ToString().Trim()))
                    {
                        txtFactoryAdd1.Text = DT.Rows[0]["address_line_1"].ToString().Trim();
                    }

                    if (!string.IsNullOrEmpty(DT.Rows[0]["address_line_2"].ToString().Trim()))
                    {
                        txtFactoryAdd2.Text = DT.Rows[0]["address_line_2"].ToString().Trim();
                    }


                    if (!string.IsNullOrEmpty(DT.Rows[0]["city"].ToString().Trim()))
                    {

                        txtFactoryCity.Text = DT.Rows[0]["city"].ToString().Trim();
                    }


                    if (!string.IsNullOrEmpty(DT.Rows[0]["state_id"].ToString().Trim()))
                    {

                        ddlFactoryState.SelectedValue = DT.Rows[0]["state_id"].ToString().Trim();
                    }

                }
                else if (tab == "DirectorAdd")
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
                        DirAddress += ", " + ddlFactoryState.SelectedItem.ToString();

                    }

                    txtDirectorAddress.Text = DirAddress;



                }
                else if (tab == "AuthorisedAdd")
                {

                    string AuthAddress = string.Empty;
                    if (!string.IsNullOrEmpty(DT.Rows[0]["address_line_1"].ToString().Trim()))
                    {
                        AuthAddress += DT.Rows[0]["address_line_1"].ToString().Trim();

                    }

                    if (!string.IsNullOrEmpty(DT.Rows[0]["address_line_2"].ToString().Trim()))
                    {
                        AuthAddress += ", " + DT.Rows[0]["address_line_2"].ToString().Trim();

                    }
                    if (!string.IsNullOrEmpty(DT.Rows[0]["city"].ToString().Trim()))
                    {
                        AuthAddress += ", " + DT.Rows[0]["city"].ToString().Trim();

                    }
                    if (!string.IsNullOrEmpty(DT.Rows[0]["pin_code"].ToString().Trim()))
                    {
                        AuthAddress += ", " + DT.Rows[0]["pin_code"].ToString().Trim();

                    }

                    if (!string.IsNullOrEmpty(DT.Rows[0]["state_id"].ToString().Trim()))
                    {
                        AuthAddress += ", " + ddlFactoryState.SelectedItem.ToString();

                    }
                    txtAuthorisedPersonAddress.Text = AuthAddress;

                }
            }
        }
        catch (Exception ex)
        {
            //MSG.Text = ex.Message;
        }
    }

    private void DisableControls()
    {
        txtFirstName.Attributes.Add("readonly", "readonly");
        txtLastName.Attributes.Add("readonly", "readonly");
        txtEntityFirstName.Attributes.Add("readonly", "readonly");
        txtMobileNumber.Attributes.Add("readonly", "readonly");
        txtEmailId.Attributes.Add("readonly", "readonly");
        txtEntityPan.Attributes.Add("readonly", "readonly");


    }
    private void fillApplicantDetail()
    {
        setDS();
        try
        {
            DS = ITApplication.SelectApplicantDetail(UID);
            DT = DS.Tables[0];
            if (DT != null && DT.Rows.Count == 1)
            {


                if (!string.IsNullOrEmpty(DT.Rows[0]["first_name"].ToString().Trim()))
                {
                    txtFirstName.Text = DT.Rows[0]["first_name"].ToString().Trim();
                    lblackFirstName.Text = DT.Rows[0]["first_name"].ToString().Trim();
                }

                if (!string.IsNullOrEmpty(DT.Rows[0]["last_name"].ToString().Trim()))
                {
                    txtLastName.Text = DT.Rows[0]["last_name"].ToString().Trim();
                    lblackLastName.Text = DT.Rows[0]["last_name"].ToString().Trim();
                }

                if (!string.IsNullOrEmpty(DT.Rows[0]["entity_name"].ToString().Trim()))
                {
                    txtEntityFirstName.Text = DT.Rows[0]["entity_name"].ToString().Trim();
                    lblackEntityName.Text = DT.Rows[0]["entity_name"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["mobile_no"].ToString().Trim()))
                {
                    txtMobileNumber.Text = DT.Rows[0]["mobile_no"].ToString().Trim();
                    lblackMobile.Text = DT.Rows[0]["mobile_no"].ToString().Trim();
                }

                if (!string.IsNullOrEmpty(DT.Rows[0]["email_id"].ToString().Trim()))
                {
                    txtEmailId.Text = DT.Rows[0]["email_id"].ToString().Trim();
                    lblackEmail.Text = DT.Rows[0]["email_id"].ToString().Trim();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["entity_pan"].ToString().Trim()))
                {
                    hdnPanNo.Value = DT.Rows[0]["entity_pan"].ToString().Trim();
                    txtEntityPan.Text = DT.Rows[0]["entity_pan"].ToString().Trim();
                    lblackEntityPan.Text = DT.Rows[0]["entity_pan"].ToString().Trim();
                }

            }
            DisableControls();
        }
        catch (Exception ex)
        {
            //MSG.Text = ex.Message;
        }
    }


    private void InsertDetails()
    {
        string add1 = string.Empty;
        string add2 = string.Empty;
        string TelephoneNo = string.Empty;
        if (!string.IsNullOrEmpty(txtAddline1.Text))
        {
            add1 = txtAddline1.Text.Trim();
        }
        if (!string.IsNullOrEmpty(txtAddline2.Text))
        {
            add2 = txtAddline2.Text.Trim();
        }
        if (!string.IsNullOrEmpty(txtTelephoneNo.Text))
        {
            TelephoneNo = txtTelephoneNo.Text.Trim();
        }

        if (!string.IsNullOrEmpty(txtFirstName.Text) && !string.IsNullOrEmpty(txtLastName.Text) && !string.IsNullOrEmpty(txtMobileNumber.Text) && !string.IsNullOrEmpty(txtEmailId.Text) && !string.IsNullOrEmpty(txtPostalCode.Text) && !string.IsNullOrEmpty(txtAddline1.Text) && !string.IsNullOrEmpty(txtCity.Text) && ddlState.SelectedIndex > 0)
        {


            //if (fpIdentityProof.HasFiles)
            //{

            //    if (!string.IsNullOrEmpty(hdnPanNo.Value))
            //    {
            imgName = hdnPanNo.Value.ToString().Trim();
            //        imgPath = Server.MapPath("~/Upload/ITPolicy/");
            //        imgSize = fpIdentityProof.PostedFile.ContentLength;
            //        extension = Path.GetExtension(fpIdentityProof.FileName);
            //        imgName = imgName + extension;
            //        if (fpIdentityProof.PostedFile.ContentLength > 20971520)// file should be decribed here(e.g. 4 mb then 4MB -> 4 * 1024 * 1024)
            //        {
            //            //Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('File is too big.')", true);
            //            MSG.Text = "File is too big, Max file size allowed is 20 MB.";
            //            return;
            //        }
            //        if (extension != ".jpg" && extension != ".png" && extension != ".jpeg" && extension != ".pdf")
            //        {
            //            //Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Please choose only .jpg and .png image types!')", true);
            //            MSG.Text = "Please choose only .jpg and .png image types!";
            //            return;
            //        }
            //        if (File.Exists(Server.MapPath(Path.Combine("~/Upload/Draft/", imgName))))
            //        {
            //            //delete existing file
            //            File.Delete(Server.MapPath(Path.Combine("~/Upload/Draft/", imgName)));
            //        }

            //        //imgName = imgName + "_" + DateTime.Now.ToString("MM_dd_yyyy_HH_mm_ss");

            //        fpIdentityProof.SaveAs(Server.MapPath(Path.Combine("~/Upload/Draft/", imgName)));
            //    }



            //imgPath = Server.MapPath("~/Upload/ITPolicy/");
            //int Fileid = 0;
            //if (ViewState["IDProof"] != null && !ViewState["IDProof"].Equals("-1"))
            //{
            //    Fileid = Convert.ToInt32(ViewState["IDProof"].ToString());
            //}

            if (!string.IsNullOrEmpty(Session["Mode"] as string))
            {

                if (Session["Mode"].ToString().Trim() == "Insert")
                {



                    var tuple = ITApplication.InsertITApplication(UID, 1, 1, add1, add2, Convert.ToInt32(ddlState.SelectedValue.ToString()), txtPostalCode.Text.ToString(), TelephoneNo, txtCity.Text.ToString(), Convert.ToInt32(ddlIdentityProof.SelectedValue.ToString().Trim()), txtIDNo.Text);
                    //File_name = tuple.Item1;
                    AnnexureID = Convert.ToInt32(tuple.Item1);
                    ViewState["AnnexureID"] = AnnexureID;
                    ApplicationID = Convert.ToInt32(tuple.Item2);
                    ViewState["ApplicationID"] = ApplicationID;
                }
                else if (Session["Mode"].ToString().Trim() == "update")
                {
                    if (hdnapplicant_address_id != null)
                    {
                        if (!string.IsNullOrEmpty(Session["annexure_id"] as string))
                        {
                            AnnexureID = Convert.ToInt32(Session["annexure_id"].ToString());
                        }
                        if (!string.IsNullOrEmpty(Session["applicationid"] as string))
                        {
                            ApplicationID = Convert.ToInt32(Session["applicationid"].ToString());
                        }
                        //if (!string.IsNullOrEmpty(Session["applicant_id"] as string))
                        //{
                        //    ApplicantID = Convert.ToInt32(Session["applicant_id"].ToString());
                        //}
                        i = ITApplication.updateITApplication(AnnexureID, Convert.ToInt32(hdnapplicant_address_id.Value.ToString()), add1, add2, Convert.ToInt32(ddlState.SelectedValue.ToString()), txtPostalCode.Text.ToString(), TelephoneNo, txtCity.Text.ToString(), Convert.ToInt32(ddlIdentityProof.SelectedValue.ToString().Trim()), txtIDNo.Text);
                    }
                }

                //if (!string.IsNullOrEmpty(File_name))
                //{
                //    fpIdentityProof.SaveAs(Server.MapPath(Path.Combine("~/Upload/ITPolicy/", File_name)));
                //    File.Delete(Server.MapPath(Path.Combine("~/Upload/Draft/", imgName)));


                if (AnnexureID > 0 && ApplicationID > 0)
                {

                    linktabTitle2_Click(null, EventArgs.Empty);
                }

                //}

            }
            else
            {

                ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Enter Required Details.');", true);

            }



        }
    }



    protected void btnBasicReset_Click(object sender, EventArgs e)
    {
        ClearControls();
    }

    protected void btnBasicSave_Click(object sender, EventArgs e)
    {
        InsertDetails();
    }

    protected void linktabTitle1_Click(object sender, EventArgs e)
    {
        ShowHideDiv("tabBasicDetails");

    }

    protected void linktabTitle2_Click(object sender, EventArgs e)
    {
        ShowHideDiv("tabEntityDetails");
        //tabBasicDetails.Visible = false;
        //tabEntityDetails.Visible = true;

    }
    //protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    //{
    //    if (ViewState["ExistingDS"] != null)

    //    {

    //        DataSet ds1 = (DataSet)ViewState["ExistingDS"];

    //        DataTable dtCurrentTable = ds1.Tables[0];

    //        if (dtCurrentTable.Rows.Count == 1)
    //        {
    //            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Atleast one Director/Promotor Detail is required')", true);
    //            return;
    //        }


    //        dtCurrentTable.Rows[e.Item.ItemIndex].Delete();


    //        Repeater1.DataSource = dtCurrentTable;

    //        Repeater1.DataBind();
    //    }
    //}


    //private DataTable GetDirector()
    //{

    //    DataTable dtdirector = null;
    //    if (ViewState["directorid"] != null)
    //    {
    //        int directorid = Convert.ToInt32((ViewState["directorid"]));
    //        directorid++;
    //        ViewState["directorid"] = directorid;
    //    }
    //    else
    //    {
    //        ViewState["directorid"] = 1;
    //    }

    //    if (ViewState["DirectorTable"] == null)
    //    {
    //        dtdirector = new DataTable("DirectorTable");
    //        dtdirector.Columns.Add(new DataColumn("directorid", typeof(int)));
    //        dtdirector.Columns.Add(new DataColumn("director_name", typeof(string)));
    //        dtdirector.Columns.Add(new DataColumn("director_pan", typeof(string)));
    //        dtdirector.Columns.Add(new DataColumn("address", typeof(string)));
    //        dtdirector.Columns.Add(new DataColumn("phone_no", typeof(string)));
    //        dtdirector.Columns.Add(new DataColumn("email_id", typeof(string)));

    //        ViewState["DirectorTable"] = dtdirector;
    //    }
    //    else
    //    {
    //        dtdirector = (DataTable)ViewState["DirectorTable"];
    //    }
    //    DataRow dtRow = dtdirector.NewRow();

    //    dtRow["directorid"] = Convert.ToInt32(ViewState["directorid"]);
    //    dtRow["director_name"] = txtFirstName1.Text.Trim();
    //    dtRow["director_pan"] = txtPanNo1.Text.Trim();
    //    dtRow["address"] = txtDirectorAddress1.Text.Trim();
    //    dtRow["phone_no"] = txtMobileNumber1.Text.Trim();
    //    dtRow["email_id"] = txtEmailId1.Text.Trim();
    //    dtdirector.Rows.Add(dtRow);

    //    ViewState["DirectorTable"] = dtdirector;
    //    return dtdirector;
    //}

    protected void btnaddDirector_Click(object sender, EventArgs e)
    {

        //int rowIndex = 0;



        //if (ViewState["ExistingDS"] != null)

        //{
        //    DataSet ds1= (DataSet)ViewState["ExistingDS"];

        //    DataTable dtCurrentTable = ds1.Tables[0] ;

        //    DataRow drCurrentRow = dtCurrentTable.NewRow ();

        //    drCurrentRow[0] = "";

        //    drCurrentRow[1] = "";
        //    drCurrentRow[2] = "";
        //    drCurrentRow[3] = "";
        //    drCurrentRow[4] = "";
        //    dtCurrentTable.Rows.Add(drCurrentRow);


        //    Repeater1.DataSource = dtCurrentTable;

        //    Repeater1.DataBind();

        //      }

        //else

        //{

        //    Response.Write("ViewState is null");

        //}



        //Set Previous Data on Postbacks




    }

    //protected void AddData(object sender, EventArgs e)
    //{
    //    // int rowIndex = 0;
    //    DataSet ds1 = (DataSet)ViewState["ExistingDS"];
    //    DataTable dtcurrent1 = ds1.Tables[0];

    //    foreach (RepeaterItem item in Repeater1.Items)
    //    {
    //        TextBox txtFirstName = item.FindControl("txtFirstName") as TextBox;
    //        TextBox txtMobileNumber = item.FindControl("txtMobileNumber") as TextBox;
    //        TextBox txtEmailId = item.FindControl("txtEmailId") as TextBox;
    //        TextBox txtPanNo = item.FindControl("txtPanNo") as TextBox;
    //        TextBox txtDirectorAddress = item.FindControl("txtDirectorAddress") as TextBox;
    //        string DirectorName = txtFirstName.Text;
    //        string MobileNo = txtMobileNumber.Text;
    //        string Emailid = txtEmailId.Text;
    //        string PanNo = txtPanNo.Text;
    //        string DirectoreAddress = txtDirectorAddress.Text;




    //        DataRow drCurrentRow1 = dtcurrent1.Rows[item];
    //        drCurrentRow1[0] = DirectorName;

    //        drCurrentRow1[1] = MobileNo;
    //        drCurrentRow1[2] = Emailid;
    //        drCurrentRow1[3] = PanNo;
    //        drCurrentRow1[4] = DirectoreAddress;

    //    }


    //    DataRow drCurrentRow = dtcurrent1.NewRow();

    //    drCurrentRow[0] = "";

    //    drCurrentRow[1] = "";
    //    drCurrentRow[2] = "";
    //    drCurrentRow[3] = "";
    //    drCurrentRow[4] = "";
    //    dtcurrent1.Rows.Add(drCurrentRow);

    //    Repeater1.DataSource = dtcurrent1;
    //    Repeater1.DataBind();
    //    //    Repeater1.DataBind();

    //    //if (ViewState["ExistingDS"] != null)

    //    //{
    //    //    DataSet ds1 = (DataSet)ViewState["ExistingDS"];

    //    //    DataTable dtCurrentTable = ds1.Tables[0];

    //    //    DataRow drCurrentRow = dtCurrentTable.NewRow();

    //    //    drCurrentRow[0] = "";

    //    //    drCurrentRow[1] = "";
    //    //    drCurrentRow[2] = "";
    //    //    drCurrentRow[3] = "";
    //    //    drCurrentRow[4] = "";
    //    //    dtCurrentTable.Rows.Add(drCurrentRow);


    //    //    Repeater1.DataSource = dtCurrentTable;

    //    //    Repeater1.DataBind();

    //    //}

    //    //else

    //    //{

    //    //    Response.Write("ViewState is null");

    //    //}



    //    //Set Previous Data on Postbacks

    //}


    protected void linktabTitle3_Click(object sender, EventArgs e)
    {
        ShowHideDiv("tabAssistanceDetails");
    }
    protected void linktabTitle4_Click(object sender, EventArgs e)
    {
        ShowHideDiv("tabIncentiveDetails");
    }
    protected void linktabTitle5_Click(object sender, EventArgs e)
    {
        ShowHideDiv("tabacknowledge");
    }
    protected void linktabTitle6_Click(object sender, EventArgs e)
    {
        ShowHideDiv("tabDocUpload");
    }

    protected void chkOfficeAddsameCorrespondence_CheckedChanged(object sender, EventArgs e)
    {
        int AID = 0;
        if (chkOfficeAddsameCorrespondence.Checked)
        {
            if (ViewState["AnnexureID"] != null)
            {
                 AID = Convert.ToInt32(ViewState["AnnexureID"].ToString());
               
            }
            else if (!string.IsNullOrEmpty(Session["annexure_id"] as string))
            {
                AID = Convert.ToInt32(Session["annexure_id"].ToString());
            }
            fillcorrespondenceAddress(AID, "OfficeAdd");
        }
        else
        {
            txtOfficeAddress1.Text = "";
            txtOfficeAddress2.Text = "";
            txtOfficeCity.Text = "";
            txtOfficePostalCode.Text = "";
            ddlOfficeState.SelectedIndex = 0;
        }
    }

    protected void chkFactoryAddcheck_CheckedChanged(object sender, EventArgs e)
    {
        int AID = 0;
        if (chkFactoryAddcheck.Checked)
        {
            if (ViewState["AnnexureID"] != null)
            {
                 AID = Convert.ToInt32(ViewState["AnnexureID"].ToString());
               
            }
            else if (!string.IsNullOrEmpty(Session["annexure_id"] as string))
            {
                AID = Convert.ToInt32(Session["annexure_id"].ToString());
            }
            fillcorrespondenceAddress(AID, "FactoryAdd");
        }
        else
        {
            txtFactoryAdd1.Text = "";
            txtFactoryAdd2.Text = "";
            txtFactoryCity.Text = "";
            txtFactoryPostalCode.Text = "";
            ddlFactoryState.SelectedIndex = 0;
        }
    }
    protected void chkDirectorAddcheck_OnCheckedChanged(object sender, EventArgs e)
    {
        int AID = 0;

        if (chkDirectorAddcheck.Checked)
        {
            if (ViewState["AnnexureID"] != null)
            {
                 AID = Convert.ToInt32(ViewState["AnnexureID"].ToString());

            }
            else if (Session["Mode"].ToString().Trim() == "update")

            {
                if (!string.IsNullOrEmpty(Session["annexure_id"] as string))
                {
                    AID = Convert.ToInt32(Session["annexure_id"].ToString());
                }
            }
                    fillcorrespondenceAddress(AID, "DirectorAdd");
        }
        else
        {

            txtDirectorAddress.Text = "";

        }

    }

    protected void chkauthPersonAddress_CheckedChanged(object sender, EventArgs e)
    {
        int AID = 0;
        if (chkauthPersonAddress.Checked)
        {
            if (ViewState["AnnexureID"] != null)
            {
                 AID = Convert.ToInt32(ViewState["AnnexureID"].ToString());

            }
            else if (Session["Mode"].ToString().Trim() == "update")
            {

                if (!string.IsNullOrEmpty(Session["annexure_id"] as string))
                {
                    AID = Convert.ToInt32(Session["annexure_id"].ToString());
                }
            }
            fillcorrespondenceAddress(AID, "AuthorisedAdd");
        }
        else
        {
            txtAuthorisedPersonAddress.Text = "";
        }
    }

    protected void chkauthorisedPerson_CheckedChanged(object sender, EventArgs e)
    {
        setDS();
        try
        {
            DS = ITApplication.SelectApplicantDetail(UID);
            DT = DS.Tables[0];
            if (DT != null && DT.Rows.Count == 1)
            {
                if (!string.IsNullOrEmpty(DT.Rows[0]["first_name"].ToString().Trim()) && !string.IsNullOrEmpty(DT.Rows[0]["last_name"].ToString().Trim()))
                {
                    txtAuthorisedPersonFirstName.Text = DT.Rows[0]["first_name"].ToString().Trim() + " " + DT.Rows[0]["last_name"].ToString().Trim();
                }

                if (!string.IsNullOrEmpty(DT.Rows[0]["mobile_no"].ToString().Trim()))
                {
                    txtAuthorisedPersonMobileNo.Text = DT.Rows[0]["mobile_no"].ToString().Trim();
                }

                if (!string.IsNullOrEmpty(DT.Rows[0]["email_id"].ToString().Trim()))
                {
                    txtAuthorisedPersonEmail.Text = DT.Rows[0]["email_id"].ToString().Trim();
                }
            }
        }
        catch (Exception ex)
        {
            //MSG.Text = ex.Message;
        }
    }

    protected void btnIdentityUpload_Click(object sender, EventArgs e)
    {
        if (fpIdentityProof.HasFiles)
        {

            if (!string.IsNullOrEmpty(hdnPanNo.Value))
            {
                imgName = hdnPanNo.Value.ToString().Trim();
                imgPath = Server.MapPath("~/Upload/ITPolicy/");
                imgSize = fpIdentityProof.PostedFile.ContentLength;
                extension = Path.GetExtension(fpIdentityProof.FileName);
                ViewState["extension"] = extension;
                imgName = imgName + extension;
                if (fpIdentityProof.PostedFile.ContentLength > 20971520)// file should be decribed here(e.g. 4 mb then 4MB -> 4 * 1024 * 1024)
                {
                    //Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('File is too big.')", true);
                    MSG.Text = "File is too big, Max file size allowed is 20 MB.";
                    return;
                }
                if (extension != ".jpg" && extension != ".png" && extension != ".jpeg" && extension != ".pdf")
                {
                    //Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('Please choose only .jpg and .png image types!')", true);
                    MSG.Text = "Please choose only .jpg and .png image types!";
                    return;
                }
                if (File.Exists(Server.MapPath(Path.Combine("~/Upload/Draft/", imgName))))
                {
                    //delete existing file
                    File.Delete(Server.MapPath(Path.Combine("~/Upload/Draft/", imgName)));
                }

                //imgName = imgName + "_" + DateTime.Now.ToString("MM_dd_yyyy_HH_mm_ss");

                fpIdentityProof.SaveAs(Server.MapPath(Path.Combine("~/Upload/Draft/", imgName)));
            }

            //  i = ITApplication.InsertIDProofData(UID, extension, imgPath, imgSize);
            ViewState["IDProof"] = i;

        }

    }


    //private int SaveRepeaterDetails()
    //{
    //    int AnexID = 0;
    //    int count = 0;
    //    if (ViewState["AnnexureID"]!=null)
    //    {
    //        AnexID = Convert.ToInt32(ViewState["AnnexureID"].ToString());  
    //    }

    //    foreach (RepeaterItem item in Repeater1.Items)
    //    {
    //        TextBox txtFirstName = item.FindControl("txtFirstName") as TextBox;
    //        TextBox txtMobileNumber = item.FindControl("txtMobileNumber") as TextBox;
    //        TextBox txtEmailId = item.FindControl("txtEmailId") as TextBox;
    //        TextBox txtPanNo = item.FindControl("txtPanNo") as TextBox;
    //        TextBox txtDirectorAddress = item.FindControl("txtDirectorAddress") as TextBox;
    //        string DirectorName = txtFirstName.Text;
    //        string MobileNo = txtMobileNumber.Text;
    //        string Emailid = txtEmailId.Text;
    //        string PanNo = txtPanNo.Text;
    //        string DirectoreAddress = txtDirectorAddress.Text;

    //        if (!string.IsNullOrEmpty(DirectorName))
    //        {
    //            i = ITApplication.InsertDirectorDetails(AnexID, DirectorName, PanNo, MobileNo, Emailid, DirectoreAddress); 
    //        }
    //        count = count + 1;
    //    }
    //    //Bind Repeater again if required
    //    if (count == Repeater1.Items.Count)
    //    {
    //        return count;
    //    }
    //    else
    //    {
    //        return 0;
    //    }
    //}

    protected void btnEntitySave_Click(object sender, EventArgs e)
    {
        int AnexID = 0;
        int Entity_TypeID = 0;
        int EntityAddressid = 0;
        int OfficeAddressid = 0;
        int FactoryAddressid = 0;
        int AuthorizePersonAddressid = 0;
        if (ViewState["AnnexureID"] != null)
        {
            AnexID = Convert.ToInt32(ViewState["AnnexureID"].ToString());
        }
        if (ddlTypeOfEntity.SelectedIndex > 0)
        {
            Entity_TypeID = Convert.ToInt32(ddlTypeOfEntity.SelectedValue.ToString());
        }
        int c = 0;

        bool IsFactorySameAsCorrespondence = false;
        bool ISOfficeSameAsCorrespondense = false;
        bool ISAuthorizedSameApplicant = false;
        bool IsAuthorizedSameCorrespondence = false;
        if (chkFactoryAddcheck.Checked)
        {
            IsFactorySameAsCorrespondence = true;
        }
        if (chkOfficeAddsameCorrespondence.Checked)
        {
            ISOfficeSameAsCorrespondense = true;
        }

        if (chkauthorisedPerson.Checked)
        {
            ISAuthorizedSameApplicant = true;
        }
        if (chkauthPersonAddress.Checked)
        {
            IsAuthorizedSameCorrespondence = true;
        }
        //   int c = SaveRepeaterDetails();
        if (grdDirectorDetails.Rows.Count > 0)
        {

            if (!string.IsNullOrEmpty(Session["Mode"] as string))
            {

                
                 if (Session["Mode"].ToString().Trim() == "update")
                {

                    if (!string.IsNullOrEmpty(Session["annexure_id"] as string))
                    {
                        AnexID = Convert.ToInt32(Session["annexure_id"].ToString());
                    }
                    if (!string.IsNullOrEmpty(hdnEntityaddressid.Value))
                    {
                        EntityAddressid = Convert.ToInt32(hdnEntityaddressid.Value.ToString());
                    }
                    if (!string.IsNullOrEmpty(hdnOfficeaddressid.Value))
                    {
                        OfficeAddressid = Convert.ToInt32(hdnOfficeaddressid.Value.ToString());
                    }
                    if (!string.IsNullOrEmpty(hdnFactoryaddressid.Value))
                    {
                        FactoryAddressid = Convert.ToInt32(hdnFactoryaddressid.Value.ToString());
                    }
                    if (!string.IsNullOrEmpty(hdnAuthorisedPersonAddressID.Value))
                    {
                        AuthorizePersonAddressid = Convert.ToInt32(hdnAuthorisedPersonAddressID.Value.ToString());
                    }


                }


                i = ITApplication.InsertEntityDetails(AnexID, Entity_TypeID, string.IsNullOrEmpty(txtEntityMobileNo.Text) ? "" : txtEntityMobileNo.Text, string.IsNullOrEmpty(txtEntityEmailId.Text) ? "" : txtEntityEmailId.Text, string.IsNullOrEmpty(txtEntityTelephoneNo.Text) ? "" : txtEntityTelephoneNo.Text, string.IsNullOrEmpty(txtEntityFaxNo.Text) ? "" : txtEntityFaxNo.Text, string.IsNullOrEmpty(txtOfficeAddress1.Text) ? "" : txtOfficeAddress1.Text, string.IsNullOrEmpty(txtOfficeAddress2.Text) ? "" : txtOfficeAddress2.Text, string.IsNullOrEmpty(txtOfficePostalCode.Text) ? "" : txtOfficePostalCode.Text, string.IsNullOrEmpty(txtOfficeCity.Text) ? "" : txtOfficeCity.Text, Convert.ToInt32(ddlOfficeState.SelectedValue), string.IsNullOrEmpty(txtFactoryAdd1.Text) ? "" : txtFactoryAdd1.Text, string.IsNullOrEmpty(txtFactoryAdd2.Text) ? "" : txtFactoryAdd2.Text, string.IsNullOrEmpty(txtFactoryPostalCode.Text) ? "" : txtFactoryPostalCode.Text, string.IsNullOrEmpty(txtFactoryCity.Text) ? "" : txtFactoryCity.Text, Convert.ToInt32(ddlFactoryState.SelectedValue), string.IsNullOrEmpty(txtAuthorisedPersonFirstName.Text) ? "" : txtAuthorisedPersonFirstName.Text, string.IsNullOrEmpty(txtAuthorisedPersonDesignation.Text) ? "" : txtAuthorisedPersonDesignation.Text, string.IsNullOrEmpty(txtAuthorisedPersonMobileNo.Text) ? "" : txtAuthorisedPersonMobileNo.Text, string.IsNullOrEmpty(txtAuthorisedPersonEmail.Text) ? "" : txtAuthorisedPersonEmail.Text, string.IsNullOrEmpty(txtAuthorisedPersonAddress.Text) ? "" : txtAuthorisedPersonAddress.Text, UID, IsFactorySameAsCorrespondence, ISOfficeSameAsCorrespondense,txtRegistrationNo.Text,txtGSTIN.Text,txtIncorporationCerti.Text,ISAuthorizedSameApplicant,IsAuthorizedSameCorrespondence,EntityAddressid,OfficeAddressid,FactoryAddressid,AuthorizePersonAddressid);



                linktabTitle3_Click(null, EventArgs.Empty);
            }
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record is not inserted')", true);
            return;
        }

    }

    //protected void btnaddDirector_Click1(object sender, EventArgs e)
    //{
    //    DataTable dtdirector = new DataTable();
    //    dtdirector = GetDirector();

    //    if (ViewState["DirectorTable"] != null)
    //    {
    //        dtdirector = (DataTable)ViewState["DirectorTable"];


    //        Repeater1.DataSource = dtdirector;
    //        Repeater1.DataBind();
    //        Repeater1.Visible = true;
    //    }
    //    else
    //    {
    //        Repeater1.DataSource = null;
    //        Repeater1.DataBind();
    //        Repeater1.Visible = false;
    //    }
    //    txtFirstName1.Text = string.Empty;
    //    txtPanNo1.Text = string.Empty;
    //    txtDirectorAddress1.Text = string.Empty;
    //    txtMobileNumber1.Text = string.Empty;
    //    txtEmailId1.Text= string.Empty;
    //    chkauthorisedPerson.Checked = false;
    //}

    protected void ddlEntityAssistance_SelectedIndexChanged(object sender, EventArgs e)
    {
        ShowHideAssistanceSought(ddlEntityAssistance.SelectedValue.ToString().Trim());
    }


    private void FillAuthorisedDetailsACK(int annexureID)
    {
        setDS();
        try
        {
            DS = ITApplication.SelectAuthorisedDetailFromannexure(annexureID);
            DT = DS.Tables[0];
            if (DT != null && DT.Rows.Count > 0)
            {
                if (!string.IsNullOrEmpty(DT.Rows[0]["ISAuthorizedSameApplicant"].ToString()))
                {
                    bool ISAuthorizedSameApplicant = false;
                    ISAuthorizedSameApplicant = Convert.ToBoolean(DT.Rows[0]["ISAuthorizedSameApplicant"].ToString());
                    lblackIsAuthorisedSameAsApplicant.Text = ISAuthorizedSameApplicant.ToString();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["name"].ToString()))
                {
                    lblackAuthorisedPersonName.Text = DT.Rows[0]["name"].ToString();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["designation"].ToString()))
                {
                    lblackAuthorisedDesignation.Text = DT.Rows[0]["designation"].ToString();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["phone_no"].ToString()))
                {
                    lblackAuhthorisedMobile.Text = DT.Rows[0]["phone_no"].ToString();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["email_id"].ToString()))
                {
                    lblackAuthorisedEmail.Text = DT.Rows[0]["email_id"].ToString();
                }

                if (!string.IsNullOrEmpty(DT.Rows[0]["IsAuthorizedSameCorrespondence"].ToString()))
                {
                    bool IsAuthorizedSameCorrespondence = false;
                    IsAuthorizedSameCorrespondence = Convert.ToBoolean(DT.Rows[0]["IsAuthorizedSameCorrespondence"].ToString());
                    if(IsAuthorizedSameCorrespondence)
                    {
                        lblackIsAuthorisedAddressSameAsCorres.Text = "Yes";
                    }
                    else
                    {

                    }

                    lblackIsAuthorisedAddressSameAsCorres.Text = "No";
                }

                if (!string.IsNullOrEmpty(DT.Rows[0]["authorisedAddress"].ToString()))
                {
                   lblackAuthorisedAddress.Text= DT.Rows[0]["authorisedAddress"].ToString();
                }

                //if (!string.IsNullOrEmpty(DT.Rows[0]["address_id"].ToString()))
                //{
                //    hdnAuthorisedPersonAddressID.Value = DT.Rows[0]["address_id"].ToString();
                //}
            }
        }

        catch (Exception ex)
        {
            MSG.Text = ex.Message;
        }
    }
    private void FillAuthorisedDetails(int annexureID)
    {
        setDS();
        try
        {
            DS = ITApplication.SelectAuthorisedDetailFromannexure(annexureID);
            DT = DS.Tables[0];
            if (DT != null && DT.Rows.Count > 0)
            {
                if(!string.IsNullOrEmpty(DT.Rows[0]["ISAuthorizedSameApplicant"].ToString()))
                {
                    bool ISAuthorizedSameApplicant = false;
                    ISAuthorizedSameApplicant = Convert.ToBoolean(DT.Rows[0]["ISAuthorizedSameApplicant"].ToString()); 
                    if (ISAuthorizedSameApplicant == true)
                    {
                        chkauthorisedPerson.Checked = true;
                    }
                    else
                    {
                        chkauthorisedPerson.Checked = false;
                    }
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["name"].ToString()))
                {
                    txtAuthorisedPersonFirstName.Text = DT.Rows[0]["name"].ToString();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["designation"].ToString()))
                {
                    txtAuthorisedPersonDesignation.Text = DT.Rows[0]["designation"].ToString();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["phone_no"].ToString()))
                {
                    txtAuthorisedPersonMobileNo.Text = DT.Rows[0]["phone_no"].ToString();
                }
                if (!string.IsNullOrEmpty(DT.Rows[0]["email_id"].ToString()))
                {
                    txtAuthorisedPersonEmail.Text = DT.Rows[0]["email_id"].ToString();
                }

                if (!string.IsNullOrEmpty(DT.Rows[0]["IsAuthorizedSameCorrespondence"].ToString()))
                {
                    bool IsAuthorizedSameCorrespondence = false;
                    IsAuthorizedSameCorrespondence = Convert.ToBoolean(DT.Rows[0]["IsAuthorizedSameCorrespondence"].ToString());
                    if (IsAuthorizedSameCorrespondence == true)
                    {
                        chkauthPersonAddress.Checked = true;
                    }
                    else
                    {
                        chkauthPersonAddress.Checked = false;
                    }
                }

                if (!string.IsNullOrEmpty(DT.Rows[0]["authorisedAddress"].ToString()))
                {
                    txtAuthorisedPersonAddress.Text = DT.Rows[0]["authorisedAddress"].ToString();
                }

                if (!string.IsNullOrEmpty(DT.Rows[0]["address_id"].ToString()))
                {
                    hdnAuthorisedPersonAddressID.Value = DT.Rows[0]["address_id"].ToString();
                }
            }
        }

        catch (Exception ex)
        {
            MSG.Text = ex.Message;
        }
    }


    private void FillDirectorGridForACK(int annexureID)
    {
        setDS();
        try
        {


            DS = ITApplication.SelectDirectorAddress(annexureID);
            DT = DS.Tables[0];
            if (DT != null && DT.Rows.Count > 0)
            {
                RptDirector.DataSource = DS;

                RptDirector.DataBind();

                               

            }
            else
            {
                RptDirector.DataSource = null;
                RptDirector.DataBind();
            }

        }


        catch (Exception ex)
        {
            MSG.Text = ex.Message;
        }
    }

    private void fillGrid(int annexureID)
    {
        setDS();
        try
        {


            DS = ITApplication.SelectDirectorAddress(annexureID);
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
    private void ClearDirectorData()
    {
        txtDirectorFirstName.Text = "";
        txtDirectorMobileNumber.Text = "";
        txtDirectorPanNo.Text = "";
        txtDirectorEmailId.Text = "";
        txtDirectorAddress.Text = "";
        chkDirectorAddcheck.Checked = false;
    }
    protected void btnAddDirector_Click(object sender, EventArgs e)
    {
        int AnexID = 0;

        if (ViewState["AnnexureID"] != null)
        {
            AnexID = Convert.ToInt32(ViewState["AnnexureID"].ToString());
        }

        else if (Session["Mode"].ToString().Trim() == "update")

        {
            if (!string.IsNullOrEmpty(Session["annexure_id"] as string))
            {
                AnexID = Convert.ToInt32(Session["annexure_id"].ToString());
            }
        }
        string DirectorName = txtDirectorFirstName.Text;
        string MobileNo = txtDirectorMobileNumber.Text;
        string Emailid = txtDirectorEmailId.Text;
        string PanNo = txtDirectorPanNo.Text;
        string DirectoreAddress = string.Empty;
        bool IsDirectorSameAsCorrespondence = false;
        if (chkDirectorAddcheck.Checked)
        {
            IsDirectorSameAsCorrespondence = true;
        }
        if (!string.IsNullOrEmpty(txtDirectorAddress.Text))
        {
            DirectoreAddress = txtDirectorAddress.Text;
        }
        if (!string.IsNullOrEmpty(DirectorName))
        {
            if (btnAddDirector.Text == "Add Director / Promotor")
            {
                i = ITApplication.InsertDirectorDetails(AnexID, DirectorName, PanNo, MobileNo, Emailid, DirectoreAddress, IsDirectorSameAsCorrespondence);
            }
            else if (btnAddDirector.Text == "Edit Director / Promotor" && ViewState["DirectorID"] != null)
            {
                if (ViewState["DirectorID"] != null && !(string.IsNullOrEmpty(hdnaddressid.Value)))

                {

                    i = ITApplication.updateDirectorDetails(Convert.ToInt32(ViewState["DirectorID"]), Convert.ToInt32(hdnaddressid.Value), AnexID, DirectorName, PanNo, MobileNo, Emailid, DirectoreAddress, IsDirectorSameAsCorrespondence);
                }
            }
        }
        if (i > 0)
        {
            btnAddDirector.Text = "Add Director / Promotor";
            setDS();
            try
            {
                ClearDirectorData();
                fillGrid(AnexID);

            }
            catch (Exception ex)
            {
                MSG.Text = ex.Message;
            }
        }
    }

    private int InsertAssistanceUnitDetails(int AnexID, string UnitAddress, int UnitArea, int UnitAreaType, int Employment, int UID, decimal Investment, int AreaType, int ParkType, int BuiltUpParkArea, int BuiltUpParkAreaType, string ParkActivity, string EntityEnum, decimal expenditurePlanned, DateTime? DateForExibition, bool? is_availed_scheme, DateTime? availed_scheme_date, string research_topic, string assigning_organisation, string research_duration, string earlier_assistance_organisation,string exhibitionName)
    {

        i = ITApplication.InsertAssistanceUnitDetails(AnexID, UnitAddress, UnitArea, UnitAreaType, Employment, UID, Investment, AreaType, ParkType, BuiltUpParkArea, BuiltUpParkAreaType, ParkActivity, EntityEnum, expenditurePlanned, DateForExibition, is_availed_scheme, availed_scheme_date, research_topic, assigning_organisation, research_duration, earlier_assistance_organisation, exhibitionName);
        return i;
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
                    //setDS();
                    //DS = ITApplication.SelectDirectorsFromGrid(id);
                    //DT = DS.Tables[0];


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


                    Label lbl_AnnexureID = (Label)gvr.FindControl("lbl_AnnexureID");
                    hdnannexureid.Value = lbl_AnnexureID.Text;

                    Label lbl_IsDirectorSameAsCorrespondence = (Label)gvr.FindControl("lbl_IsDirectorSameAsCorrespondence");
                    if (lbl_IsDirectorSameAsCorrespondence.Text == "True")
                    {
                        chkDirectorAddcheck.Checked = true;
                    }
                    else if (lbl_IsDirectorSameAsCorrespondence.Text == "False")
                    {
                        chkDirectorAddcheck.Checked = false;
                    }



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

            Label lbl_AnnexureID = (Label)gvr1.FindControl("lbl_AnnexureID");
            hdnannexureid.Value = lbl_AnnexureID.Text;

            Label lbl_AddressID = (Label)gvr1.FindControl("lbl_AddressID");
            hdnaddressid.Value = lbl_AddressID.Text;

            if (id1 > 0)
            {
                if (!(string.IsNullOrEmpty(hdnannexureid.Value)) && !(string.IsNullOrEmpty(hdnaddressid.Value)))
                {
                    i = ITApplication.DeleteDirectorDetails(Convert.ToInt32(hdnannexureid.Value), id1, Convert.ToInt32(hdnaddressid.Value));
                }
                ScriptManager.RegisterStartupScript(this, GetType(),
                    "ServerControlScript", "Status detail deleted", true);
                fillGrid(Convert.ToInt32(ViewState["AnnexureID"].ToString()));
            }
            btnAddDirector.Text = "Add Director / Promotor";
        }
    }

    protected void btnAssistanceSave_Click(object sender, EventArgs e)
    {
        int anexid = 0;
        if (ViewState["AnnexureID"] != null)
        {
            anexid = Convert.ToInt32(ViewState["AnnexureID"].ToString());
        }
        string unitaddress = string.Empty;
        int unitarea = 0;
        int unitareaType = 0;
        int employment = 0;
        string exhibitionName = string.Empty;
        decimal Investment = 0;
        decimal expenditurePlanned = 0;
        int UnitType = 0;
        int parktype = 0;
        int buitupParkArea = 0;
        int buitupParkAreaType = 0;
        string ParkActivity = string.Empty;
        string EntityEnum = string.Empty;
        EntityEnum = ddlEntityAssistance.SelectedValue;
        ViewState["EntityEnum"] = EntityEnum;
        DateTime? DateForExibition = null;
        bool? is_availed_scheme = null;
        DateTime? availed_scheme_date = null;
        string research_topic = string.Empty;
        string assigning_organisation = string.Empty;
        string research_duration = string.Empty;
        string earlier_assistance_organisation = string.Empty;
        if (ddlEntityAssistance.SelectedValue == "IT_ITES_UNIT")
        {
            expenditurePlanned = 0;
            parktype = 0;
            ParkActivity = string.Empty;
            buitupParkArea = 0;
            buitupParkAreaType = 0;
            unitaddress = txtunitaddress.Text;
            unitarea = Convert.ToInt32(txtUnitArea.Text);
            unitareaType = Convert.ToInt32(ddlAreaType.SelectedValue);
            employment = Convert.ToInt32(txtEmployment.Text);
            Investment = Convert.ToDecimal(txtInvestment.Text);
            UnitType = Convert.ToInt32(rdUnitType.SelectedValue);
            DateForExibition = null;
            is_availed_scheme = null;
            availed_scheme_date = null;
        }
        else if (ddlEntityAssistance.SelectedValue == "IT_ITES_PARK")
        {
            expenditurePlanned = 0;
            employment = 0;
            UnitType = 0;
            unitaddress = txtParkLocation.Text;
            unitarea = Convert.ToInt32(txtTentativeParkArea.Text);
            unitareaType = Convert.ToInt32(ddlTentativeParkArea.SelectedValue);
            Investment = Convert.ToDecimal(txtParkProjectCost.Text);
            parktype = Convert.ToInt32(rdlParkType.SelectedValue);
            buitupParkArea = Convert.ToInt32(txtBuiltupParkArea.Text);
            buitupParkAreaType = Convert.ToInt32(ddlBuiltupParkArea.SelectedValue);
            ParkActivity = txtParkActivity.Text;
            DateForExibition = null;
            is_availed_scheme = null;
            availed_scheme_date = null;
        }

        else if (ddlEntityAssistance.SelectedValue == "R_AND_D_INSTITUTION")
        {
            expenditurePlanned = 0;
            employment = 0;
            UnitType = 0;
            unitaddress = txtRNDLocation.Text;
            unitarea = Convert.ToInt32(txtRNDTentativeArea.Text);
            unitareaType = Convert.ToInt32(ddlRNDTentativeAreaType.SelectedValue);
            Investment = Convert.ToDecimal(txtRNDTentativeCost.Text);
            parktype = 0;
            buitupParkArea = 0;
            buitupParkAreaType = 0;
            ParkActivity = string.Empty;
            DateForExibition = null;
            is_availed_scheme = null;
            availed_scheme_date = null;
        }
        else if (ddlEntityAssistance.SelectedValue == "FINISHING_SCHOOL")
        {
            expenditurePlanned = 0;
            employment = 0;
            UnitType = 0;
            unitaddress = txtFishingSchoolLocation.Text;
            unitarea = Convert.ToInt32(txtFishingschoolTentativeArea.Text);
            unitareaType = Convert.ToInt32(ddlFishingAreaType.SelectedValue);
            Investment = Convert.ToDecimal(txtFishingProjectCost.Text);
            parktype = 0;
            buitupParkArea = 0;
            buitupParkAreaType = 0;
            ParkActivity = txtFishingActivity.Text;
            DateForExibition = null;
            is_availed_scheme = null;
            availed_scheme_date = null;
        }
        else if (ddlEntityAssistance.SelectedValue == "IT_OR_ITES_INDUSTRY_ASSOCIATION")
        {
            employment = 0;
            UnitType = 0;
            unitaddress = string.Empty;
            unitarea = 0;
            unitareaType = 0;
            Investment = Convert.ToDecimal(txtIndustryAssociationAmount.Text);
            parktype = 0;
            buitupParkArea = 0;
            buitupParkAreaType = 0;
            ParkActivity = string.Empty;
            expenditurePlanned = Convert.ToDecimal(txtexpenditurePlanned.Text);
            exhibitionName = txtExhibitionname.Text;
            DateForExibition = Convert.ToDateTime(txtdateforExhibition.Text);

            if (rdlAvailAssistance.SelectedValue.ToString() == "1")
            {
                is_availed_scheme = true;
            }
            else if (rdlAvailAssistance.SelectedValue.ToString() == "0")
            {
                is_availed_scheme = false;
            }

            availed_scheme_date = Convert.ToDateTime(txtavailSchemeDate.Text);
        }
        else if (ddlEntityAssistance.SelectedValue == "CONTRACT_OR_SPONSORED_RESEARCH_WORK")
        {
            employment = 0;
            UnitType = 0;
            unitaddress = string.Empty;
            unitarea = 0;
            unitareaType = 0;
            Investment = Convert.ToDecimal(txtTotalCostforResearch.Text);
            parktype = 0;
            buitupParkArea = 0;
            buitupParkAreaType = 0;
            ParkActivity = string.Empty;
            expenditurePlanned = 0;
            DateForExibition = null;

            is_availed_scheme = null;
            availed_scheme_date = null;
            research_topic = txtResearchTopic.Text;
            assigning_organisation = txtResearchAssigningOrg.Text;
            research_duration = txtTotalduration.Text;
            earlier_assistance_organisation = txtOrgNameforAssistance.Text;
        }


        if (!string.IsNullOrEmpty(Session["Mode"] as string))
        {


            if (Session["Mode"].ToString().Trim() == "update")
            {

                if (!string.IsNullOrEmpty(Session["annexure_id"] as string))
                {
                    anexid = Convert.ToInt32(Session["annexure_id"].ToString());
                }
            }



            i = InsertAssistanceUnitDetails(anexid, unitaddress, unitarea, unitareaType, employment, UID, Investment, UnitType, parktype, buitupParkArea, buitupParkAreaType, ParkActivity, EntityEnum, expenditurePlanned, DateForExibition, is_availed_scheme, availed_scheme_date, research_topic, assigning_organisation, research_duration, earlier_assistance_organisation, exhibitionName);
            if (i > 0)
            {
                if (ViewState["EntityEnum"] != null)
                {
                    string EntityEnum1 = ViewState["EntityEnum"].ToString();
                    fillIncentiveDetails(anexid, EntityEnum1);
                }

                linktabTitle4_Click(null, EventArgs.Empty);
            }
        }
    }

    protected void btnIncentiveSave_Click(object sender, EventArgs e)
    {
        int anexid = 0;
        int count = 0;
        if (ViewState["AnnexureID"] != null)
        {
            anexid = Convert.ToInt32(ViewState["AnnexureID"].ToString());
        }


        if (Session["Mode"].ToString().Trim() == "update")
        {

            if (!string.IsNullOrEmpty(Session["annexure_id"] as string))
            {
                anexid = Convert.ToInt32(Session["annexure_id"].ToString());
            }
        }


            foreach (GridViewRow row in grdIncentive.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {
                CheckBox chkRow = (row.Cells[0].FindControl("chkRow") as CheckBox);
                if (chkRow.Checked)
                {

                    int incentiveid = Convert.ToInt32((row.Cells[0].FindControl("lbl_ID") as Label).Text);
                    decimal Assistance_amount = Convert.ToDecimal((row.Cells[4].FindControl("txtAssistanceAmount") as TextBox).Text);
                    i = ITApplication.InsertIncentiveDetail(anexid, incentiveid, Assistance_amount, UID);
                    if (i > 0)
                    {
                        count = count + 1;
                    }
                }
            }
        }

        linktabTitle6_Click(null, EventArgs.Empty);
    }

    protected void chkAgreementCheck_CheckedChanged(object sender, EventArgs e)
    {

    }



    protected void btnSubmitAnnexure1_Click(object sender, EventArgs e)
    {
        if (chkAgreementCheck.Checked)
        {
            int anexid = 0;
            int applicationid = 0;

            if (Session["Mode"].ToString().Trim() == "insert")
            {
                if (ViewState["AnnexureID"] != null)
                {
                    anexid = Convert.ToInt32(ViewState["AnnexureID"].ToString());
                }

                if (ViewState["ApplicationID"]!=null)
                {
                    applicationid = Convert.ToInt32(ViewState["ApplicationID"].ToString());
                }
            }


            if (Session["Mode"].ToString().Trim() == "update")
            {

                if (!string.IsNullOrEmpty(Session["annexure_id"] as string))
                {
                    anexid = Convert.ToInt32(Session["annexure_id"].ToString());
                }
                if (!string.IsNullOrEmpty(Session["applicationid"] as string))
                {
                    applicationid = Convert.ToInt32(Session["applicationid"].ToString());
                }
            }


            i = ITApplication.SubmitAnnexure1(anexid,applicationid,UID);

            ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Your Application is Submitted Successfully');", true);
            Session["UID"] = UID;
            Response.Redirect("MyApplicationIT.aspx");

        }
        else
        {
            ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Please check Self Declaration.');", true);
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
                    if (!string.IsNullOrEmpty(Session["annexure_id"] as string) && !string.IsNullOrEmpty(Session["applicationid"] as string))
                    {
                        anexid = Convert.ToInt32(Session["annexure_id"].ToString());
                        appID = Convert.ToInt32(Session["applicationid"].ToString());
                    }
                }
            }
            else
            {


                if (ViewState["AnnexureID"] != null)
                {
                    anexid = Convert.ToInt32(ViewState["AnnexureID"].ToString());
                }

                if (ViewState["ApplicationID"] != null)
                {
                    appID = Convert.ToInt32(ViewState["ApplicationID"].ToString());
                }
            }
            result = ITApplication.InsertIDProofData(UID, extension, imgPath, imgSize, appID, anexid, UploadType);
           
        }
        return result;
    }

    protected void btnIdentityUpload1_Click(object sender, EventArgs e)
    {
        string res = string.Empty;
        
        res = uploadFile(fpIdentityProof1, "IDProof");
        if (!string.IsNullOrEmpty(res))
        {
            hdnIDproofFilename.Value =  res;
            fpIdentityProof1.SaveAs(Server.MapPath(Path.Combine("~/Upload/ITPolicy/", res)));
            lnkviewIDprrof.Visible = true;
        }
    }

    protected void btnPANUpload_Click(object sender, EventArgs e)
    {

        string res = string.Empty;
        res = uploadFile(fpPANCard1, "PANCard");
        if (!string.IsNullOrEmpty(res))
        {
            hdnPANfilename.Value = "~/Upload/ITPolicy/" + res;
            fpPANCard1.SaveAs(Server.MapPath(Path.Combine("~/Upload/ITPolicy/", res)));
            lnkviewPANCard.Visible = true;
        }

    }

    protected void btnuploadPartnershipdeed_Click(object sender, EventArgs e)
    {
        string res = string.Empty;
        res = uploadFile(fpPartnershipdeed1, "Partnershipdeed");
        if (!string.IsNullOrEmpty(res))
        {
            hdnPartnershipfilename.Value = "~/Upload/ITPolicy/" + res;
            fpPartnershipdeed1.SaveAs(Server.MapPath(Path.Combine("~/Upload/ITPolicy/", res)));
            lnkPartnershipdeed.Visible = true;
        }

    }

    protected void btnuploadMemorandum_Click(object sender, EventArgs e)
    {
        string res = string.Empty;
        res = uploadFile(fpMemorandum1, "Memorandum");
        if (!string.IsNullOrEmpty(res))
        {
            hdnfpMemorandumfilename.Value = "~/Upload/ITPolicy/" + res;
            fpMemorandum1.SaveAs(Server.MapPath(Path.Combine("~/Upload/ITPolicy/", res)));
            lnkMemorandum.Visible = true;
        }
    }

    protected void btnuploadRegistration_Click(object sender, EventArgs e)
    {
        string res = string.Empty;
        res = uploadFile(fpregistration, "Registration");
        if (!string.IsNullOrEmpty(res))
        {
            hdnfpregistrationfilename.Value = "~/Upload/ITPolicy/" + res;
            fpregistration.SaveAs(Server.MapPath(Path.Combine("~/Upload/ITPolicy/", res)));
            lnkreg.Visible = true;
        }
    }

    protected void btnuploadincorporation_Click(object sender, EventArgs e)
    {
        string res = string.Empty;
        res = uploadFile(fpincorporation, "incorporation");
        if (!string.IsNullOrEmpty(res))
        {
            hdnfpincorporationfilename.Value = "~/Upload/ITPolicy/" + res;
            fpincorporation.SaveAs(Server.MapPath(Path.Combine("~/Upload/ITPolicy/", res)));
            lnkCorporation.Visible = true;
        }
    }

    protected void btnUploadGST_Click(object sender, EventArgs e)
    {
        string res = string.Empty;
        res = uploadFile(fpGST, "GST");
        if (!string.IsNullOrEmpty(res))
        {
            hdnfpGSTfilename.Value = "~/Upload/ITPolicy/" + res;
            fpGST.SaveAs(Server.MapPath(Path.Combine("~/Upload/ITPolicy/", res)));
            lnkGST.Visible = true;
        }
    }

    protected void btnuploadCACertificate_Click(object sender, EventArgs e)
    {
        string res = string.Empty;
        res = uploadFile(fpCACertificate, "CACerti");
        if (!string.IsNullOrEmpty(res))
        {
            hdnfpCACertificatefilename.Value = "~/Upload/ITPolicy/" + res;
            fpCACertificate.SaveAs(Server.MapPath(Path.Combine("~/Upload/ITPolicy/", res)));
            lnkCACertificate.Visible = true;
        }
    }

    private void ViewDoc(HiddenField hdnfield )
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
    protected void lnkviewIDprrof_Click(object sender, EventArgs e)
    {
        HiddenField hdn = new HiddenField();

        if (Session["Mode"].ToString()=="" ||  string.IsNullOrEmpty(ViewState["IDProof"].ToString()))
        {
            
            hdn.Value = "~/Upload/ITPolicy/" + hdnIDproofFilename.Value.ToString() ;
        }
        else
        {
            hdn.Value = "~/Upload/ITPolicy/"+ ViewState["IDProof"].ToString();
        }

        ViewDoc(hdn);
    }

    protected void lnkviewPANCard_Click(object sender, EventArgs e)
    {
        HiddenField hdn = new HiddenField();

        if (Session["Mode"].ToString() == "" && string.IsNullOrEmpty(ViewState["PanCard"].ToString()))
        {

            hdn.Value = "~/Upload/ITPolicy/" + hdnPANfilename.Value.ToString();
        }
        else
        {
            hdn.Value = "~/Upload/ITPolicy/" + ViewState["PanCard"].ToString();
        }
        ViewDoc(hdn);
    }

    protected void lnkPartnershipdeed_Click(object sender, EventArgs e)
    {


        HiddenField hdn = new HiddenField();

        if (Session["Mode"].ToString() == "" || string.IsNullOrEmpty(ViewState["Partnership"].ToString()))
        {

            hdn.Value = "~/Upload/ITPolicy/" + hdnPartnershipfilename.Value.ToString();
        }
        else
        {
            hdn.Value = "~/Upload/ITPolicy/" + ViewState["Partnership"].ToString();
        }
        ViewDoc(hdn);


       
    }

    protected void lnkMemorandum_Click(object sender, EventArgs e)
    {
        HiddenField hdn = new HiddenField();

        if (Session["Mode"].ToString() == "" || string.IsNullOrEmpty(ViewState["Memorandum"].ToString()))
        {

            hdn.Value = "~/Upload/ITPolicy/" + hdnfpMemorandumfilename.Value.ToString();
        }
        else
        {
            hdn.Value = "~/Upload/ITPolicy/" + ViewState["Memorandum"].ToString();
        }
        ViewDoc(hdn);

   }

    protected void lnkreg_Click(object sender, EventArgs e)
    {
        HiddenField hdn = new HiddenField();

        if (Session["Mode"].ToString() == "" || string.IsNullOrEmpty(ViewState["Registration"].ToString()))
        {

            hdn.Value = "~/Upload/ITPolicy/" + hdnfpregistrationfilename.Value.ToString();
        }
        else
        {
            hdn.Value = "~/Upload/ITPolicy/" + ViewState["Registration"].ToString();
        }
        ViewDoc(hdn);
      
    }

    protected void lnkCorporation_Click(object sender, EventArgs e)
    {
        HiddenField hdn = new HiddenField();

        if (Session["Mode"].ToString() == "" || string.IsNullOrEmpty(ViewState["Incorporation"].ToString()))
        {

            hdn.Value = "~/Upload/ITPolicy/" + hdnfpincorporationfilename.Value.ToString();
        }
        else
        {
            hdn.Value = "~/Upload/ITPolicy/" + ViewState["Incorporation"].ToString();
        }
        ViewDoc(hdn);
      
    }

    protected void lnkGST_Click(object sender, EventArgs e)
    {

        HiddenField hdn = new HiddenField();

        if (Session["Mode"].ToString() == "" || string.IsNullOrEmpty(ViewState["GST"].ToString()))
        {

            hdn.Value = "~/Upload/ITPolicy/" + hdnfpGSTfilename.Value.ToString();
        }
        else
        {
            hdn.Value = "~/Upload/ITPolicy/" + ViewState["GST"].ToString();
        }
        ViewDoc(hdn);
       
    }

    protected void lnkCACertificate_Click(object sender, EventArgs e)
    {
        HiddenField hdn = new HiddenField();

        if (Session["Mode"].ToString() == "" || string.IsNullOrEmpty(ViewState["CA"].ToString()))
        {

            hdn.Value = "~/Upload/ITPolicy/" + hdnfpCACertificatefilename.Value.ToString();
        }
        else
        {
            hdn.Value = "~/Upload/ITPolicy/" + ViewState["CA"].ToString();
        }
        ViewDoc(hdn);
               
    }

    protected void btnRequiredDoc_Click(object sender, EventArgs e)
    {
        linktabTitle5_Click(null, EventArgs.Empty);
        

    }
}