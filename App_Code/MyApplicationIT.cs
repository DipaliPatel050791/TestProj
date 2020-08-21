using Microsoft.Practices.EnterpriseLibrary.Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for MyApplicationIT
/// </summary>
public class MyApplicationIT
{
    public MyApplicationIT()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public static DataSet GetallITApplicationFromLoginID(int UID)
    {
        DatabaseProviderFactory factory = new DatabaseProviderFactory();
        Database db = factory.Create("Policy_cn");
        DbCommand dbCommand = db.GetStoredProcCommand("usp_get_all_ITApplicationFrom_LoginID");
        db.AddInParameter(dbCommand, "applicant_id", DbType.Int32, UID);
        return db.ExecuteDataSet(dbCommand);
    }


    public static DataSet GetAssistance_annexure2A(int ApplicationID)
    {
        DatabaseProviderFactory factory = new DatabaseProviderFactory();
        Database db = factory.Create("Policy_cn");
        DbCommand dbCommand = db.GetStoredProcCommand("USP_GetAssistance_annexure2A");
        db.AddInParameter(dbCommand, "applicationid", DbType.Int32, ApplicationID);
        return db.ExecuteDataSet(dbCommand);
    }

    public static DataSet GetEntity_annexure2A(int ApplicationID)
    {
        DatabaseProviderFactory factory = new DatabaseProviderFactory();
        Database db = factory.Create("Policy_cn");
        DbCommand dbCommand = db.GetStoredProcCommand("USP_Get_EntityDetail_annexure2A");
        db.AddInParameter(dbCommand, "applicationid", DbType.Int32, ApplicationID);
        return db.ExecuteDataSet(dbCommand);
    }


    public static DataSet GetallITApplicationAdmin()
    {
        DatabaseProviderFactory factory = new DatabaseProviderFactory();
        Database db = factory.Create("Policy_cn");
        DbCommand dbCommand = db.GetStoredProcCommand("USP_get_all_Data_admin");
     
        return db.ExecuteDataSet(dbCommand);
    }

    public static DataSet GetallITApplicationDirector()
    {
        DatabaseProviderFactory factory = new DatabaseProviderFactory();
        Database db = factory.Create("Policy_cn");
        DbCommand dbCommand = db.GetStoredProcCommand("USP_get_all_Data_director");

        return db.ExecuteDataSet(dbCommand);
    }
    public static int InsertAnnexure2A(int applicationid, int UID)
    {
        DatabaseProviderFactory factory = new DatabaseProviderFactory();
        Database db = factory.Create("Policy_cn");
        DbCommand dbCommand = db.GetStoredProcCommand("USP_Insert_Annexure2A");
        db.AddInParameter(dbCommand, "applicationid", DbType.Int32, applicationid);
        db.AddInParameter(dbCommand, "UID", DbType.Int32, 1);
   
        db.AddOutParameter(dbCommand, "annexure2ID", DbType.Int32, 4);
        db.ExecuteNonQuery(dbCommand);
        int returnValue = Convert.ToInt32(db.GetParameterValue(dbCommand, "annexure2ID").ToString());

        //= Convert.ToInt32(db.ExecuteNonQuery(dbCommand));

        return returnValue;

    }

    public static int InsertAssistanceAnnexure2A(int annexure2ID, int UID, decimal assistance_amountByApplicant, string Indicative_Eligible_Amount, string remarks,  bool? ISConsidered,string FinalRemarks,int incentive_id)
    {
        DatabaseProviderFactory factory = new DatabaseProviderFactory();
        Database db = factory.Create("Policy_cn");
        DbCommand dbCommand = db.GetStoredProcCommand("USP_Insert_Annexure2A_Assistance");
        db.AddInParameter(dbCommand, "annexure2ID", DbType.Int32, annexure2ID);
        db.AddInParameter(dbCommand, "UID", DbType.Int32, UID);
        db.AddInParameter(dbCommand, "assistance_amountByApplicant", DbType.Decimal, assistance_amountByApplicant);
        db.AddInParameter(dbCommand, "Indicative_Eligible_Amount", DbType.String, Indicative_Eligible_Amount);
        db.AddInParameter(dbCommand, "remarks", DbType.String, remarks);
        db.AddInParameter(dbCommand, "ISConsidered", DbType.Boolean, ISConsidered);
        db.AddInParameter(dbCommand, "FinalRemarks", DbType.String, FinalRemarks);
        db.AddInParameter(dbCommand, "incentive_id", DbType.Int32, incentive_id);
        int returnValue = Convert.ToInt32(db.ExecuteNonQuery(dbCommand));

        return returnValue;
    }
    public static int UpdateStatusAnnexure2A(int applicationid, int statusID, int UID,  string remarks)
    {
        DatabaseProviderFactory factory = new DatabaseProviderFactory();
        Database db = factory.Create("Policy_cn");
        DbCommand dbCommand = db.GetStoredProcCommand("UpdateApplicationStatusForAnnexure2A");
        db.AddInParameter(dbCommand, "applicationid", DbType.Int32, applicationid);
        db.AddInParameter(dbCommand, "UID", DbType.Int32, UID);
        db.AddInParameter(dbCommand, "statusID", DbType.Int32, statusID);
        db.AddInParameter(dbCommand, "remarks", DbType.String, remarks);
      
        int returnValue = Convert.ToInt32(db.ExecuteNonQuery(dbCommand));
        return returnValue;
    }
}