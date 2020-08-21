using System;
using System.Web.UI;
using System.Data;
using System.Net.Mail;


namespace PolicyManagement.Account
{
    public partial class ForgetPassword : System.Web.UI.Page
    {
        private Boolean IsPageRefresh = false;
        int i = 0;
        int j = 0;
        int UID = 0;
        DataSet DS = null;
        DataTable DT = null;
        string uname = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!IsPostBack)
            {
                txtPan.Text = "";               
                txtEmailId.Text = "";

            }
        }
        private void setDS()
        {
            DS = null;
            DT = null;
        }
        private void SendActivationEmail(string PanNo, string EmailId)
        {

            string activationCode = Guid.NewGuid().ToString();
            string URLPath = "~/Account/SetNewPassword.aspx?ActivationCode=" + activationCode;

            setDS();
            DS = RegisterClass.SendEmailActivationLinkForgotPassword(PanNo, EmailId, activationCode, URLPath);
            DT = DS.Tables[0];
            if (DT != null && DT.Rows.Count > 0)
            {
                using (MailMessage mm = new MailMessage("ddict-cct@gujarat.gov.in", txtEmailId.Text))
                {
                    mm.Subject = "DIT Policy Account Activation";
                    //string body = "<br /><br /><meta charset=" + "utf - 8"+">";
                    //body += "<br /><br /><meta name=" + "viewport"+" content"+"="+"width = device - width, initial - scale = 1, shrink - to - fit = no"+">";

                    string body = "Dear " + txtPan.Text.Trim() + ",";
                    body += "<br /><br />Welcome to Directorate of ICT & e-Governance.";
                    body += "<br /><br />Please click the following link to Reset your password.";
                    //body += "<br /><br />Please click the following link to activate your account";
                    //body += "<br /><a href = '" + Request.Url.AbsoluteUri.Replace("~/Account/SetNewPassword.aspx", URLPath) + "'>Click here to activate your account.</a>";
                    //body += "<br /><a href = '" + Request.Url.AbsoluteUri.Replace("~/Account/Register.aspx", "~/Account/Register_Activation.aspx?ActivationCode=" + activationCode) + "'>Click here to activate your account.</a>";
                    body += "<br /><a href = '" + "http://localhost:49907/Account/SetNewPassword.aspx?ActivationCode=" + activationCode + "'>Click here to activate your account.</a>";
                    //body += "<br /><a href = '" + Request.Url.AbsoluteUri.Replace("~/Account/Register.aspx", "~/Account/SetNewPassword.aspx?ActivationCode=" + activationCode) + "'>Click here to activate your account.</a>";
                    //body += "<br /><a href = '" + Request.Url.AbsoluteUri.Replace("/Account/Register.aspx", "/Account/SetNewPassword.aspx?ActivationCode=" + activationCode) + "'>Click here to activate your account.</a>";
                    //body += "<br /><a href = '" + Request.Url.AbsoluteUri.Replace("~/Account/SetNewPassword.aspx", Convert.ToString("~/Account/SetNewPassword.aspx?ActivationCode=" + activationCode)) + "'>Click here to activate your account.</a>";
                    //Response.Redirect("~/Account/SetNewPassword.aspx?ActivationCode=" + activationCode);
                    body += "<br /><br />Thanks";
                    body += "<br /><br />Directorate of ICT & e-Governance";
                    mm.IsBodyHtml = true;
                    mm.Body = body;
                    mm.IsBodyHtml = true;
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "webmail.gujarat.gov.in";
                    smtp.UseDefaultCredentials = false;
                    smtp.EnableSsl = true;
                    //NetworkCredential NetworkCred = new NetworkCredential("icto.dst.dev@gmail.com", "Admin#123");
                    smtp.UseDefaultCredentials = true;
                    //smtp.Credentials = NetworkCred;
                    smtp.Credentials = new System.Net.NetworkCredential("ddict-cct@gujarat.gov.in", "Plumfire@817"); // ***use valid credentials***
                    smtp.Port = 25;
                    smtp.Send(mm);
                }
            }
        }
 
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            try
            {
               
                //i = RegisterClass.InsertApplicantRegistrationDetails(txtPan.Text.ToString(),txtEntityName.Text.ToString(),txtFirstName.Text.ToString(),txtLastName.Text.ToString(),txtMobileNumber.Text.ToString(),txtEmailId.Text.ToString(), UID);
               
                SendActivationEmail(txtPan.Text.ToString(),  txtEmailId.Text.ToString());
                ScriptManager.RegisterStartupScript(this, GetType(),
                 "ServerControlScript", "alert('Please verify by clicking on a verification link sent to your registered email id.');", true);
                txtPan.Text = "";               
                txtEmailId.Text = "";

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