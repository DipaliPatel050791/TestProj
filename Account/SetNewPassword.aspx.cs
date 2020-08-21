using System;
using System.Web.UI;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace PolicyManagement.Account
{

    public partial class SetNewPassword : System.Web.UI.Page
    {
        private Boolean IsPageRefresh = false;
        int i = 0;
        int j = 0;
        Int64 UID = 0;
        DataSet DS = null;
        DataTable DT = null;
        string uname = string.Empty;
        string activationCode = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            {
                
                string activationCode = !string.IsNullOrEmpty(Request.QueryString["ActivationCode"]) ? Request.QueryString["ActivationCode"] : Guid.Empty.ToString();
                ViewState["ActivationCode"] = activationCode;
                DS = RegisterClass.SelectActivationCodeExists(activationCode);
                DT = DS.Tables[0];
                if (DT != null && DT.Rows.Count == 1)
                {
                    UID = Convert.ToInt64(DT.Rows[0]["applicant_id"].ToString().Trim());
                    ViewState["UID"]= UID;
                    Div1.Visible = true;
                    Div2.Visible = true;

                }
                else
                {
                    Div2.Visible = false;
                    Div2.Visible = false;
                    ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Incorrect Linked Clicked, Applicant Password Generation Failed.');", true);
                    txtcnfPass.Text = "";
                }

                //using (SqlConnection con = new SqlConnection(constr))
                //{
                //    using (SqlCommand cmd = new SqlCommand("select id FROM applicant_activation_master WHERE activation_code = @ActivationCode and is_active=1"))
                //    {
                //        using (SqlDataAdapter sda = new SqlDataAdapter())
                //        {
                //            cmd.CommandType = CommandType.Text;
                //            cmd.Parameters.AddWithValue("@ActivationCode", activationCode);
                //            cmd.Connection = con;
                //            con.Open();
                //            int rowsAffected = cmd.ExecuteNonQuery();
                //            con.Close();
                //            if (rowsAffected == 1)
                //            {
                //                Div1.Visible = true;
                //            }
                //            else
                //            {
                //                Div2.Visible = false;
                //            }
                //        }
                //    }
                //}
            }
        }
        private void setDS()
        {
            DS = null;
            DT = null;
        }
     
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            try
            {
                DS = RegisterClass.SelectActivationCodeData(Convert.ToString(ViewState["ActivationCode"]), Convert.ToInt64(ViewState["UID"]));
                DT = DS.Tables[0];
                if (DT != null && DT.Rows.Count == 1)
                {
                    if (txtNewPass.Text.Trim() == txtcnfPass.Text.Trim())
                    {

                        i = RegisterClass.UpdatePassword(UID, activationCode, txtNewPass.Text.Trim());
                        
                            string scriptText = "alert('PassWord Changed Successfully.Login with new password now'); window.location='" + Request.ApplicationPath + "Account/DataLoginPolicy.aspx'";
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", scriptText, true);

                        
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Confirm and New Password should be same');", true);
                        txtcnfPass.Text = "";
                    }
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, typeof(Page), UniqueID, "alert('Incorrect Linked Clicked, Applicant Password Generation Failed.');", true);
                    txtcnfPass.Text = "";
                }

            }
            catch (Exception ex)
            {
                //MSG.Text = ex.Message;
                //MSG.ForeColor = System.Drawing.Color.Red;
                ScriptManager.RegisterStartupScript(this, GetType(),
                     "ServerControlScript", "alert('Some Error Occured,Record not Saved');", true);
            }
        }

    }
}