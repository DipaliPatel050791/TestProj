<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="PolicyManagement.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="container">
        <div class="row">
            <div class="col-12 col-md-8 offset-md-2 col-lg-10 offset-lg-1 col-xl-10 offset-xl-1">
                <div class="page-header bg-delta border-delta position-relative">
                    <div class="page-header-icon bg-gamma border-gamma position-absolute"><i class="fas fa-hands-helping text-delta"></i></div>
                    <div class="page-header-text weight-semi-bold text-beta text-lg text-capitalize">new application registration</div>
                </div>
                <!-- page-header ends -->
            </div>
            <!-- col ends -->
        </div>
        <!-- row ends -->
        <div class="row no-gutters">
            <div class="col-12 text-center text-md mb-3">
                <div class="d-inline-block">Already Registered?</div>
                <div class="d-inline-block"><a href="DataLoginPolicy.aspx">Login</a></div>
                
            </div>
            <!-- col ends -->
            <div class="col-12 col-md-8 offset-md-2 col-lg-10 offset-lg-1 col-xl-8 offset-xl-2">
               <%-- <form method="post" action="">--%>
                    <div class="position-relative form-container border-gamma">
                        <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                            <i class="fas fa-landmark"></i>
                        </div>
                        <!-- form-title-icon ends -->
                        <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                            <span>entity details</span>
                        </div>
                        <div class="clear"></div>
                        <div class="row">
                            <div class="form-group col-lg-6">
                                <asp:Label ID="lblPan" runat="server" Text="<%$Resources:Resource1, PanNo %>"></asp:Label>
                                
                                <asp:TextBox runat="server" ID="txtPan" class="form-control" MaxLength="10"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvtxtPan" runat="server" class="form-text text-muted" Display="dynamic" ControlToValidate="txtPan" 
                                    ForeColor="Red" ValidationGroup="Register" ErrorMessage="Please enter PAN of Proprietor / Partnership Firm / Company / Association."></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revtxtPan" class="form-text text-muted" runat="server" ControlToValidate="txtPan"  
                                Display="Dynamic" ForeColor="Red" ErrorMessage="InValid PAN Detail" ValidationExpression="[A-Z]{5}\d{4}[A-Z]{1}"></asp:RegularExpressionValidator>  
                               
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-lg-6">
                                <asp:Label ID="lblEntityName" runat="server" Text="<%$Resources:Resource1, EntityName %>"></asp:Label>
                                
                                <asp:TextBox runat="server" ID="txtEntityName" class="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvtxtEntityName" class="form-text text-muted" runat="server" Display="dynamic" ControlToValidate="txtEntityName" 
                                    ForeColor="Red" ValidationGroup="Register" ErrorMessage="Please enter Company / Business / Entity name."></asp:RequiredFieldValidator>
                               
                            </div>
                            <!-- form-group / col ends -->
                        </div>
                        <!-- row ends -->
                    </div>
                    <!-- form-container ends -->
                    <div class="position-relative form-container border-gamma mt-5">
                        <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                            <i class="fas fa-user-tie"></i>
                        </div>
                        <!-- form-title-icon ends -->
                        <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                            <span>authorised person details</span>
                        </div>
                        <div class="clear"></div>
                        <div class="row">
                            <div class="form-group col-lg-6">
                                <asp:Label ID="lblFirstName" runat="server" Text="<%$Resources:Resource1, FirstName %>"></asp:Label>
                                
                                <asp:TextBox runat="server" ID="txtFirstName" class="form-control"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="rfvtxtFirstName" class="form-text text-muted" runat="server" Display="dynamic" ControlToValidate="txtFirstName" 
                                    ForeColor="Red" ValidationGroup="Register" ErrorMessage="Please enter First Name."></asp:RequiredFieldValidator>

                               
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-lg-6">
                                <asp:Label ID="lblLastName" runat="server" Text="<%$Resources:Resource1, LastName %>"></asp:Label>
                               
                                <asp:TextBox runat="server" ID="txtLastName" class="form-control"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="rfvtxtLastName" class="form-text text-muted" runat="server" Display="dynamic" ControlToValidate="txtLastName" 
                                    ForeColor="Red" ValidationGroup="Register" ErrorMessage="Please enter Last Name."></asp:RequiredFieldValidator>

                               
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-lg-6">
                                <asp:Label ID="lblMobileNumber" runat="server" Text="<%$Resources:Resource1, MobileNumber %>"></asp:Label>

                               
                                <asp:TextBox runat="server" ID="txtMobileNumber" class="form-control" MaxLength="10"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvtxtMobileNumber" class="form-text text-muted" runat="server" Display="dynamic" ControlToValidate="txtMobileNumber" 
                                    ForeColor="Red" ValidationGroup="Register" ErrorMessage="Please enter Mobile Number."></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revtxtMobileNumber" class="form-text text-muted" runat="server" ControlToValidate="txtMobileNumber"  
                                Display="Dynamic" ForeColor="Red" ErrorMessage="InValid Mobile Number." ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>  

                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-lg-6">

                                <asp:Label ID="lblEmailId" runat="server" Text="<%$Resources:Resource1, EmailId %>"></asp:Label>
                                
                                <asp:TextBox runat="server" ID="txtEmailId" class="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvtxtEmailId" class="form-text text-muted" runat="server" Display="dynamic" ControlToValidate="txtEmailId" 
                                    ForeColor="Red" ValidationGroup="Register" ErrorMessage="Please enter Email Id."></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revtxtEmailId" class="form-text text-muted" runat="server" ControlToValidate="txtEmailId"  
                                Display="Dynamic" ForeColor="Red" ErrorMessage="InValid Email Id." ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"></asp:RegularExpressionValidator>  


                            </div>
                            <!-- form-group / col ends -->
                        </div>
                        <!-- row ends -->
                    </div>
                    <!-- form-container ends -->
                    <div class="form-group col-lg-12">
                        <div class="form-check">
                            <asp:CheckBox runat="server" ID="chktnC" Checked="false"   />                              
                            <label class="form-check-label" for="chktnC">I have read and agree to the <a href="TermnCondition.aspx" target="_blank">terms & conditions</a>.</label>
                           <%-- <asp:label ID="TaC" runat="server" class="form-check-label" Text="<%$Resources:Resource1, ReadAgree %>" ></asp:label>
                            <asp:HyperLink NavigateUrl="/Account/TermsnCondition.aspx" runat="server" target="_blank" Text="<%$Resources:Resource1, TermsConditions %>"></asp:HyperLink>
                            --%>
                        </div>
                        <!-- form-check ends -->
                    </div>
                    <!-- form-group / col ends -->
                    <div class="form-group col-lg-12 text-right">
                        <asp:Button runat="server" ID="btnreset" Text="Reset Form" OnClick="btnreset_Click" class="btn btn-outline-secondary" />                       
                        <asp:Button runat="server" ID="btnsubmit" Text="Register" class="btn btn-primary" OnClick="btnsubmit_Click" ValidationGroup="Register" />
                                                
                    </div>
                    <!-- form-group / col ends -->
               <%-- </form>--%>
            </div>
            <!-- col ends -->
            
                <div runat="server" id="DivVerifyLink" visible="true" class="col-12 col-md-8 offset-md-2 col-lg-10 offset-lg-1 col-xl-8 offset-xl-2">
                    <div class="alert alert-success" role="alert">
                        <h4 class="alert-heading">Well done!</h4>
                        <p>You are just one step away from registration.</p>
                        <hr>
                        <p class="mb-0">Please verify by clicking on a verification link sent to your registered email id.</p>
                    </div>
                    <!-- alert alert-success ends -->
                </div>
                <!-- col ends -->
                            
            <!-- row ends -->
        </div>
        </div>
</asp:Content>
