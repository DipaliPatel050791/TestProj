using System;
using System.Data;
using System.Data.Common;
using Microsoft.Practices.EnterpriseLibrary.Data;

namespace DbFactory
{
    /// <summary>
    /// Summary description for User_Master
    /// </summary>
    public class User_Master
    {
        public User_Master()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        public static DataSet SelectLoginData(string uname, string password)
        {
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            Database db = factory.Create("Policy_cn");
            //Database db = DatabaseFactory.CreateDatabase();
            DbCommand dbCommand = db.GetStoredProcCommand("usp_getLoginData");
            db.AddInParameter(dbCommand, "Uname", DbType.String, uname);
            db.AddInParameter(dbCommand, "Pass", DbType.String, password);
            return db.ExecuteDataSet(dbCommand);
        }

        

    }
}