using System;
using System.Data;
using System.Data.Common;
using Microsoft.Practices.EnterpriseLibrary.Data;

/// <summary>
/// Summary description for Register
/// </summary>
public class RegisterClass
{
    public RegisterClass()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public static int InsertApplicantRegistrationDetails(string entity_pan, string entity_name, string first_name, string last_name, string mobile_no, string email_id,   int UserName)
    {
        DatabaseProviderFactory factory = new DatabaseProviderFactory();
        Database db = factory.Create("Policy_cn");
        DbCommand dbCommand = db.GetStoredProcCommand("usp_Applicant_Registration_Insert");
        db.AddInParameter(dbCommand, "entity_pan", DbType.String, entity_pan);
        db.AddInParameter(dbCommand, "entity_name", DbType.String, entity_name);
        db.AddInParameter(dbCommand, "first_name", DbType.String, first_name);
        db.AddInParameter(dbCommand, "last_name", DbType.String, last_name);
        db.AddInParameter(dbCommand, "mobile_no", DbType.String, mobile_no);
        db.AddInParameter(dbCommand, "email_id", DbType.String, email_id);
        db.AddInParameter(dbCommand, "UserName", DbType.Int32, UserName);
        int returnValue = Convert.ToInt32(db.ExecuteNonQuery(dbCommand));
        return returnValue;

    }
    public static DataSet SendEmailActivationLink(string PanNo,string EmailId,string activationCode, string URLPath)
    {
        DatabaseProviderFactory factory = new DatabaseProviderFactory();
        Database db = factory.Create("Policy_cn");
        DbCommand dbCommand = db.GetStoredProcCommand("usp_Registration_SendEmailActivationLink");
        db.AddInParameter(dbCommand, "PanNo", DbType.String, PanNo);
        db.AddInParameter(dbCommand, "EmailId", DbType.String, EmailId);
        db.AddInParameter(dbCommand, "activationCode", DbType.String, activationCode);
        db.AddInParameter(dbCommand, "URLPath", DbType.String, URLPath);
        return db.ExecuteDataSet(dbCommand);
    }
    public static DataSet SendEmailActivationLinkForgotPassword(string PanNo, string EmailId, string activationCode, string URLPath)
    {
        DatabaseProviderFactory factory = new DatabaseProviderFactory();
        Database db = factory.Create("Policy_cn");
        DbCommand dbCommand = db.GetStoredProcCommand("usp_Registration_SendEmailActivationLink_ForgotPassword");
        db.AddInParameter(dbCommand, "PanNo", DbType.String, PanNo);
        db.AddInParameter(dbCommand, "EmailId", DbType.String, EmailId);
        db.AddInParameter(dbCommand, "activationCode", DbType.String, activationCode);
        db.AddInParameter(dbCommand, "URLPath", DbType.String, URLPath);
        return db.ExecuteDataSet(dbCommand);
    }
    public static int UpdatePassword(Int64 UserID,string activationCode, string NewPassword)
    {
        DatabaseProviderFactory factory = new DatabaseProviderFactory();
        Database db = factory.Create("Policy_cn");
        DbCommand dbCommand = db.GetStoredProcCommand("usp_registration_set_newpassword");
        db.AddInParameter(dbCommand, "UserID ", DbType.Int32, UserID);
        db.AddInParameter(dbCommand, "activationCode ", DbType.String, activationCode);
        db.AddInParameter(dbCommand, "NewPassword ", DbType.String, NewPassword);
        int returnValue = Convert.ToInt32(db.ExecuteNonQuery(dbCommand));
        return returnValue;

    }
    public static DataSet SelectActivationCodeData(string activationCode, Int64 UID)
    {
        DatabaseProviderFactory factory = new DatabaseProviderFactory();
        Database db = factory.Create("Policy_cn");
        //Database db = DatabaseFactory.CreateDatabase();
        DbCommand dbCommand = db.GetStoredProcCommand("usp_Select_ActivationCode_Data");
        db.AddInParameter(dbCommand, "activationCode", DbType.String, activationCode);
        db.AddInParameter(dbCommand, "applicant_id", DbType.Int32, UID);
        return db.ExecuteDataSet(dbCommand);
    }
    public static DataSet SelectActivationCodeExists(string activationCode)
    {
        DatabaseProviderFactory factory = new DatabaseProviderFactory();
        Database db = factory.Create("Policy_cn");
        //Database db = DatabaseFactory.CreateDatabase();
        DbCommand dbCommand = db.GetStoredProcCommand("usp_Select_ActivationCode_Exists");
        db.AddInParameter(dbCommand, "activationCode", DbType.String, activationCode);   
        return db.ExecuteDataSet(dbCommand);
    }


}