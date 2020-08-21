<%@ Page Title="Forget Password" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="ForgetPassword.aspx.cs" Inherits="PolicyManagement.Account.ForgetPassword" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="container">
        <div class="row no-gutters">
            <div class="col-md-6 offset-md-3">
                <div class="position-relative form-container border-gamma">
                    <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                        <i class="fas fa-unlock-alt"></i>
                    </div>
                    <!-- form-title-icon ends -->
                    <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">forgot your password?</div>
                    <div class="clear"></div>
                    <p class="text-justify">Don't worry, stuff happens.</p>
                    <p class="text-justify">Just provide your entity PAN and email address below and we'll send you a link to reset your password.</p>

                    <div class="row align-items-center">
                        <div class="form-group col-lg-12">

                            <asp:Label ID="lblPan" runat="server" Text="<%$Resources:Resource1, PanNo %>"></asp:Label>

                            <asp:TextBox runat="server" ID="txtPan" class="form-control" MaxLength="10"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvtxtPan" runat="server" class="form-text text-muted" Display="dynamic" ControlToValidate="txtPan"
                                ForeColor="Red" ValidationGroup="Submit" ErrorMessage="Please enter PAN of Proprietor / Partnership Firm / Company / Association."></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revtxtPan" class="form-text text-muted" runat="server" ControlToValidate="txtPan"
                                Display="Dynamic" ForeColor="Red" ErrorMessage="InValid PAN Detail" ValidationExpression="[A-Z]{5}\d{4}[A-Z]{1}"></asp:RegularExpressionValidator>


                        </div>
                        <!-- form-group / col ends -->
                        <div class="form-group col-lg-12">
                            <asp:Label ID="lblEmailId" runat="server" Text="<%$Resources:Resource1, EmailId %>"></asp:Label>

                            <asp:TextBox runat="server" ID="txtEmailId" class="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvtxtEmailId" class="form-text text-muted" runat="server" Display="dynamic" ControlToValidate="txtEmailId"
                                ForeColor="Red" ValidationGroup="Submit" ErrorMessage="Please enter Email Id."></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revtxtEmailId" class="form-text text-muted" runat="server" ControlToValidate="txtEmailId"
                                Display="Dynamic" ForeColor="Red" ErrorMessage="InValid Email Id." ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"></asp:RegularExpressionValidator>

                        </div>
                        <!-- form-group / col ends -->
                        <div class="form-group col-12 text-right">
                            <asp:Button runat="server" ID="btnsubmit" Text="Register" class="btn btn-primary" OnClick="btnsubmit_Click" ValidationGroup="Submit" />

                        </div>
                    </div>

                </div>
                <!-- form-container ends -->
            </div>
            <!-- col ends -->
            <div class="col-12 text-center text-md">
                <div class="d-inline-block">Remember Credentials?</div>
                <div class="d-inline-block"><a href="/Account/DataLoginPolicy.aspx">Login</a></div>
            </div>
            <!-- col ends -->
        </div>
        <!-- row ends -->
    </div>
    <!-- container ends -->
</asp:Content>
