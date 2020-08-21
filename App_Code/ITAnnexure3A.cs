using System;
using System.Data;
using System.Data.Common;
using Microsoft.Practices.EnterpriseLibrary.Data;

/// <summary>
/// Summary description for ITApplication3A
/// </summary>
namespace DbFactory
{
    public class ITApplication3A
    {
        public ITApplication3A()
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


        public static DataSet SelectApplicantDetail(int ApplicationID)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            //Database db = DatabaseFactory.CreateDatabase();
            DbCommand dbCommand = db.GetStoredProcCommand("usp_getApplicantdata_ITAnnexure3A");
            db.AddInParameter(dbCommand, "ApplicationID", DbType.Int32, ApplicationID);
            return db.ExecuteDataSet(dbCommand);
        }
        public static DataSet SelectAddressDetail(int AddressID)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            //Database db = DatabaseFactory.CreateDatabase();
            DbCommand dbCommand = db.GetStoredProcCommand("usp_getAddress");
            db.AddInParameter(dbCommand, "AddressID", DbType.Int32, AddressID);
            return db.ExecuteDataSet(dbCommand);
        }
        public static DataSet SelectCorrespondenceadress(int ApplicationID)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            //Database db = DatabaseFactory.CreateDatabase();
            DbCommand dbCommand = db.GetStoredProcCommand("usp_getcorrespondenceadress_Annexure3A");
            db.AddInParameter(dbCommand, "ApplicationID", DbType.Int32, ApplicationID);
            return db.ExecuteDataSet(dbCommand);
        }

        public static DataSet SelectITeSLocationAddress(int Annexure3ID,int ApplicationID)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            //Database db = DatabaseFactory.CreateDatabase();
            DbCommand dbCommand = db.GetStoredProcCommand("usp_ITeSLocationAddress_Annexure3A");
            db.AddInParameter(dbCommand, "Annexure3ID", DbType.Int32, Annexure3ID);
            db.AddInParameter(dbCommand, "ApplicationID", DbType.Int32, ApplicationID);
            return db.ExecuteDataSet(dbCommand);
        }
        public static DataSet SelectDirectorAddress(int ApplicationID)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            //Database db = DatabaseFactory.CreateDatabase();
            DbCommand dbCommand = db.GetStoredProcCommand("usp_select_directorAddress_Annexure3A");
            db.AddInParameter(dbCommand, "ApplicationID", DbType.Int32, ApplicationID);
            return db.ExecuteDataSet(dbCommand);
        }
        public static DataSet SelectEntityDetails(int ApplicationID)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            //Database db = DatabaseFactory.CreateDatabase();
            DbCommand dbCommand = db.GetStoredProcCommand("usp_getEntityDetails_Annexure3A");
            db.AddInParameter(dbCommand, "ApplicationID", DbType.Int32, ApplicationID);
            return db.ExecuteDataSet(dbCommand);
        }
        public static DataSet SelectDirectorPromoterDetails(int UID)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            //Database db = DatabaseFactory.CreateDatabase();
            DbCommand dbCommand = db.GetStoredProcCommand("usp_getDirectorPromoter_Annexure3A");
            db.AddInParameter(dbCommand, "UID", DbType.Int32, UID);
            return db.ExecuteDataSet(dbCommand);
        }

        public static DataSet SelectCommonDetails(string group_enum)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            //Database db = DatabaseFactory.CreateDatabase();
            DbCommand dbCommand = db.GetStoredProcCommand("USP_GET_COMMONVALUE");
            db.AddInParameter(dbCommand, "group_enum", DbType.String, group_enum);
            return db.ExecuteDataSet(dbCommand);
        }
        public static DataSet SelectAuthorisedPersonDetails(int ApplicationID)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            //Database db = DatabaseFactory.CreateDatabase();
            DbCommand dbCommand = db.GetStoredProcCommand("usp_get_AuthorisedPersonDetails_Annexure3A");
            db.AddInParameter(dbCommand, "ApplicationID", DbType.Int32, ApplicationID);
            return db.ExecuteDataSet(dbCommand);
        }
        public static DataSet SelectAnnexure3AITeSUniDetail(int Annexure3ID)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            //Database db = DatabaseFactory.CreateDatabase();
            DbCommand dbCommand = db.GetStoredProcCommand("usp_get_Annexure3AITeSUniDetail");
            db.AddInParameter(dbCommand, "Annexure3ID", DbType.Int32, Annexure3ID);
            return db.ExecuteDataSet(dbCommand);
        }
        public static DataSet SelectAnnexure3AITeSUniDetailDomesticTurnOver(int Annexure3ID)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            //Database db = DatabaseFactory.CreateDatabase();
            DbCommand dbCommand = db.GetStoredProcCommand("usp_get_Annexure3AITeSUniDetail_DomesticTurnOver");
            db.AddInParameter(dbCommand, "Annexure3ID", DbType.Int32, Annexure3ID);
            return db.ExecuteDataSet(dbCommand);
        }
        public static DataSet SelectAnnexure3AITeSUniDetailExportsTurnOver(int Annexure3ID)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            //Database db = DatabaseFactory.CreateDatabase();
            DbCommand dbCommand = db.GetStoredProcCommand("usp_get_Annexure3AITeSUniDetail_ExportsTurnOver");
            db.AddInParameter(dbCommand, "Annexure3ID", DbType.Int32, Annexure3ID);
            return db.ExecuteDataSet(dbCommand);
        }
        public static DataSet SelectAnnexure3AITeSUniDetailEmployeeCount(int Annexure3ID)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            //Database db = DatabaseFactory.CreateDatabase();
            DbCommand dbCommand = db.GetStoredProcCommand("usp_get_Annexure3AITeSUniDetail_EmployeeCount");
            db.AddInParameter(dbCommand, "Annexure3ID", DbType.Int32, Annexure3ID);
            return db.ExecuteDataSet(dbCommand);
        }
        public static DataSet SelectAnnexure3AITeSUniDetailExpansionDiversification(int Annexure3ID)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            //Database db = DatabaseFactory.CreateDatabase();
            DbCommand dbCommand = db.GetStoredProcCommand("usp_get_Annexure3AITeSUniDetail_ExpansionDiversification");
            db.AddInParameter(dbCommand, "Annexure3ID", DbType.Int32, Annexure3ID);
            return db.ExecuteDataSet(dbCommand);
        }
        public static DataSet SelectAnnexure3FPRevenewForecast(int Annexure3ID)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            //Database db = DatabaseFactory.CreateDatabase();
            DbCommand dbCommand = db.GetStoredProcCommand("usp_get_Annexure3FP_RevenewForecast");
            db.AddInParameter(dbCommand, "Annexure3ID", DbType.Int32, Annexure3ID);
            return db.ExecuteDataSet(dbCommand);
        }
        public static DataSet SelectAnnexure3FPExpenditureForecast(int Annexure3ID)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            //Database db = DatabaseFactory.CreateDatabase();
            DbCommand dbCommand = db.GetStoredProcCommand("usp_get_Annexure3FP_ExpenditureForecast");
            db.AddInParameter(dbCommand, "Annexure3ID", DbType.Int32, Annexure3ID);
            return db.ExecuteDataSet(dbCommand);
        }
        public static DataSet SelectAnnexure3FPNetProfitForecast(int Annexure3ID)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            //Database db = DatabaseFactory.CreateDatabase();
            DbCommand dbCommand = db.GetStoredProcCommand("usp_get_Annexure3FP_NetProfitForecast");
            db.AddInParameter(dbCommand, "Annexure3ID", DbType.Int32, Annexure3ID);
            return db.ExecuteDataSet(dbCommand);
        }
        public static DataSet SelectAnnexure3FPCashFlowBO(int Annexure3ID)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            //Database db = DatabaseFactory.CreateDatabase();
            DbCommand dbCommand = db.GetStoredProcCommand("usp_get_Annexure3FP_CashFlowBO");
            db.AddInParameter(dbCommand, "Annexure3ID", DbType.Int32, Annexure3ID);
            return db.ExecuteDataSet(dbCommand);
        }
        public static DataSet SelectAnnexure3FPFinancingProject(int Annexure3ID)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            //Database db = DatabaseFactory.CreateDatabase();
            DbCommand dbCommand = db.GetStoredProcCommand("usp_get_Annexure3FP_FinancingProject");
            db.AddInParameter(dbCommand, "Annexure3ID", DbType.Int32, Annexure3ID);
            return db.ExecuteDataSet(dbCommand);
        }
        public static DataSet SelectAnnexure3BankAccountDetail(int Annexure3ID)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            //Database db = DatabaseFactory.CreateDatabase();
            DbCommand dbCommand = db.GetStoredProcCommand("usp_get_Annexure3_BankAccountDetail");
            db.AddInParameter(dbCommand, "Annexure3ID", DbType.Int32, Annexure3ID);
            return db.ExecuteDataSet(dbCommand);
        }
        public static DataSet SelectAnnexure3CODateOfBegin(int Annexure3ID)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            //Database db = DatabaseFactory.CreateDatabase();
            DbCommand dbCommand = db.GetStoredProcCommand("usp_get_Annexure3_CODateOfBegin");
            db.AddInParameter(dbCommand, "Annexure3ID", DbType.Int32, Annexure3ID);
            return db.ExecuteDataSet(dbCommand);
        }
        public static DataSet SelectAnnexure3Declaration(int Annexure3ID)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            //Database db = DatabaseFactory.CreateDatabase();
            DbCommand dbCommand = db.GetStoredProcCommand("usp_get_Annexure3_Declaration");
            db.AddInParameter(dbCommand, "Annexure3ID", DbType.Int32, Annexure3ID);
            return db.ExecuteDataSet(dbCommand);
        }
        public static string InsertIDProofData(int applicant_id, string Ext, string file_path, int file_size, int applicationID, int annexure_id, string uploadType)
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
            string returnValue = db.GetParameterValue(dbCommand, "file_name").ToString();

            //= Convert.ToInt32(db.ExecuteNonQuery(dbCommand));

            return returnValue;

        }
        public static int InsertDirectorDetails(int Annexure3ID, int ApplicationID, string director_name,string DinNumber, string director_pan, string director_mobileNo, string director_email_id, string Director_addressline1,bool IsDirectorSameAsCorrespondence)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            DbCommand dbCommand = db.GetStoredProcCommand("add_Directore_Detail_annexure3");
            db.AddInParameter(dbCommand, "Annexure3ID", DbType.Int32, Annexure3ID);
            db.AddInParameter(dbCommand, "ApplicationID", DbType.Int32, ApplicationID);
            db.AddInParameter(dbCommand, "director_name", DbType.String, director_name);
            db.AddInParameter(dbCommand, "DinNumber", DbType.String, DinNumber);
            db.AddInParameter(dbCommand, "director_pan", DbType.String, director_pan);
            db.AddInParameter(dbCommand, "director_mobileNo", DbType.String, director_mobileNo);
            db.AddInParameter(dbCommand, "director_email_id", DbType.String, director_email_id);
            db.AddInParameter(dbCommand, "Director_addressline1", DbType.String, Director_addressline1);
            db.AddInParameter(dbCommand, "IsDirectorSameAsCorrespondence", DbType.Boolean, IsDirectorSameAsCorrespondence);
            int returnValue = Convert.ToInt32(db.ExecuteNonQuery(dbCommand));
            return returnValue;


        }


        public static int updateDirectorDetails(int Annexure3ID, int id, int addressid,  string director_name, string director_pan, string director_mobileNo, string director_email_id, string Director_addressline1, string DinNumber, bool IsDirectorSameAsCorrespondence)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            DbCommand dbCommand = db.GetStoredProcCommand("usp_update_Directore_Detail_annexure3");
            db.AddInParameter(dbCommand, "id", DbType.Int32, id);
            db.AddInParameter(dbCommand, "Director_addressid", DbType.Int32, addressid);
            db.AddInParameter(dbCommand, "annexure3_id", DbType.Int32, Annexure3ID);
            db.AddInParameter(dbCommand, "director_name", DbType.String, director_name);
            db.AddInParameter(dbCommand, "DinNumber", DbType.String, DinNumber);
            db.AddInParameter(dbCommand, "director_pan", DbType.String, director_pan);
            db.AddInParameter(dbCommand, "director_mobileNo", DbType.String, director_mobileNo);
            db.AddInParameter(dbCommand, "director_email_id", DbType.String, director_email_id);
            db.AddInParameter(dbCommand, "Director_addressline1", DbType.String, Director_addressline1);
            db.AddInParameter(dbCommand, "IsDirectorSameAsCorrespondence", DbType.Boolean, IsDirectorSameAsCorrespondence);
            int returnValue = Convert.ToInt32(db.ExecuteNonQuery(dbCommand));
            return returnValue;


        }



        public static int DeleteDirectorDetails(int Annexure3id, int id, int addressid)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            DbCommand dbCommand = db.GetStoredProcCommand("usp_Delete_Directore_Detail_annexure3");
            db.AddInParameter(dbCommand, "annexure3_id", DbType.Int32, Annexure3id);
            db.AddInParameter(dbCommand, "Director_addressid", DbType.Int32, addressid);
            db.AddInParameter(dbCommand, "id", DbType.Int32, id);
            int returnValue = Convert.ToInt32(db.ExecuteNonQuery(dbCommand));
            return returnValue;
        }
        public static Tuple<string> InsertUpdateITAnnexure3A(string mode,int Annexure3ID,int ApplicationID, string EntityName,string EntityTelNo,string EntityMobileNo, string EntityEmailID, string CAPostalCode, string CAAddressLine1,string CAAddressLine2, string CACity, int CAState,string CATelephoneNo, int TypeOfEntity, string EntityRegistrationNo,string CertificateOfIncorporation, string EntityPAN,string GSTIN,string TINNo,string APFirstName,string APDesignation, string APMobileNumber,string APEmailId,int AuthPostalCode,string AuthAddressLine1,string AuthAddressLine2,string AuthCityVillage,int AuthState, bool IsAuthorizedPersonAndApplicant_Same,bool IsAuthorizedPersonAndCorrespondenceAddress_Same)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            DbCommand dbCommand = db.GetStoredProcCommand("usp_insert_annexure3_master"); 
            if(mode=="update") dbCommand = db.GetStoredProcCommand("usp_Update_annexure3_master"); 

            db.AddInParameter(dbCommand, "ApplicationID", DbType.Int32, ApplicationID);
            db.AddInParameter(dbCommand, "EntityName", DbType.String, EntityName);
            db.AddInParameter(dbCommand, "EntityTelNo", DbType.String, EntityTelNo);
            db.AddInParameter(dbCommand, "EntityMobileNo", DbType.String , EntityMobileNo);
            db.AddInParameter(dbCommand, "EntityEmailID", DbType.String, EntityEmailID);
            db.AddInParameter(dbCommand, "CAPostalCode", DbType.String, CAPostalCode);
            db.AddInParameter(dbCommand, "CAAddressLine1", DbType.String, CAAddressLine1);
            db.AddInParameter(dbCommand, "CAAddressLine2", DbType.String, CAAddressLine2);
            db.AddInParameter(dbCommand, "CACity", DbType.String, CACity);
            db.AddInParameter(dbCommand, "CAState", DbType.Int32, CAState);
            db.AddInParameter(dbCommand, "CATelephoneNo", DbType.String, CATelephoneNo);
            db.AddInParameter(dbCommand, "TypeOfEntity", DbType.Int16, TypeOfEntity);
            db.AddInParameter(dbCommand, "EntityRegistrationNo", DbType.String, EntityRegistrationNo);
            db.AddInParameter(dbCommand, "CertificateOfIncorporation", DbType.String, CertificateOfIncorporation);
            db.AddInParameter(dbCommand, "EntityPAN", DbType.String, EntityPAN);
            db.AddInParameter(dbCommand, "GSTIN", DbType.String, GSTIN);
            db.AddInParameter(dbCommand, "TINNo", DbType.String, TINNo);
            db.AddInParameter(dbCommand, "APFirstName", DbType.String, APFirstName);
            db.AddInParameter(dbCommand, "APDesignation", DbType.String, APDesignation);
            db.AddInParameter(dbCommand, "APMobileNumber", DbType.String, APMobileNumber);
            db.AddInParameter(dbCommand, "APEmailId", DbType.String, APEmailId);
            db.AddInParameter(dbCommand, "AuthPostalCode", DbType.String, AuthPostalCode);
            db.AddInParameter(dbCommand, "AuthAddressLine1", DbType.String, AuthAddressLine1);
            db.AddInParameter(dbCommand, "AuthAddressLine2", DbType.String, AuthAddressLine2);
            db.AddInParameter(dbCommand, "AuthCityVillage", DbType.String, AuthCityVillage);
            db.AddInParameter(dbCommand, "AuthState", DbType.Int16, AuthState);
            db.AddInParameter(dbCommand, "IsAuthorizedPersonAndApplicant_Same", DbType.Boolean, IsAuthorizedPersonAndApplicant_Same);
            db.AddInParameter(dbCommand, "IsAuthorizedPersonAndCorrespondenceAddress_Same", DbType.Boolean, IsAuthorizedPersonAndCorrespondenceAddress_Same);

            if (mode == "add")
                db.AddOutParameter(dbCommand, "Annexure3ID", DbType.Int32, 4);
            else if (mode == "update")
                db.AddInParameter(dbCommand, "Annexure3ID", DbType.Int32, Annexure3ID);

            db.ExecuteNonQuery(dbCommand);

            if (mode == "add")
                Annexure3ID = int.Parse(db.GetParameterValue(dbCommand, "Annexure3ID").ToString());
            //..string Fname = db.GetParameterValue(dbCommand, "Fname").ToString() ;
            //= Convert.ToInt32(db.ExecuteNonQuery(dbCommand));
            //..return new Tuple<string, string> (Fname, Annexure3ID);
            return new Tuple<string>(Annexure3ID.ToString());
        }

        public static Tuple<string, string> InsertUpdateITAnnexure3AITeS(int Annexure3ID, int UnitType, int AreaUnitType, int AreaOfLand,string ProjectDesc, string ITeSPostalCode, string ITeSAddressLine1, string ITeSAddressLine2,string ITeSCity, int ITeSState,string ITeSTelephoneNumber,bool IsLocAddrSameAsCorrAddr, string DomesticTOYear1, string DomesticTOYear2, string DomesticTOYear3, string DomesticTOYear4, string DomesticTOYear5, string DomesticTOYear6, string ExportTOYear1, string ExportTOYear2, string ExportTOYear3, string ExportTOYear4, string ExportTOYear5, string ExportTOYear6, string EmployeesTOYear1, string EmployeesTOYear2, string EmployeesTOYear3, string EmployeesTOYear4, string EmployeesTOYear5, string EmployeesTOYear6)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            DbCommand dbCommand = db.GetStoredProcCommand("usp_insertUpdate_Annexure3A_ITeS");
            db.AddInParameter(dbCommand, "Annexure3ID", DbType.Int32, Annexure3ID);
            db.AddInParameter(dbCommand, "UnitType", DbType.Int16, UnitType);
            db.AddInParameter(dbCommand, "AreaUnitType", DbType.Int16, AreaUnitType);
            db.AddInParameter(dbCommand, "AreaOfLand", DbType.Int16, AreaOfLand);
            db.AddInParameter(dbCommand, "ProjectDesc", DbType.String, ProjectDesc);
            db.AddInParameter(dbCommand, "ITeSPostalCode", DbType.String, ITeSPostalCode);
            db.AddInParameter(dbCommand, "ITeSAddressLine1", DbType.String, ITeSAddressLine1);
            db.AddInParameter(dbCommand, "ITeSAddressLine2", DbType.String, ITeSAddressLine2);
            db.AddInParameter(dbCommand, "ITeSCity", DbType.String, ITeSCity);
            db.AddInParameter(dbCommand, "ITeSState", DbType.Int16, ITeSState);
            db.AddInParameter(dbCommand, "ITeSTelephoneNumber", DbType.String, ITeSTelephoneNumber);
            db.AddInParameter(dbCommand, "IsLocAddrSameAsCorrAddr", DbType.Boolean, IsLocAddrSameAsCorrAddr);

            db.AddInParameter(dbCommand, "DomesticTOYear1", DbType.String, DomesticTOYear1);
            db.AddInParameter(dbCommand, "DomesticTOYear2", DbType.String, DomesticTOYear2);
            db.AddInParameter(dbCommand, "DomesticTOYear3", DbType.String, DomesticTOYear3);
            db.AddInParameter(dbCommand, "DomesticTOYear4", DbType.String, DomesticTOYear4);
            db.AddInParameter(dbCommand, "DomesticTOYear5", DbType.String, DomesticTOYear5);
            db.AddInParameter(dbCommand, "DomesticTOYear6", DbType.String, DomesticTOYear6);

            db.AddInParameter(dbCommand, "ExportTOYear1", DbType.String, ExportTOYear1);
            db.AddInParameter(dbCommand, "ExportTOYear2", DbType.String, ExportTOYear2);
            db.AddInParameter(dbCommand, "ExportTOYear3", DbType.String, ExportTOYear3);
            db.AddInParameter(dbCommand, "ExportTOYear4", DbType.String, ExportTOYear4);
            db.AddInParameter(dbCommand, "ExportTOYear5", DbType.String, ExportTOYear5);
            db.AddInParameter(dbCommand, "ExportTOYear6", DbType.String, ExportTOYear6);

            db.AddInParameter(dbCommand, "EmployeesTOYear1", DbType.String, EmployeesTOYear1);
            db.AddInParameter(dbCommand, "EmployeesTOYear2", DbType.String, EmployeesTOYear2);
            db.AddInParameter(dbCommand, "EmployeesTOYear3", DbType.String, EmployeesTOYear3);
            db.AddInParameter(dbCommand, "EmployeesTOYear4", DbType.String, EmployeesTOYear4);
            db.AddInParameter(dbCommand, "EmployeesTOYear5", DbType.String, EmployeesTOYear5);
            db.AddInParameter(dbCommand, "EmployeesTOYear6", DbType.String, EmployeesTOYear6);

            db.AddOutParameter(dbCommand, "ITeSAddressID", DbType.Int32, 4);
            db.AddOutParameter(dbCommand, "Annexure3UnitDetailID", DbType.Int32, 4);

            db.ExecuteNonQuery(dbCommand);
            string ITeSAddressID = db.GetParameterValue(dbCommand, "ITeSAddressID").ToString();
            string Annexure3UnitDetailID = db.GetParameterValue(dbCommand, "Annexure3UnitDetailID").ToString();
            //= Convert.ToInt32(db.ExecuteNonQuery(dbCommand));
            return new Tuple<string, string>(ITeSAddressID, Annexure3UnitDetailID);            
        }

        public static Tuple<string, string,string> InsertITAnnexure3AITeSExpansionDiversification(int Annexure3ID, int UnitType, int AreaUnitType, int AreaOfLand, string ProjectDesc, string ITeSPostalCode, string ITeSAddressLine1, string ITeSAddressLine2, string ITeSCity, int ITeSState, string ITeSTelephoneNumber,bool IsLocAddrSameAsCorrAddr, string DomesticTOYear1, string DomesticTOYear2, string DomesticTOYear3, string DomesticTOYear4, string DomesticTOYear5, string DomesticTOYear6, string ExportTOYear1, string ExportTOYear2, string ExportTOYear3, string ExportTOYear4, string ExportTOYear5, string ExportTOYear6, string EmployeesTOYear1, string EmployeesTOYear2, string EmployeesTOYear3, string EmployeesTOYear4, string EmployeesTOYear5, string EmployeesTOYear6,Int64 AreaUsage,int AreaUsageScale,Int64 NoOfEmployee,Int64 EmployeeEPFAmount,Int64 AvgLastYrEleUnit,Int64 TOYear2,Int64 TOYear1,Int64 TOYear0,Int64 GSTYear2,Int64 GSTYear1,Int64 GSTYear0)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            DbCommand dbCommand = db.GetStoredProcCommand("usp_insertUpdate_Annexure3A_ITeS");// ("usp_insert_Annexure3A_ITeS_ExpansionDiversification");
            db.AddInParameter(dbCommand, "Annexure3ID", DbType.Int32, Annexure3ID);
            db.AddInParameter(dbCommand, "UnitType", DbType.Int16, UnitType);
            db.AddInParameter(dbCommand, "AreaUnitType", DbType.Int16, AreaUnitType);
            db.AddInParameter(dbCommand, "AreaOfLand", DbType.Int16, AreaOfLand);
            db.AddInParameter(dbCommand, "ProjectDesc", DbType.String, ProjectDesc);
            db.AddInParameter(dbCommand, "ITeSPostalCode", DbType.String, ITeSPostalCode);
            db.AddInParameter(dbCommand, "ITeSAddressLine1", DbType.String, ITeSAddressLine1);
            db.AddInParameter(dbCommand, "ITeSAddressLine2", DbType.String, ITeSAddressLine2);
            db.AddInParameter(dbCommand, "ITeSCity", DbType.String, ITeSCity);
            db.AddInParameter(dbCommand, "ITeSState", DbType.Int16, ITeSState);
            db.AddInParameter(dbCommand, "ITeSTelephoneNumber", DbType.String, ITeSTelephoneNumber);
            db.AddInParameter(dbCommand, "IsLocAddrSameAsCorrAddr", DbType.Boolean, IsLocAddrSameAsCorrAddr);

            db.AddInParameter(dbCommand, "DomesticTOYear1", DbType.String, DomesticTOYear1);
            db.AddInParameter(dbCommand, "DomesticTOYear2", DbType.String, DomesticTOYear2);
            db.AddInParameter(dbCommand, "DomesticTOYear3", DbType.String, DomesticTOYear3);
            db.AddInParameter(dbCommand, "DomesticTOYear4", DbType.String, DomesticTOYear4);
            db.AddInParameter(dbCommand, "DomesticTOYear5", DbType.String, DomesticTOYear5);
            db.AddInParameter(dbCommand, "DomesticTOYear6", DbType.String, DomesticTOYear6);

            db.AddInParameter(dbCommand, "ExportTOYear1", DbType.String, ExportTOYear1);
            db.AddInParameter(dbCommand, "ExportTOYear2", DbType.String, ExportTOYear2);
            db.AddInParameter(dbCommand, "ExportTOYear3", DbType.String, ExportTOYear3);
            db.AddInParameter(dbCommand, "ExportTOYear4", DbType.String, ExportTOYear4);
            db.AddInParameter(dbCommand, "ExportTOYear5", DbType.String, ExportTOYear5);
            db.AddInParameter(dbCommand, "ExportTOYear6", DbType.String, ExportTOYear6);

            db.AddInParameter(dbCommand, "EmployeesTOYear1", DbType.String, EmployeesTOYear1);
            db.AddInParameter(dbCommand, "EmployeesTOYear2", DbType.String, EmployeesTOYear2);
            db.AddInParameter(dbCommand, "EmployeesTOYear3", DbType.String, EmployeesTOYear3);
            db.AddInParameter(dbCommand, "EmployeesTOYear4", DbType.String, EmployeesTOYear4);
            db.AddInParameter(dbCommand, "EmployeesTOYear5", DbType.String, EmployeesTOYear5);
            db.AddInParameter(dbCommand, "EmployeesTOYear6", DbType.String, EmployeesTOYear6);

            db.AddInParameter(dbCommand, "AreaUsage", DbType.Int64, AreaUsage);
            db.AddInParameter(dbCommand, "AreaUsageScale", DbType.Int16, AreaUsageScale);
            db.AddInParameter(dbCommand, "NoOfEmployee", DbType.Int64, NoOfEmployee);
            db.AddInParameter(dbCommand, "EmployeeEPFAmount", DbType.Int64, EmployeeEPFAmount);
            db.AddInParameter(dbCommand, "AvgLastYrEleUnit", DbType.Int64, AvgLastYrEleUnit);
            db.AddInParameter(dbCommand, "TOYear2", DbType.Int64, TOYear2);
            db.AddInParameter(dbCommand, "TOYear1", DbType.Int64, TOYear1);
            db.AddInParameter(dbCommand, "TOYear0", DbType.Int64, TOYear0);
            db.AddInParameter(dbCommand, "GSTYear2", DbType.Int64, GSTYear2);
            db.AddInParameter(dbCommand, "GSTYear1", DbType.Int64, GSTYear1);
            db.AddInParameter(dbCommand, "GSTYear0", DbType.Int64, GSTYear0);

            db.AddOutParameter(dbCommand, "ITeSAddressID", DbType.Int32, 4);
            db.AddOutParameter(dbCommand, "Annexure3UnitDetailID", DbType.Int32, 4);
            db.AddOutParameter(dbCommand, "Annexure3ExistingUnitDetailID", DbType.Int32, 4);

            db.ExecuteNonQuery(dbCommand);
            string ITeSAddressID = db.GetParameterValue(dbCommand, "ITeSAddressID").ToString();
            string Annexure3UnitDetailID = db.GetParameterValue(dbCommand, "Annexure3UnitDetailID").ToString();
            string Annexure3ExistingUnitDetailID = db.GetParameterValue(dbCommand, "Annexure3ExistingUnitDetailID").ToString();
            //= Convert.ToInt32(db.ExecuteNonQuery(dbCommand));
            return new Tuple<string, string,string>(ITeSAddressID, Annexure3UnitDetailID, Annexure3ExistingUnitDetailID);
        }

        public static Tuple<string> InsertITAnnexure3AFinancialProjection(int Annexure3ID, string RFYear1, string RFYear2, string RFYear3, string RFYear4, string RFYear5, string RFYear6, string EFYear1, string EFYear2, string EFYear3, string EFYear4, string EFYear5, string EFYear6, string NPFYear1, string NPFYear2, string NPFYear3, string NPFYear4, string NPFYear5, string NPFYear6,string BOFYear1,string BOFYear2,string BOFYear3, string BOFYear4,string BOFYear5,string BOFYear6,Int64 GoGAssistance,Int64 GoG_Org_Assistance,Int64 PromoterContri,Int64 DebtBorrow)

        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            DbCommand dbCommand = db.GetStoredProcCommand("usp_insert_Annexure3A_FinancialProjection");
            db.AddInParameter(dbCommand, "Annexure3ID", DbType.Int32, Annexure3ID);
            db.AddInParameter(dbCommand, "RFYear1", DbType.String, RFYear1);
            db.AddInParameter(dbCommand, "RFYear1", DbType.String, RFYear2);
            db.AddInParameter(dbCommand, "RFYear3", DbType.String, RFYear3);
            db.AddInParameter(dbCommand, "RFYear4", DbType.String, RFYear4);
            db.AddInParameter(dbCommand, "RFYear5", DbType.String, RFYear5);
            db.AddInParameter(dbCommand, "RFYear6", DbType.String, RFYear6);

            db.AddInParameter(dbCommand, "EFYear1", DbType.String, EFYear1);
            db.AddInParameter(dbCommand, "EFYear2", DbType.String, EFYear2);
            db.AddInParameter(dbCommand, "EFYear3", DbType.String, EFYear3);
            db.AddInParameter(dbCommand, "EFYear4", DbType.String, EFYear4);
            db.AddInParameter(dbCommand, "EFYear5", DbType.String, EFYear5);
            db.AddInParameter(dbCommand, "EFYear6", DbType.String, EFYear6);

            db.AddInParameter(dbCommand, "NPFYear1", DbType.String, NPFYear1);
            db.AddInParameter(dbCommand, "NPFYear2", DbType.String, NPFYear2);
            db.AddInParameter(dbCommand, "NPFYear3", DbType.String, NPFYear3);
            db.AddInParameter(dbCommand, "NPFYear4", DbType.String, NPFYear4);
            db.AddInParameter(dbCommand, "NPFYear5", DbType.String, NPFYear5);
            db.AddInParameter(dbCommand, "NPFYear6", DbType.String, NPFYear6);

            db.AddInParameter(dbCommand, "BOFYear1", DbType.String, BOFYear1);
            db.AddInParameter(dbCommand, "BOFYear2", DbType.String, BOFYear2);
            db.AddInParameter(dbCommand, "BOFYear3", DbType.String, BOFYear3);
            db.AddInParameter(dbCommand, "BOFYear4", DbType.String, BOFYear4);
            db.AddInParameter(dbCommand, "BOFYear5", DbType.String, BOFYear5);
            db.AddInParameter(dbCommand, "BOFYear6", DbType.String, BOFYear6);

            db.AddInParameter(dbCommand, "GoGAssistance", DbType.Int64, GoGAssistance);
            db.AddInParameter(dbCommand, "GoG_Org_Assistance", DbType.Int64, GoG_Org_Assistance);
            db.AddInParameter(dbCommand, "PromoterContri", DbType.Int64, PromoterContri);
            db.AddInParameter(dbCommand, "DebtBorrow", DbType.Int64, DebtBorrow);
            
            db.ExecuteNonQuery(dbCommand);
            string Annexure3FinMeansID = db.GetParameterValue(dbCommand, "Annexure3FinMeansID").ToString();
            
            //= Convert.ToInt32(db.ExecuteNonQuery(dbCommand));
            return new Tuple<string>(Annexure3FinMeansID);
        }
        public static Tuple<string> InsertITAnnexure3ABankDetails(int Annexure3ID, Int16 PaymentMode, string BankName, string BranchName, string BankAcctNo, string IFSCNo,string MICRCode,string BankAddress)

        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            DbCommand dbCommand = db.GetStoredProcCommand("usp_insert_Annexure3A_BankDetails");
            db.AddInParameter(dbCommand, "Annexure3ID", DbType.Int32, Annexure3ID);
            db.AddInParameter(dbCommand, "PaymentMode", DbType.Int16, PaymentMode);
            db.AddInParameter(dbCommand, "BankName", DbType.String, BankName);
            db.AddInParameter(dbCommand, "BranchName", DbType.String, BranchName);
            db.AddInParameter(dbCommand, "BankAcctNo", DbType.String, BankAcctNo);
            db.AddInParameter(dbCommand, "IFSCNo", DbType.String, IFSCNo);
            db.AddInParameter(dbCommand, "MICRCode", DbType.String, MICRCode);
            db.AddInParameter(dbCommand, "BankAddress", DbType.String, BankAddress);
            db.ExecuteNonQuery(dbCommand);
            string Annexure3BankAddressID = db.GetParameterValue(dbCommand, "Annexure3BankAddressID").ToString();

            //= Convert.ToInt32(db.ExecuteNonQuery(dbCommand));
            return new Tuple<string>(Annexure3BankAddressID);
        }
        public static Tuple<string> InsertITAnnexure3ACommOperation(int Annexure3ID,  string DateOfBegin)

        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            DbCommand dbCommand = db.GetStoredProcCommand("usp_insert_Annexure3A_CommOperation");
            db.AddInParameter(dbCommand, "Annexure3ID", DbType.Int32, Annexure3ID);
            db.AddInParameter(dbCommand, "DateOfBegin", DbType.String, DateOfBegin);            
            db.ExecuteNonQuery(dbCommand);
            string Annexure3DateID = db.GetParameterValue(dbCommand, "Annexure3DateID").ToString();

            //= Convert.ToInt32(db.ExecuteNonQuery(dbCommand));
            return new Tuple<string>(Annexure3DateID);
        }
        public static int InsertITAnnexure3ADeclaration(int Annexure3ID, Boolean IsDeclaration)

        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            DbCommand dbCommand = db.GetStoredProcCommand("usp_insert_Annexure3A_Declaration");
            db.AddInParameter(dbCommand, "Annexure3ID", DbType.Int32, Annexure3ID);
            db.AddInParameter(dbCommand, "IsDeclaration", DbType.Boolean, IsDeclaration);
            db.ExecuteNonQuery(dbCommand);
            int returnValue = Convert.ToInt32(db.ExecuteNonQuery(dbCommand));
            return returnValue;
        }

        public static DataSet SelectEmptyDirectorDetails()
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            //Database db = DatabaseFactory.CreateDatabase();
            DbCommand dbCommand = db.GetStoredProcCommand("usp_getEmpty_Annexure3_DirectorsDetail");
            return db.ExecuteDataSet(dbCommand);
        }
        public static int IUAssistanceAnnexure3A(string mode, int annexure3ID, int UID, string AssistanceAmount, string remarks, int incentive_id, bool IsAssistanceClaim)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            DbCommand dbCommand = db.GetStoredProcCommand("usp_insertupdate_annexure3a_assistance");
            db.AddInParameter(dbCommand, "mode", DbType.String, mode);
            db.AddInParameter(dbCommand, "annexure3ID", DbType.Int32, annexure3ID);
            db.AddInParameter(dbCommand, "UID", DbType.Int32, UID);
            db.AddInParameter(dbCommand, "assistance_amount", DbType.String, AssistanceAmount);
            db.AddInParameter(dbCommand, "remarks", DbType.String, remarks);
            db.AddInParameter(dbCommand, "incentive_id", DbType.Int32, incentive_id);
            db.AddInParameter(dbCommand, "IsAssistanceClaim", DbType.Boolean, IsAssistanceClaim);
            int returnValue = Convert.ToInt32(db.ExecuteNonQuery(dbCommand));

            return returnValue;


        }
        public static DataSet GetAssistance_annexure3A(int ApplicationID, int Annexure3ID)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            DbCommand dbCommand = db.GetStoredProcCommand("USP_GetAssistance_annexure3A");
            db.AddInParameter(dbCommand, "applicationid", DbType.Int32, ApplicationID);
            db.AddInParameter(dbCommand, "annexure3_id", DbType.Int32, Annexure3ID);
            return db.ExecuteDataSet(dbCommand);
        }
    }
}
