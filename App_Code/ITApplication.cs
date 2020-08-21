using System;
using System.Data;
using System.Data.Common;
using Microsoft.Practices.EnterpriseLibrary.Data;

/// <summary>
/// Summary description for ITApplication
/// </summary>
namespace DbFactory
{
    public class ITApplication
    {
        public ITApplication()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        public static DataSet SelectIdentityProof()
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            //Database db = DatabaseFactory.CreateDatabase();
            DbCommand dbCommand = db.GetStoredProcCommand("usp_getIdentityProof");
          
            return db.ExecuteDataSet(dbCommand);
        }



        public static DataSet SelectEntityType()
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            //Database db = DatabaseFactory.CreateDatabase();
            DbCommand dbCommand = db.GetStoredProcCommand("usp_getEntityType");

            return db.ExecuteDataSet(dbCommand);
        }


        public static DataSet SelectState()
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            //Database db = DatabaseFactory.CreateDatabase();
            DbCommand dbCommand = db.GetStoredProcCommand("usp_getState");

            return db.ExecuteDataSet(dbCommand);
        }
        public static DataSet SelectCommonValue(string groupEnum)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            //Database db = DatabaseFactory.CreateDatabase();
            DbCommand dbCommand = db.GetStoredProcCommand("USP_GET_COMMONVALUE");
            db.AddInParameter(dbCommand, "group_enum ", DbType.String , groupEnum);
            return db.ExecuteDataSet(dbCommand);
        }


        public static DataSet SelectAuthorisedDetailFromannexure(int AnnexureID)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            //Database db = DatabaseFactory.CreateDatabase();
            DbCommand dbCommand = db.GetStoredProcCommand("usp_get_authorisedPersonDetails");
            db.AddInParameter(dbCommand, "@AnnexureID", DbType.Int32, AnnexureID);
            return db.ExecuteDataSet(dbCommand);
        }

        public static DataSet SelectApplicantDetail(int ApplicationID)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            //Database db = DatabaseFactory.CreateDatabase();
            DbCommand dbCommand = db.GetStoredProcCommand("usp_getApplicantdata_ITAnnexure3A");
            db.AddInParameter(dbCommand, "ApplicationID", DbType.Int32, ApplicationID);
            return db.ExecuteDataSet(dbCommand);
        }



        public static DataSet SelectCorrespondenceadress(int annexureID)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            //Database db = DatabaseFactory.CreateDatabase();
            DbCommand dbCommand = db.GetStoredProcCommand("usp_getcorrespondenceadress");
            db.AddInParameter(dbCommand, "annexureID", DbType.Int32, annexureID);
            return db.ExecuteDataSet(dbCommand);
        }


        public static DataSet SelectDirectorAddress(int annexureID)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            //Database db = DatabaseFactory.CreateDatabase();
            DbCommand dbCommand = db.GetStoredProcCommand("usp_select_directorAddress");
            db.AddInParameter(dbCommand, "annexureID", DbType.Int32, annexureID);
            return db.ExecuteDataSet(dbCommand);
        }

        public static DataSet SelectDirectorsFromGrid(int id)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            //Database db = DatabaseFactory.CreateDatabase();
            DbCommand dbCommand = db.GetStoredProcCommand("usp_select_directorAddressbyID");
            db.AddInParameter(dbCommand, "DirectorID", DbType.Int32, id);
            return db.ExecuteDataSet(dbCommand);
        }


        public static DataSet SelectIncentiveDetails(int annex1_id,string EntityEnum)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            //Database db = DatabaseFactory.CreateDatabase();
            DbCommand dbCommand = db.GetStoredProcCommand("usp_get_annexure1_Incentive");
            db.AddInParameter(dbCommand, "annex1_id", DbType.Int32, annex1_id);
            db.AddInParameter(dbCommand, "EntityEnum", DbType.String, EntityEnum);
            return db.ExecuteDataSet(dbCommand);
        }
        public static DataSet SelectIncentiveDetailsACK(int annex1_id, string EntityEnum)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            //Database db = DatabaseFactory.CreateDatabase();
            DbCommand dbCommand = db.GetStoredProcCommand("usp_get_annexure1_IncentiveACK");
            db.AddInParameter(dbCommand, "annex1_id", DbType.Int32, annex1_id);
            db.AddInParameter(dbCommand, "EntityEnum", DbType.String, EntityEnum);
            return db.ExecuteDataSet(dbCommand);
        }
        public static DataSet BindAlldata(int annexureid, int applicationid, int applicantid)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            //Database db = DatabaseFactory.CreateDatabase();
            DbCommand dbCommand = db.GetStoredProcCommand("usp_get_all_data");
            db.AddInParameter(dbCommand, "annexureid", DbType.Int32, annexureid);
            db.AddInParameter(dbCommand, "applicationid", DbType.Int32, applicationid);
            db.AddInParameter(dbCommand, "applicantid", DbType.Int32, applicantid);
            return db.ExecuteDataSet(dbCommand);
        }

        public static DataSet BindAlldataForAck(int annexureid, int applicationid, int applicantid)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            //Database db = DatabaseFactory.CreateDatabase();
            DbCommand dbCommand = db.GetStoredProcCommand("usp_get_all_data_acknowledge");
            db.AddInParameter(dbCommand, "annexureid", DbType.Int32, annexureid);
            db.AddInParameter(dbCommand, "applicationid", DbType.Int32, applicationid);
            db.AddInParameter(dbCommand, "applicantid", DbType.Int32, applicantid);
            return db.ExecuteDataSet(dbCommand);
        }
        public static DataSet SelectEntityAssistance()
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            //Database db = DatabaseFactory.CreateDatabase();
            DbCommand dbCommand = db.GetStoredProcCommand("usp_get_Entity_Assistance");
            return db.ExecuteDataSet(dbCommand);
        }



        public static Tuple<string,string> InsertITApplication(int applicant_id,int policy_id,int status_id,string address_line_1,string address_line_2,int state_id,string pin_code,string telephone_number,string city,int IdentityProof_id,/*int fileID,*/ string applicant_id_proof_number)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            DbCommand dbCommand = db.GetStoredProcCommand("usp_insert_application_master");
            db.AddInParameter(dbCommand, "applicant_id", DbType.Int32, applicant_id);
            db.AddInParameter(dbCommand, "policy_id", DbType.Int32, policy_id);
            db.AddInParameter(dbCommand, "status_id", DbType.Int32, status_id);
            db.AddInParameter(dbCommand, "address_line_1", DbType.String , address_line_1);
            db.AddInParameter(dbCommand, "address_line_2", DbType.String, address_line_2);
            db.AddInParameter(dbCommand, "state_id", DbType.Int32, state_id);
            db.AddInParameter(dbCommand, "pin_code", DbType.String, pin_code);
            db.AddInParameter(dbCommand, "telephone_number", DbType.String, telephone_number);
            db.AddInParameter(dbCommand, "city", DbType.String, city);
            db.AddInParameter(dbCommand, "IdentityProof_id", DbType.Int32, IdentityProof_id);
            db.AddInParameter(dbCommand, "applicant_id_proof_number", DbType.String, applicant_id_proof_number);
         //   db.AddInParameter(dbCommand, "fileID", DbType.Int32, fileID);
          
            db.AddOutParameter(dbCommand, "AnnexureID", DbType.Int32, 4);
            //db.AddOutParameter(dbCommand, "Fname", DbType.String, 100);
            db.AddOutParameter(dbCommand, "applicationID", DbType.Int32, 4);
            db.ExecuteNonQuery(dbCommand);
            //string Fname = db.GetParameterValue(dbCommand, "Fname").ToString() ;
            string AnnexureID = db.GetParameterValue(dbCommand, "AnnexureID").ToString();
            string ApplicationID = db.GetParameterValue(dbCommand, "applicationID").ToString();

            //= Convert.ToInt32(db.ExecuteNonQuery(dbCommand));

            return new Tuple<string, string> (AnnexureID, ApplicationID);

        }




        public static int updateITApplication(int Annexureid, int applicant_address_id, string address_line_1, string address_line_2, int state_id, string pin_code, string telephone_number, string city, int IdentityProof_id, string applicant_id_proof_number)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            DbCommand dbCommand = db.GetStoredProcCommand("usp_update_application_master");
            db.AddInParameter(dbCommand, "annexure_id", DbType.Int32, Annexureid);
            db.AddInParameter(dbCommand, "applicant_address_id", DbType.Int32, applicant_address_id);
            db.AddInParameter(dbCommand, "address_line_1 ", DbType.String, address_line_1);
            db.AddInParameter(dbCommand, "address_line_2 ", DbType.String, address_line_2);
            db.AddInParameter(dbCommand, "state_id ", DbType.Int32, state_id);
            db.AddInParameter(dbCommand, "pin_code", DbType.String, pin_code);
            db.AddInParameter(dbCommand, "telephone_number", DbType.String, telephone_number);
            db.AddInParameter(dbCommand, "city", DbType.String, city);
            db.AddInParameter(dbCommand, "IdentityProof_id", DbType.Int32, IdentityProof_id);

            db.AddInParameter(dbCommand, "applicant_id_proof_number", DbType.String, applicant_id_proof_number);
            int returnValue = Convert.ToInt32(db.ExecuteNonQuery(dbCommand));

            return returnValue;


        }




        public static string InsertIDProofData(int applicant_id, string Ext, string file_path,  int file_size,int applicationID,int annexure_id,string uploadType)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            DbCommand dbCommand = db.GetStoredProcCommand("usp_insert_IDProofAnnexure1");
            db.AddInParameter(dbCommand, "applicant_id", DbType.Int32, applicant_id);
            db.AddInParameter(dbCommand, "Ext", DbType.String, Ext);
            db.AddInParameter(dbCommand, "applicationID", DbType.Int32, applicationID);
            db.AddInParameter(dbCommand, "file_path", DbType.String, file_path);
            db.AddInParameter(dbCommand, "file_size", DbType.Int32, file_size);
            db.AddInParameter(dbCommand, "annexure_id", DbType.Int32, annexure_id);
            db.AddInParameter(dbCommand, "uploadType", DbType.String, uploadType);
            db.AddOutParameter(dbCommand, "file_name", DbType.String, 100);
            db.ExecuteNonQuery(dbCommand);
            string returnValue = db.GetParameterValue(dbCommand, "file_name").ToString ();

            //= Convert.ToInt32(db.ExecuteNonQuery(dbCommand));

            return returnValue;

        }




        public static int InsertDirectorDetails(int Annexureid,string director_name,string director_pan,string director_mobileNo,string director_email_id,string Director_addressline1,bool ? IsDirectorSameAsCorrespondence)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            DbCommand dbCommand = db.GetStoredProcCommand("add_Directore_Detail_annexure1");
            db.AddInParameter(dbCommand, "annexure_id", DbType.Int32, Annexureid);
            db.AddInParameter(dbCommand, "director_name", DbType.String, director_name);

            db.AddInParameter(dbCommand, "director_pan", DbType.String, director_pan);
            db.AddInParameter(dbCommand, "director_mobileNo", DbType.String, director_mobileNo);
            db.AddInParameter(dbCommand, "director_email_id", DbType.String, director_email_id);
            db.AddInParameter(dbCommand, "Director_addressline1", DbType.String, Director_addressline1);
            db.AddInParameter(dbCommand, "IsDirectorSameAsCorrespondence", DbType.Boolean, IsDirectorSameAsCorrespondence);
            int returnValue = Convert.ToInt32(db.ExecuteNonQuery(dbCommand));

            return returnValue;


        }


        public static int updateDirectorDetails(int id,int addressid,int Annexureid, string director_name, string director_pan, string director_mobileNo, string director_email_id, string Director_addressline1, bool? IsDirectorSameAsCorrespondence)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            DbCommand dbCommand = db.GetStoredProcCommand("usp_update_Directore_Detail_annexure1");

            db.AddInParameter(dbCommand, "id", DbType.Int32, id);
            db.AddInParameter(dbCommand, "Director_addressid", DbType.Int32, addressid);
            db.AddInParameter(dbCommand, "annexure_id", DbType.Int32, Annexureid);
            db.AddInParameter(dbCommand, "director_name", DbType.String, director_name);
            db.AddInParameter(dbCommand, "director_pan", DbType.String, director_pan);
            db.AddInParameter(dbCommand, "director_mobileNo", DbType.String, director_mobileNo);
            db.AddInParameter(dbCommand, "director_email_id", DbType.String, director_email_id);
            db.AddInParameter(dbCommand, "Director_addressline1", DbType.String, Director_addressline1);
            db.AddInParameter(dbCommand, "IsDirectorSameAsCorrespondence", DbType.Boolean, IsDirectorSameAsCorrespondence);
            int returnValue = Convert.ToInt32(db.ExecuteNonQuery(dbCommand));

            return returnValue;


        }



        public static int DeleteDirectorDetails(int Annexureid,int id,int addressid)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            DbCommand dbCommand = db.GetStoredProcCommand("usp_Delete_Directore_Detail_annexure1");
            db.AddInParameter(dbCommand, "annexure_id", DbType.Int32, Annexureid);
            db.AddInParameter(dbCommand, "Director_addressid", DbType.Int32, addressid);
            db.AddInParameter(dbCommand, "id", DbType.Int32, id);
            int returnValue = Convert.ToInt32(db.ExecuteNonQuery(dbCommand));

            return returnValue;
          }


        public static int InsertEntityDetails(int annexure_id, int entity_type_id,string entity_mobileno,string entity_email_id,string telephone_number,string fax_number,string office_address_line_1,string office_address_line_2,string office_pin_code,string office_city,int office_state_id,string Factory_address_line_1,string Factory_address_line_2,string Factory_pin_code,string Factory_city,int Factory_state_id,string name,string designation,string phone_no,string email_id,string authorize_person_address,int applicant_id,bool ? IsFactorySameAsCorrespondence,bool ? ISOfficeSameAsCorrespondense,string Registration_No,string gst_number,string incorporation_certificate_number,bool? ISAuthorizedSameApplicant,bool? IsAuthorizedSameCorrespondence,int entity_address_id,int Office_address_id,int factory_address_id,int AuthorizePerson_address_id)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            DbCommand dbCommand = db.GetStoredProcCommand("usp_insert_EntityDetails");
            db.AddInParameter(dbCommand, "annexure_id", DbType.Int32, annexure_id);
            db.AddInParameter(dbCommand, "entity_type_id", DbType.Int32, entity_type_id);

            db.AddInParameter(dbCommand, "entity_mobileno", DbType.String, entity_mobileno);
            db.AddInParameter(dbCommand, "entity_email_id", DbType.String, entity_email_id);
            db.AddInParameter(dbCommand, "telephone_number", DbType.String, telephone_number);
            db.AddInParameter(dbCommand, "fax_number", DbType.String, fax_number);
            db.AddInParameter(dbCommand, "office_address_line_1", DbType.String, office_address_line_1);
            db.AddInParameter(dbCommand, "office_address_line_2", DbType.String, office_address_line_2);
            db.AddInParameter(dbCommand, "office_pin_code", DbType.String, office_pin_code);
            db.AddInParameter(dbCommand, "office_city", DbType.String, office_city);

            db.AddInParameter(dbCommand, "office_state_id", DbType.Int32, office_state_id);
            db.AddInParameter(dbCommand, "Factory_address_line_1", DbType.String, Factory_address_line_1);
            db.AddInParameter(dbCommand, "Factory_address_line_2", DbType.String, Factory_address_line_2);
            db.AddInParameter(dbCommand, "Factory_pin_code", DbType.String, Factory_pin_code);
            db.AddInParameter(dbCommand, "Factory_city", DbType.String, Factory_city);
            db.AddInParameter(dbCommand, "Factory_state_id", DbType.Int32, Factory_state_id);
            db.AddInParameter(dbCommand, "name", DbType.String, name);
            db.AddInParameter(dbCommand, "designation", DbType.String, designation);
            db.AddInParameter(dbCommand, "phone_no", DbType.String, phone_no);
            db.AddInParameter(dbCommand, "email_id", DbType.String, email_id);
            db.AddInParameter(dbCommand, "authorize_person_address", DbType.String, authorize_person_address);
            db.AddInParameter(dbCommand, "applicant_id", DbType.Int32, applicant_id);
            db.AddInParameter(dbCommand, "IsFactorySameAsCorrespondence", DbType.Boolean, IsFactorySameAsCorrespondence);
            db.AddInParameter(dbCommand, "ISOfficeSameAsCorrespondense", DbType.Boolean, ISOfficeSameAsCorrespondense);
            db.AddInParameter(dbCommand, "Registration_No", DbType.String, Registration_No);
            db.AddInParameter(dbCommand, "gst_number", DbType.String, gst_number);
            db.AddInParameter(dbCommand, "incorporation_certificate_number", DbType.String, incorporation_certificate_number);
            db.AddInParameter(dbCommand, "ISAuthorizedSameApplicant", DbType.Boolean, ISAuthorizedSameApplicant);
            db.AddInParameter(dbCommand, "IsAuthorizedSameCorrespondence", DbType.Boolean, IsAuthorizedSameCorrespondence);
            db.AddInParameter(dbCommand, "entity_address_id1", DbType.Int32, entity_address_id);
            db.AddInParameter(dbCommand, "Office_address_id1", DbType.Int32, Office_address_id);
            db.AddInParameter(dbCommand, "factory_address_id1", DbType.Int32, factory_address_id);
            db.AddInParameter(dbCommand, "AuthorizePerson_address_id1", DbType.Int32, AuthorizePerson_address_id);

            int returnValue = Convert.ToInt32(db.ExecuteNonQuery(dbCommand));

            return returnValue;


        }

        public static int updateEntityDetails(int annexure_id, int entity_type_id, string entity_mobileno, string entity_email_id, string telephone_number, string fax_number, string office_address_line_1, string office_address_line_2, string office_pin_code, string office_city, int office_state_id, string Factory_address_line_1, string Factory_address_line_2, string Factory_pin_code, string Factory_city, int Factory_state_id, string name, string designation, string phone_no, string email_id, string authorize_person_address, int applicant_id, bool? IsFactorySameAsCorrespondence, bool? ISOfficeSameAsCorrespondense)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            DbCommand dbCommand = db.GetStoredProcCommand("usp_Update_EntityDetails");
            db.AddInParameter(dbCommand, "annexure_id", DbType.Int32, annexure_id);
            db.AddInParameter(dbCommand, "entity_type_id", DbType.Int32, entity_type_id);

            db.AddInParameter(dbCommand, "entity_mobileno", DbType.String, entity_mobileno);
            db.AddInParameter(dbCommand, "entity_email_id", DbType.String, entity_email_id);
            db.AddInParameter(dbCommand, "telephone_number", DbType.String, telephone_number);
            db.AddInParameter(dbCommand, "fax_number", DbType.String, fax_number);
            db.AddInParameter(dbCommand, "office_address_line_1", DbType.String, office_address_line_1);
            db.AddInParameter(dbCommand, "office_address_line_2", DbType.String, office_address_line_2);
            db.AddInParameter(dbCommand, "office_pin_code", DbType.String, office_pin_code);
            db.AddInParameter(dbCommand, "office_city", DbType.String, office_city);

            db.AddInParameter(dbCommand, "office_state_id", DbType.Int32, office_state_id);
            db.AddInParameter(dbCommand, "Factory_address_line_1", DbType.String, Factory_address_line_1);
            db.AddInParameter(dbCommand, "Factory_address_line_2", DbType.String, Factory_address_line_2);
            db.AddInParameter(dbCommand, "Factory_pin_code", DbType.String, Factory_pin_code);
            db.AddInParameter(dbCommand, "Factory_city", DbType.String, Factory_city);
            db.AddInParameter(dbCommand, "Factory_state_id", DbType.Int32, Factory_state_id);
            db.AddInParameter(dbCommand, "name", DbType.String, name);
            db.AddInParameter(dbCommand, "designation", DbType.String, designation);
            db.AddInParameter(dbCommand, "phone_no", DbType.String, phone_no);
            db.AddInParameter(dbCommand, "email_id", DbType.String, email_id);
            db.AddInParameter(dbCommand, "authorize_person_address", DbType.String, authorize_person_address);
            db.AddInParameter(dbCommand, "applicant_id", DbType.Int32, applicant_id);
            db.AddInParameter(dbCommand, "IsFactorySameAsCorrespondence", DbType.Boolean, IsFactorySameAsCorrespondence);
            db.AddInParameter(dbCommand, "ISOfficeSameAsCorrespondense", DbType.Boolean, ISOfficeSameAsCorrespondense);


            int returnValue = Convert.ToInt32(db.ExecuteNonQuery(dbCommand));

            return returnValue;


        }



        public static DataSet SelectEmptyDirectorDetails()
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            //Database db = DatabaseFactory.CreateDatabase();
            DbCommand dbCommand = db.GetStoredProcCommand("usp_getEmpty_A1DirectorsDetail");

            return db.ExecuteDataSet(dbCommand);
        }




        public static int InsertAssistanceUnitDetails(int annexure1_id,string location,int area,int area_unit_id,int employment, int UserID,decimal project_cost,int unit_type_id,int park_type_id,int build_up_area,int build_up_area_unit_id,string description,string EntityEnum,decimal expenditurePlanned,DateTime? DateForExibition,bool? is_availed_scheme,DateTime? availed_scheme_date,string research_topic,string assigning_organisation,string research_duration,string earlier_assistance_organisation,string exhibitionName)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            DbCommand dbCommand = db.GetStoredProcCommand("usp_insert_Assistance_unitD_details");
            db.AddInParameter(dbCommand, "annexure1_id", DbType.Int32, annexure1_id);
            db.AddInParameter(dbCommand, "location", DbType.String, location);
            db.AddInParameter(dbCommand, "exhibitionName", DbType.String, exhibitionName);
            db.AddInParameter(dbCommand, "area", DbType.Int32, area);
            db.AddInParameter(dbCommand, "area_unit_id", DbType.Int32, area_unit_id);
            db.AddInParameter(dbCommand, "employment", DbType.Int32, employment);
            db.AddInParameter(dbCommand, "UserID", DbType.Int32, UserID);
            db.AddInParameter(dbCommand, "project_cost", DbType.Decimal, project_cost);
            db.AddInParameter(dbCommand, "expenditurePlanned", DbType.Decimal, expenditurePlanned);
            db.AddInParameter(dbCommand, "unit_type_id", DbType.Int32, unit_type_id);
            db.AddInParameter(dbCommand, "park_type_id", DbType.Int32, park_type_id);
            db.AddInParameter(dbCommand, "build_up_area", DbType.Int32, build_up_area);
            db.AddInParameter(dbCommand, "build_up_area_unit_id", DbType.Int32, build_up_area_unit_id);
            db.AddInParameter(dbCommand, "description", DbType.String, description);
            db.AddInParameter(dbCommand, "EntityEnum", DbType.String, EntityEnum);
            db.AddInParameter(dbCommand, "DateForExibition", DbType.DateTime, DateForExibition);
            db.AddInParameter(dbCommand, "is_availed_scheme", DbType.Boolean, is_availed_scheme);
            db.AddInParameter(dbCommand, "availed_scheme_date", DbType.DateTime, availed_scheme_date);
            db.AddInParameter(dbCommand, "research_topic", DbType.String, research_topic);
            db.AddInParameter(dbCommand, "assigning_organisation", DbType.String, assigning_organisation);
            db.AddInParameter(dbCommand, "research_duration", DbType.String, research_duration);
            db.AddInParameter(dbCommand, "earlier_assistance_organisation", DbType.String, earlier_assistance_organisation);
            int returnValue = Convert.ToInt32(db.ExecuteNonQuery(dbCommand));

            return returnValue;


        }


        public static int InsertIncentiveDetail(int Anexure_Id, int IncentiveID,decimal assistance_amount,int UID)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            DbCommand dbCommand = db.GetStoredProcCommand("usp_insert_IncentiveDetails");
            db.AddInParameter(dbCommand, "Anexure_Id", DbType.Int32, Anexure_Id);
            db.AddInParameter(dbCommand, "IncentiveID", DbType.Int32, IncentiveID);
            db.AddInParameter(dbCommand, "UID", DbType.Int32, UID);
            db.AddInParameter(dbCommand, "assistance_amount", DbType.Decimal, assistance_amount);
            int returnValue = Convert.ToInt32(db.ExecuteNonQuery(dbCommand));

            return returnValue;


        }


        public static int SubmitAnnexure1(int Anexure_Id,int ApplicationID,int UID)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            DbCommand dbCommand = db.GetStoredProcCommand("USP_update_Issubmit_Annexure1");
            db.AddInParameter(dbCommand, "Anexure_Id", DbType.Int32, Anexure_Id);
            db.AddInParameter(dbCommand, "applicationID", DbType.Int32, ApplicationID);
            db.AddInParameter(dbCommand, "applicantID", DbType.Int32, UID);
            int returnValue = Convert.ToInt32(db.ExecuteNonQuery(dbCommand));

            return returnValue;


        }

    }
}    