using System;
using System.Data;
using System.Data.Common;
using Microsoft.Practices.EnterpriseLibrary.Data;


/// <summary>
/// Summary description for MyProfile
/// </summary>
public class MyProfile
{
    public MyProfile()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public static DataSet SelectState()
    {
        DatabaseProviderFactory factory = new DatabaseProviderFactory();
        Database db = factory.Create("Policy_cn");
        DbCommand dbCommand = db.GetStoredProcCommand("usp_getState");
        return db.ExecuteDataSet(dbCommand);
    }

    public static int InsertUpdateProfileDetails(string FirstName,string LastName,string MobileNo, string TelephoneNumber, string EmailID, string PostalCode, string AddressLine1, string AddressLine2, int StateID, string DistrictName, string CityName, string AadharNo, int UID)
    {
        DatabaseProviderFactory factory = new DatabaseProviderFactory();
        Database db = factory.Create("Policy_cn");
        DbCommand dbCommand = db.GetStoredProcCommand("InsertUpdateApplicant_ProfileDetails");
        db.AddInParameter(dbCommand, "FirstName", DbType.String, FirstName);
        db.AddInParameter(dbCommand, "LastName", DbType.String, LastName);
        db.AddInParameter(dbCommand, "MobileNo", DbType.String, MobileNo);
        db.AddInParameter(dbCommand, "TelephoneNumber", DbType.String, TelephoneNumber);
        db.AddInParameter(dbCommand, "EmailID", DbType.String, EmailID);
        db.AddInParameter(dbCommand, "PostalCode", DbType.String, PostalCode);
        db.AddInParameter(dbCommand, "AddressLine1", DbType.String, AddressLine1);
        db.AddInParameter(dbCommand, "AddressLine2", DbType.String, AddressLine2);
        db.AddInParameter(dbCommand, "StateID", DbType.Int32, StateID);
        db.AddInParameter(dbCommand, "DistrictName", DbType.String, DistrictName);
        db.AddInParameter(dbCommand, "CityName", DbType.String, CityName);
        db.AddInParameter(dbCommand, "AadharNo", DbType.String, AadharNo);
        db.AddInParameter(dbCommand, "UID", DbType.Int32, UID);
        int returnValue = Convert.ToInt32(db.ExecuteNonQuery(dbCommand));
        return returnValue;

    }
    public static DataSet GetApplicantProfileDetailsByUserID(int UID)
    {
        DatabaseProviderFactory factory = new DatabaseProviderFactory();
        Database db = factory.Create("Policy_cn");
        DbCommand dbCommand = db.GetStoredProcCommand("usp_GetApplicantProfileDetailsByUserID");
        db.AddInParameter(dbCommand, "UID", DbType.Int32, UID);
        return db.ExecuteDataSet(dbCommand);
    }

}