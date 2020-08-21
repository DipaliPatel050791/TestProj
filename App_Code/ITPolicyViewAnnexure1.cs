using Microsoft.Practices.EnterpriseLibrary.Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ITPolicyViewAnnexure1
/// </summary>
public class ITPolicyViewAnnexure1
{
    public ITPolicyViewAnnexure1()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public static DataSet GetAnnexure1FormData(Int64 applicant_id)
    {
        DatabaseProviderFactory factory = new DatabaseProviderFactory();
        Database db = factory.Create("Policy_cn");
        DbCommand dbCommand = db.GetStoredProcCommand("usp_it_policy_View_Annexure1");
        db.AddInParameter(dbCommand, "applicant_id", DbType.Int32, applicant_id);
        return db.ExecuteDataSet(dbCommand);
    }

}