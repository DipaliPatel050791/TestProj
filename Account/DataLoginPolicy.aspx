<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="DataLoginPolicy.aspx.cs" Inherits="DataLoginPolicy" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    
 <script src='<%= ResolveUrl("~/Scripts/hash.js") %>' type="text/javascript"></script>
       <script type="text/javascript">
           
        $(document).ready(function () {

            $('#<%=LoginButton.ClientID %>').click(function (e) {

                if ($('#<%=txtUname.ClientID %>').val() == "" || $('#<%=txtpassword.ClientID %>').val() == "" || $('#<%=txtCaptcha.ClientID %>').val() == "" ) {
                    alert("Enter Required Details");
                    e.preventDefault();

                }

         
                else {

                    var hash1 = CryptoJS.SHA3($('#<%=txtpassword.ClientID %>').val());
                    $('#<%=txtpassword.ClientID %>').val(hash1);


                }



            });



        });



    </script>
       <section>
    <div class="container">
      <div class="row no-gutters">
        <div class="col-md-6 offset-md-3">
          <div class="position-relative form-container border-gamma">
            <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
              <i class="fas fa-user-tie"></i>
            </div> <!-- form-title-icon ends -->
            <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta">Login</div>
            <div class="clear"></div>
              
              <div class="row align-items-center">
                <div class="form-group col-lg-12">
                  <label for="lblUserName"><span>User Name</span><span class="text-danger text-sm m-1">*</span></label>
                 <%-- <input type="text" class="form-control" name="txtUserName" id="lblUserName">--%>
                  <%--<small id="" class="form-text text-danger">User name is incorrect.</small>--%>
                    <asp:textbox class="form-control" id="txtUname" runat="server" Placeholder="User Name" AutoCompleteType="Disabled" autocomplete="off"></asp:textbox>
                    <asp:Label ID="labMessage" class="form-text text-danger" runat="server" Font-Bold="true" ForeColor="Red"></asp:Label>

                </div> <!-- form-group / col ends -->
                <div class="form-group col-lg-12">
                  <label for="lblPassword"><span>Password</span><span class="text-danger text-sm m-1">*</span></label>
                  <!--<input type="password" class="form-control" name="txtPassword" id="lblPassword">
                  <small id="" class="form-text text-danger">Password is incorrect.</small>-->
                    <asp:textbox class="form-control" id="txtpassword" runat="server" AutoCompleteType="Disabled" textmode="Password" Placeholder="Password"></asp:textbox>

                </div> <!-- form-group / col ends -->
                <div class="form-group col-lg-12">
                  <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                  <span>Captcha:</span> 
                    <%--<span class="fas fa-chess-board"></span>--%>
                  <%--<span class="fas fa-chess-board"></span>--%>
                 <asp:Label runat="server" ID="lblStopSpam" class="text-danger text-sm m-1" Font-Bold="True" ForeColor="#FF3300"></asp:Label>
  
                </div> <!-- form-group / col ends -->
                <div class="form-group col-lg-12">
                  <label for="lblCaptcha"><span>Enter Captcha</span><span class="text-danger text-sm m-1">*</span></label>
                  <!--<input type="password" class="form-control" name="txtCaptcha" id="lblCaptcha">
                  <small id="" class="form-text text-danger">You entered wrong captcha.</small>-->
                    
                  <asp:TextBox autocomplete="off" ID="txtCaptcha" runat="server" class="form-control" Placeholder="Captcha"></asp:TextBox>

                </div> <!-- form-group / col ends -->
                <div class="form-group col-6 text-left">
                  <a href="ForgetPassword.aspx">Forgot Password?</a>
                </div>
                <div class="form-group col-6 text-right">
                  
                <asp:button class="btn btn-primary" id="LoginButton" runat="server" commandname="Login"  text="Log In "  OnClick="LoginButton_Click" ></asp:button>
                     
                </div>
              </div>
             
          </div> <!-- form-container ends -->
        </div> <!-- col ends -->
        <div class="col-12 text-center text-md">
          <div class="d-inline-block">Don't have an account?</div>
          <div class="d-inline-block"><a href="registration.html">Register</a></div>
        </div> <!-- col ends -->
      </div> <!-- row ends -->
    </div> <!-- container ends -->
  </section>
 <%-- <footer class="bg-alpha">
    <div class="container text-center">
      <span class="text-delta text-sm">&copy; Directorate of ICT & e-Governance. All Rights Reserved.</span>
    </div>
  </footer>--%>
</asp:Content>

