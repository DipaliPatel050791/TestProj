using Microsoft.Practices.EnterpriseLibrary.Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Adminpanel_all_application : System.Web.UI.Page
{
    DataSet DS = null;
    DataTable DT = null;
    DataSet DS1 = null;
    DataTable DT1 = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        fillGrid();

    }
    private void setDS()
    {
        DS = null;
        DT = null;
        DS1 = null;
        DT1 = null;
    }
    private void fillGrid()
    {
        setDS();
        try
        {


            DS = SelectAll();
            allApplicationsDataTable.DataSource = DS.Tables[0];
            allApplicationsDataTable.DataBind();
           

        }
        catch { }
    }

    protected void LinkButton_Click(Object sender, CommandEventArgs e)
    {
        if (e.CommandArgument != null)
        {
            Response.Redirect("annexure-2a.aspx?IdPassed=" + e.CommandArgument.ToString());
        }
    }
    public static DataSet SelectAll()
    {
        DatabaseProviderFactory factory = new DatabaseProviderFactory();
        Database db = factory.Create("Policy_cn");
        DbCommand dbCommand = db.GetStoredProcCommand("getAllApplicationData");
        return db.ExecuteDataSet(dbCommand);
    }


}