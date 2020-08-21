using DbFactory;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using GemBox.Document;

public partial class DataLoginPolicy : System.Web.UI.Page
{
    int i = 0;
    DataSet DS = null;
    DataTable DT = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillCaptcha();


        }
    }

    protected void LoginButton_Click(object sender, EventArgs e)
    {
        ValidateUser();
    }
    private void setDS()
    {
        DS = null;
        DT = null;
    }

    private void FillCaptcha()
    {
        try
        {
            Random ran = new Random();
            //--- Here I have used numbers between 1 to 9 you can increase as per your req.
            int firstNumber = ran.Next(1, 9);
            int secondNumber = ran.Next(1, 9);
            Session["captcha"] = firstNumber + secondNumber;
            // ViewState["spam"] = firstNumber + secondNumber;
            lblStopSpam.Text = firstNumber.ToString() + " + " + secondNumber.ToString() + "=";
        }
        catch (Exception ex)
        {

            Response.Write("<script>alert('" + ex.Message + "');</script>");
        }
        //txtUname.Text = "";
        //txtpassword.Text = "";
    }

    private void ValidateUser()
    {

        setDS();
        try
        {

            if (Session["captcha"].ToString() == txtCaptcha.Text)
            {
                this.txtCaptcha.Text = "";
                Session.Remove("captcha");

                DS = User_Master.SelectLoginData(HttpUtility.HtmlEncode(txtUname.Text), HttpUtility.HtmlEncode(txtpassword.Text));
                DT = DS.Tables[0];
                if (DT != null && DT.Rows.Count == 1)
                {
                    var error = "";
                    //Com_Fun.regenerateId(HttpContext.Current);

                    Session["login_id"] = DT.Rows[0]["id"].ToString();
                    Session["entity_pan"] = DT.Rows[0]["entity_pan"].ToString();
                    // Session["DIST_ID"] = DT.Rows[0]["Dis_ID"].ToString();
                    Session["LoginName"] = DT.Rows[0]["entity_name"].ToString();
                    // Session["UserType"] = DT.Rows[0]["UserType"].ToString();
                    //Session["org"] = DT.Rows[0]["org"].ToString();
                    Session["FirstName"] = DT.Rows[0]["first_name"].ToString();
                    Session["LastName"] = DT.Rows[0]["last_name"].ToString();
                    Session["MobileNo"] = DT.Rows[0]["mobile_no"].ToString();
                    Session["email_id"] = DT.Rows[0]["email_id"].ToString();
                    //Common.SetUserSession(this.Request);
                    string guid = Guid.NewGuid().ToString();
                    Response.Redirect("~/Home.aspx");


                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Invalid Login');", true);
                    txtCaptcha.Text = "";
                    txtUname.Text = "";
                    txtpassword.Text = "";
                   // generateStopSpamText();
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Invalid captcha!!!');", true);
                txtCaptcha.Text = "";
                txtUname.Text = "";
                txtpassword.Text = "";

            }
        }
        catch (Exception ex)
        {
            labMessage.Text = ex.Message;
            txtCaptcha.Text = "";
            txtUname.Text = "";
            txtpassword.Text = "";
        }
        FillCaptcha();
    }
}