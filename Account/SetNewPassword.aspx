<%@ Page Title="Set New Password" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="SetNewPassword.aspx.cs" Inherits="PolicyManagement.Account.SetNewPassword" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <script src='<%= ResolveUrl("~/Scripts/hash.js") %>' type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {

            $('#<%=btnsubmit.ClientID %>').click(function (e) {

                if ($('#<%=txtNewPass.ClientID %>').val() == "" || $('#<%=txtcnfPass.ClientID %>').val() == "") {
                    alert("Enter Required Details");
                    e.preventDefault();

                }

                else if ($('#<%=txtNewPass.ClientID %>').val() != $('#<%=txtcnfPass.ClientID %>').val()) {
                    alert("Confirm Password should be equal to New Password");
                    e.preventDefault();
                }


                else {

                    var hash1 = CryptoJS.SHA3($('#<%=txtNewPass.ClientID %>').val());
                    $('#<%=txtNewPass.ClientID %>').val(hash1);


                    var hash2 = CryptoJS.SHA3($('#<%=txtcnfPass.ClientID %>').val());
                    $('#<%=txtcnfPass.ClientID %>').val(hash2);





                }



            });



        });



    </script>
    <div class="container">
        <div class="row no-gutters">
            <div class="col-md-6 offset-md-3">
                <div id="Div1" runat="server" visible="false" class="alert alert-success" role="alert">
                    <h4 class="alert-heading">Congratulations..!!</h4>
                    <hr>
                    <p class="mb-0">You have successfully created an account on Directorate of ICT & e-Governance.</p>
                </div>
                <!-- alert alert-success ends -->
            </div>
            <!-- col ends -->
            <div class="col-md-6 offset-md-3">
                <div class="position-relative form-container border-gamma">
                    <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                        <i class="fas fa-user-check"></i>
                    </div>
                    <!-- form-title-icon ends -->
                    <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">set new password</div>
                    <div class="clear"></div>
                    <%-- <form id="Form1" method="post" runat="server">--%>
                    <div id="Div2" runat="server" visible="false" class="row align-items-center">
                        <div class="form-group col-lg-12">
                            <%-- <label for=""><span class="text-capitalize">new password</span><span class="text-danger text-sm m-1">*</span></label>
                  <input type="text" class="form-control" name="" id="">--%>
                            <asp:Label ID="lblPan" runat="server" Text="<%$Resources:Resource1, NewPassword %>"></asp:Label>

                            <asp:TextBox runat="server" ID="txtNewPass" class="form-control" MaxLength="25" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvtxtNewPass" runat="server" class="form-text text-muted" Display="dynamic" ControlToValidate="txtNewPass"
                                ForeColor="Red" ValidationGroup="SetPass" ErrorMessage="Please enter New Password."></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegtxtNewPass" runat="server" ControlToValidate="txtNewPass" Display="Dynamic"
                    ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$" class="form-text text-muted"
                    ErrorMessage="Minimum 8 characters atleast 1 Alphabet, 1 Number and 1 Special Character" ForeColor="Red" ValidationGroup="SetPass" />
                
                        </div>
                        <!-- form-group / col ends -->
                        <div class="form-group col-lg-12">
                            <%--<label for=""><span class="text-capitalize">confirm password</span><span class="text-danger text-sm m-1">*</span></label>
                  <input type="text" class="form-control" name="" id="">
                  <small id="" class="form-text text-danger">Password mismatch.</small>--%>
                            <asp:Label ID="Label1" runat="server" Text="<%$Resources:Resource1, ConfirmPassword %>"></asp:Label>
                            <asp:TextBox runat="server" ID="txtcnfPass" class="form-control" MaxLength="25" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvtxtcnfPass" runat="server" class="form-text text-muted" Display="dynamic" ControlToValidate="txtcnfPass"
                                ForeColor="Red" ValidationGroup="SetPass" ErrorMessage="Please Enter Confirm Password."></asp:RequiredFieldValidator>

                        </div>
                        <!-- form-group / col ends -->
                        <div class="form-group col-12 text-right">
                            <%--<input type="submit" class="btn btn-primary" name="btnVerifyAccount" value="Set Password">--%>
                            <asp:Button runat="server" ID="btnsubmit" Text="Set Password" class="btn btn-primary" OnClick="btnsubmit_Click" ValidationGroup="SetPass" />

                        </div>
                    </div>
                    <%--</form>--%>
                </div>
                <!-- form-container ends -->
            </div>
            <!-- col ends -->
        </div>
        <!-- row ends -->
    </div>
    <!-- container ends -->
</asp:Content>
