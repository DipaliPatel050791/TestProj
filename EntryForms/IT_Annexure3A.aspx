<%@ Page Language="C#" MasterPageFile="~/Policy.master" AutoEventWireup="true" CodeFile="IT_Annexure3A.aspx.cs" Inherits="EntryForms_IT_Annexure3A" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="col-md-9 canvas">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:Label runat="server" ID="MSG" ForeColor="Red" Font-Bold="True" class="control-label"></asp:Label>
        <!-- ---*---*--- Progess Bar Section Starts ---*---*--- -->
        <div class="section-progress">
            <div class="progress-box">
                <div class="text-lg text-capitalize text-center weight-bold mb-1">application progress (annexure wise)</div>
                <ul>
                    <!-- 1 -->
                    <li>
                        <a id="AnchorAnnexure1" runat="server" role="tab" data-toggle="tab" href="#">
                            <div class="pro-circle weight-semi-bold bg-success-lite border-success card-text-i">1</div>
                        </a>
                    </li>
                    <!-- arrow -->
                    <li>
                        <div class="pro-arrow"><i class="fas fa-long-arrow-alt-right card-text-i"></i></div>
                    </li>
                    <!-- 2 -->
                    <li>
                        <a id="AnchorAnnexure2" runat="server" role="tab" data-toggle="tab" href="#">
                            <div class="pro-circle weight-semi-bold bg-success-lite border-success card-text-i">2</div>
                        </a>
                    </li>
                    <!-- arrow -->
                    <li>
                        <div class="pro-arrow"><i class="fas fa-long-arrow-alt-right card-text-i"></i></div>
                    </li>
                    <!-- 3 -->
                    <li>
                        <a id="AnchorAnnexure3" runat="server" role="tab" data-toggle="tab" href="#">
                            <div class="pro-circle weight-semi-bold bg-info-lite border-info card-text-i">3</div>
                        </a>
                    </li>
                    <!-- arrow -->
                    <li>
                        <div class="pro-arrow"><i class="fas fa-long-arrow-alt-right card-text-i"></i></div>
                    </li>
                    <!-- 4 -->
                    <li>
                        <a id="AnchorAnnexure4" runat="server" role="tab" data-toggle="tab" href="#">
                            <div class="pro-circle weight-semi-bold card-back-i card-border-i card-text-i">4</div>
                        </a>
                    </li>
                    <!-- arrow -->
                    <li>
                        <div class="pro-arrow"><i class="fas fa-long-arrow-alt-right card-text-i"></i></div>
                    </li>
                    <!-- 5 -->
                    <li>
                        <a id="AnchorAnnexure5" runat="server" role="tab" data-toggle="tab" href="#">
                            <div class="pro-circle weight-semi-bold card-back-i card-border-i card-text-i">5</div>
                        </a>
                    </li>
                </ul>
            </div>
            <!-- progress-box ends -->
            <div class="progress">
                <div class="progress-bar progress-bar-striped bg-success" role="progressbar" style="width: 30%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"><span>40%</span></div>
                <div class="progress-bar progress-bar-striped bg-info" role="progressbar" style="width: 20%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"><span>In-progress</span></div>
            </div>
            <!-- progress ends -->
        </div>
        <!-- section-progress ends -->
        <!-- ---*---*--- Progess Bar Section Ends ---*---*--- -->
        <section class="mt-3 mb-3">
            <ul class="nav nav-tabs" role="tablist">
                <li class="nav-item">
                    <%--<a class="nav-link text-sm text-capitalize active" role="tab" data-toggle="tab" href="#tabItem1" id="tab-Item-1" aria-controls="tabItem1" aria-expanded="true">basic information</a>--%>
                    <asp:LinkButton runat="server" ID="linktabBasicInfo" class="nav-link text-sm text-capitalize active" Text="<%$Resources:Resource1, ITAnn3ALinkBasicInfo %>" OnClick="linktabBasicInfo_Click"></asp:LinkButton>
                </li>
                <li class="nav-item">
                    <%--<a class="nav-link text-sm text-capitalize" role="tab" data-toggle="tab" href="#tabItem9" id="tab-Item-9" aria-controls="tabItem9" aria-expanded="true">director / promotor details</a>--%>
                    <asp:LinkButton runat="server" ID="linktabDirectorDetails" class="nav-link text-sm text-capitalize" Text="<%$Resources:Resource1, ITAnn3ALinkDirectorDetails %>" OnClick="linktabDirectorDetails_Click"></asp:LinkButton>

                </li>
                <li class="nav-item">
                    <%--<a class="nav-link text-sm text-capitalize" role="tab" data-toggle="tab" href="#tabItem2" id="tab-Item-2" aria-controls="tabItem2" aria-expanded="true">IT/ITeS unit details</a>--%>

                    <asp:LinkButton runat="server" ID="linktabITesUnitDetails" class="nav-link text-sm text-capitalize" Text="<%$Resources:Resource1, ITAnn3ALinkITeSUnitDetails %>" OnClick="linktabITesUnitDetails_Click"></asp:LinkButton>
                </li>
                <li class="nav-item">
                    <%--<a class="nav-link text-sm text-capitalize" role="tab" data-toggle="tab" href="#tabItem3" id="tab-Item-3"  aria-controls="tabItem3">financial projections</a>--%>
                    <asp:LinkButton runat="server" ID="linktabFinProj" class="nav-link text-sm text-capitalize" Text="<%$Resources:Resource1, ITAnn3ALinkFinancialProjection %>" OnClick="linktabFinProj_Click"></asp:LinkButton>
                </li>
                <li class="nav-item">
                    <%--<a class="nav-link text-sm text-capitalize" role="tab" data-toggle="tab" href="#tabItem4" id="tab-Item-4"  aria-controls="tabItem4">assistance sought</a>--%>
                    <asp:LinkButton runat="server" ID="linktabAssisSought" class="nav-link text-sm text-capitalize" Text="<%$Resources:Resource1, ITAnn3ALinkAssisSought %>" OnClick="linktabAssisSought_Click"></asp:LinkButton>
                </li>
                <li class="nav-item">
                    <%--<a class="nav-link text-sm text-capitalize" role="tab" data-toggle="tab" href="#tabItem5" id="tab-Item-5"  aria-controls="tabItem5">bank account details</a>--%>
                    <asp:LinkButton runat="server" ID="linktabBnkAccDetail" class="nav-link text-sm text-capitalize" Text="<%$Resources:Resource1, ITAnn3ALinkBnkAccDetail %>" OnClick="linktabBnkAccDetail_Click"></asp:LinkButton>
                </li>
                <li class="nav-item">
                    <%--<a class="nav-link text-sm text-capitalize" role="tab" data-toggle="tab" href="#tabItem6" id="tab-Item-6"  aria-controls="tabItem6">commercial operations</a>--%>
                    <asp:LinkButton runat="server" ID="linktabCommOper" class="nav-link text-sm text-capitalize" Text="<%$Resources:Resource1, ITAnn3ALinkCommOper %>" OnClick="linktabCommOper_Click"></asp:LinkButton>
                </li>
                <li class="nav-item">
                    <%--<a class="nav-link text-sm text-capitalize" role="tab" data-toggle="tab" href="#tabItem7" id="tab-Item-7"  aria-controls="tabItem7">declaration</a>--%>
                    <asp:LinkButton runat="server" ID="linktabDeclaration" class="nav-link text-sm text-capitalize" Text="<%$Resources:Resource1, ITAnn3ALinkDeclaration %>" OnClick="linktabDeclaration_Click"></asp:LinkButton>
                </li>
                <li class="nav-item">
                    <%--<a class="nav-link text-sm text-capitalize" role="tab" data-toggle="tab" href="#tabItem8" id="tab-Item-8"  aria-controls="tabItem8">acknowledgement</a>--%>
                    <asp:LinkButton runat="server" ID="linktabAck" class="nav-link text-sm text-capitalize" Text="<%$Resources:Resource1, ITAnn3ALinkAck %>" OnClick="linktabAck_Click"></asp:LinkButton>
                </li>
                <li class="nav-item">
                    <asp:LinkButton runat="server" ID="linktabReqDoc" class="nav-link text-sm text-capitalize" Text="Required documents" OnClick="linktabReqDoc_Click"></asp:LinkButton>
                </li>
            </ul>
            <!-- nav-tabs ends -->
        </section>
        <section>
            <div class="row">
                <div class="col-sm-7 weight-semi-bold text-sm text-alpha">
                    <asp:Label ID="lblRegistrationNo" class="text-capitalize" runat="server" Text="<%$Resources:Resource1, RegistrationNo %>"></asp:Label>
                    <asp:Label ID="lblRegistrationNoValue" class="text-uppercase" runat="server"></asp:Label>
                </div>
                <!-- col ends -->
                <div class="col-sm-5">
                    <div class="text-sm text-right text-muted">
                        <span class="text-danger text-xs m-1">*</span>denoted required field.
                    </div>
                </div>
                <!-- col ends -->
            </div>
            <!-- row ends -->

        </section>
        <section class="mt-2 border-transparent">
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane fade show active" id="tabBasicInfo" runat="server" aria-labelledby="tabItem1">
                    <!-- -----*----- TAB PANEL CONTENT AREA STARTS -----*----- -->
                    <div class="position-relative form-container border-gamma">
                        <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                            <i class="fas fa-info"></i>
                        </div>
                        <!-- form-title-icon ends -->
                        <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                            <span>Basic Information</span>
                        </div>
                        <!-- form-header-text ends -->
                        <div class="clear"></div>
                        <div class="row">
                            <div class="form-group col-lg-6">
                                <label for="lblFirstName"><span>Entity Name / Unit Name</span><span class="text-danger text-sm m-1">*</span></label>
                                <asp:TextBox runat="server" ID="txtEntityName" TabIndex="1" class="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvtxtEntityName" class="form-text text-muted" runat="server" Display="dynamic" ControlToValidate="txtEntityName"
                                    ForeColor="Red" ValidationGroup="Save1" ErrorMessage="Please enter Company / Business / Entity name."></asp:RequiredFieldValidator>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-lg-6">
                                <label for=""><span>Entity Telephone Number</span></label>
                                <asp:TextBox runat="server" ID="txtEntityTelNo" TabIndex="2" class="form-control"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="revtxtEntityTelNo" class="form-text text-muted" runat="server" ControlToValidate="txtEntityTelNo"
                                    Display="Dynamic" ForeColor="Red" ErrorMessage="InValid Telephone Number." ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$"></asp:RegularExpressionValidator>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-lg-6">
                                <label for="lblMobileNumber"><span>Entity Mobile Number</span><span class="text-danger text-sm m-1">*</span></label>
                                <asp:TextBox runat="server" ID="txtEntityMobileNo" MaxLength="10" TabIndex="3" class="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvtxtEntityMobileNo" class="form-text text-muted" runat="server" Display="dynamic" ControlToValidate="txtEntityMobileNo"
                                    ForeColor="Red" ValidationGroup="Save1" ErrorMessage="Please enter Entity Mobile Number."></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revtxtEntityMobileNo" class="form-text text-muted" runat="server" ControlToValidate="txtEntityMobileNo"
                                    Display="Dynamic" ForeColor="Red" ErrorMessage="InValid Mobile Number." ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-lg-6">
                                <label for="lblEmailId"><span>Entity Email Id</span><span class="text-danger text-sm m-1">*</span></label>
                                <asp:TextBox runat="server" ID="txtEntityEmailID" TabIndex="4" class="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvtxtEntityEmailID" class="form-text text-muted" runat="server" Display="dynamic" ControlToValidate="txtEntityEmailID"
                                    ForeColor="Red" ValidationGroup="Save1" ErrorMessage="Please enter Entity Email Id."></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revtxtEntityEmailID" class="form-text text-muted" runat="server" ControlToValidate="txtEntityEmailID"
                                    Display="Dynamic" ForeColor="Red" ErrorMessage="InValid Email Id." ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"></asp:RegularExpressionValidator>
                            </div>
                            <!-- form-group / col ends -->
                        </div>
                        <!-- row ends -->
                    </div>
                    <!-- form-container ends -->
                    <div class="clear"></div>
                    <div class="position-relative form-container border-gamma mt-5">
                        <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                            <i class="far fa-envelope"></i>
                        </div>
                        <!-- form-title-icon ends -->
                        <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                            <span>Correspondence Address</span>
                        </div>
                        <!-- form-header-text ends -->
                        <div class="clear"></div>
                        <div class="row">
                            <div class="form-group col-lg-6">
                                <label for=""><span>Postal Code</span><span class="text-danger text-sm m-1">*</span></label>
                                <asp:TextBox runat="server" ID="txtCAPostalCode" TabIndex="5" class="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvtxtCAPostalCode" class="form-text text-muted" runat="server" Display="dynamic" ControlToValidate="txtCAPostalCode"
                                    ForeColor="Red" ValidationGroup="Save1" ErrorMessage="Please enter PostCode."></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revtxtCAPostalCode" class="form-text text-muted" runat="server" ControlToValidate="txtCAPostalCode"
                                    Display="Dynamic" ForeColor="Red" ErrorMessage="InValid PostCode." ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-lg-6">
                                <label for=""><span>Address Line 1</span><span class="text-danger text-sm m-1">*</span></label>
                                <asp:TextBox runat="server" ID="txtCAAddressLine1" TabIndex="6" MaxLength="500" class="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvtxtCAAddressLine1" class="form-text text-muted" runat="server" Display="dynamic" ControlToValidate="txtCAAddressLine1"
                                    ForeColor="Red" ValidationGroup="Save1" ErrorMessage="Please enter Address Line 1."></asp:RequiredFieldValidator>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-lg-6">
                                <label for=""><span>Address Line 2</span></label>
                                <asp:TextBox runat="server" ID="txtCAAddressLine2" TabIndex="7" MaxLength="500" class="form-control"></asp:TextBox>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-lg-6">
                                <label for=""><span>City / Village</span><span class="text-danger text-sm m-1">*</span></label>
                                <asp:TextBox runat="server" ID="txtCACity" TabIndex="8" MaxLength="100" class="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvtxtCACity" class="form-text text-muted" runat="server" Display="dynamic" ControlToValidate="txtCACity"
                                    ForeColor="Red" ValidationGroup="Save1" ErrorMessage="Please enter City / Village."></asp:RequiredFieldValidator>

                            </div>
                            <!-- form-group / col ends -->
                            <div class="mb-3 col-lg-6">
                                <label for=""><span>State</span><span class="text-danger text-sm m-1">*</span></label>
                                <div class="input-group">
                                    <asp:DropDownList ID="ddlState" runat="server" TabIndex="9" class="custom-select" AutoPostBack="true" OnSelectedIndexChanged="ddlState_SelectedIndexChanged">
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvddlState" runat="server" Display="dynamic" ControlToValidate="ddlState" InitialValue="0" ValidationGroup="Save1" ErrorMessage="Select State">
                                    </asp:RequiredFieldValidator>
                                </div>
                                <!-- input group ends -->
                            </div>

                            <!-- col ends -->
                            <div class="form-group col-lg-6">
                                <asp:Label runat="server" ID="Label7" Text="<%$Resources:Resource1, NewITlblTelePhoneNo %>"></asp:Label>
                                <%-- <label for=""><span>Telephone Number</span></label>--%>
                                <asp:TextBox ID="txtCATelephoneNo" class="form-control" TabIndex="10" runat="server"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="revtxtCATelephoneNo" class="form-text text-muted" runat="server" ControlToValidate="txtCATelephoneNo"
                                    Display="Dynamic" ForeColor="Red" ErrorMessage="InValid Telephone Number." ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$"></asp:RegularExpressionValidator>
                                <%-- <input type="text" class="form-control" name="" id="">--%>
                            </div>
                            <!-- form-group / col ends -->
                        </div>
                        <!-- row ends -->
                    </div>
                    <!-- form-container ends -->
                    <div class="clear"></div>
                    <div class="position-relative form-container border-gamma mt-5">
                        <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                            <i class="far fa-building"></i>
                        </div>
                        <!-- form-title-icon ends -->
                        <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                            <span>Entity Details</span>
                        </div>
                        <!-- form-header-text ends -->
                        <div class="clear"></div>
                        <div class="row">
                            <div class="mb-3 col-lg-6">
                                <label for=""><span>Type of the entity that will seek assistance under the scheme</span><span class="text-danger text-sm m-1">*</span></label>
                                <div class="input-group">
                                    <asp:DropDownList ID="ddlTypeOfEntityValue" runat="server" TabIndex="11" class="custom-select" AutoPostBack="true" OnSelectedIndexChanged="ddlTypeOfEntityValue_SelectedIndexChanged">
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvddlTypeOfEntityValue" runat="server" Display="dynamic" ControlToValidate="ddlTypeOfEntityValue" InitialValue="0" ValidationGroup="Save1" ErrorMessage="Select Type Of Entity.">
                                    </asp:RequiredFieldValidator>
                                </div>
                                <!-- input group ends -->
                            </div>
                            <!-- col ends -->
                            <div class="mb-3 col-lg-6">
                                <label for=""><span>Registration Number</span><span class="text-danger text-sm m-1">*</span></label>

                                <asp:TextBox runat="server" ID="txtEntityRegistrationNo" TabIndex="12" MaxLength="50" class="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvtxtEntityRegistrationNo" class="form-text text-muted" runat="server" Display="dynamic" ControlToValidate="txtEntityRegistrationNo"
                                    ForeColor="Red" ValidationGroup="Save1" ErrorMessage="Please enter Registration Number."></asp:RequiredFieldValidator>

                                <!-- input group ends -->
                            </div>
                            <!-- col ends -->
                            <div class="mb-3 col-lg-6">
                                <label for=""><span>Certificate Of Incorporation</span><span class="text-danger text-sm m-1">*</span></label>
                                <asp:TextBox runat="server" ID="txtCertificateOfIncorporation" MaxLength="50" TabIndex="13" class="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvtxtCertificateOfIncorporation" class="form-text text-muted" runat="server" Display="dynamic" ControlToValidate="txtCertificateOfIncorporation"
                                    ForeColor="Red" ValidationGroup="Save1" ErrorMessage="Please enter Certificate Of Incorporation."></asp:RequiredFieldValidator>
                                <!-- input group ends -->
                            </div>
                            <!-- col ends -->
                            <%--<div class="col-12"></div>--%>
                            <!-- seperator -->
                            <div class="mb-3 col-lg-6">
                                <label for="lblPan"><span>Entity PAN</span><span class="text-danger text-sm m-1">*</span></label>
                                <asp:TextBox runat="server" ID="txtPan" class="form-control" MaxLength="10" TabIndex="14"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvtxtPan" runat="server" class="form-text text-muted" Display="dynamic" ControlToValidate="txtPan"
                                    ForeColor="Red" ValidationGroup="Save1" ErrorMessage="Please enter PAN of Proprietor / Partnership Firm / Company / Association."></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revtxtPan" class="form-text text-muted" runat="server" ControlToValidate="txtPan"
                                    Display="Dynamic" ForeColor="Red" ErrorMessage="InValid PAN Detail" ValidationExpression="[A-Z]{5}\d{4}[A-Z]{1}"></asp:RegularExpressionValidator>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="mb-3 col-lg-6">
                                <label for=""><span>GSTIN</span><span class="text-danger text-sm m-1">*</span></label>
                                <asp:TextBox runat="server" ID="txtGSTIN" class="form-control" MaxLength="10" TabIndex="15"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvtxtGSTIN" runat="server" class="form-text text-muted" Display="dynamic" ControlToValidate="txtGSTIN"
                                    ForeColor="Red" ValidationGroup="Save1" ErrorMessage="Please enter GSTIN."></asp:RequiredFieldValidator>
                                <!-- input group ends -->
                            </div>
                            <!-- col ends -->
                            <div class="mb-3 col-lg-6">
                                <label for=""><span>Taxpayer Identification Number (TIN)</span><span class="text-danger text-sm m-1">*</span></label>
                                <asp:TextBox runat="server" ID="txtTINNo" class="form-control" MaxLength="10" TabIndex="16"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvtxtTINNo" runat="server" class="form-text text-muted" Display="dynamic" ControlToValidate="txtTINNo"
                                    ForeColor="Red" ValidationGroup="Save1" ErrorMessage="Please enter TIN Number."></asp:RequiredFieldValidator>
                            </div>


                            <!-- col ends -->
                        </div>
                        <!-- row ends -->
                    </div>
                    <!-- form-container ends -->




                    <div class="clear"></div>
                    <div class="position-relative form-container border-gamma mt-5">
                        <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                            <i class="far fa-id-badge"></i>
                        </div>
                        <!-- form-title-icon ends -->
                        <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                            <span>authorised person details</span>
                        </div>
                        <!-- form-header-text ends -->
                        <div class="clear"></div>
                        <div class="row">
                            <div class="mb-3 col-lg-12">
                                <div class="form-check">
                                    <asp:CheckBox ID="chkIsAuthPersonandApplicantSame" CssClass="form-check-input" TabIndex="17" AutoPostBack="true" runat="server" OnCheckedChanged="chkauthorisedPerson_CheckedChanged" />
                                    <label class="form-check-label" for="authorisedPersonCheck">
                                        <strong>Is the authorized person and applicant the same?</strong>
                                    </label>
                                </div>
                                <!-- form-check ends -->
                            </div>
                            <!-- col ends -->
                            <div class="form-group col-lg-6">
                                <label for="lblFirstName"><span>Authorised Person Name</span><span class="text-danger text-sm m-1">*</span></label>
                                <asp:TextBox runat="server" ID="txtAPFirstName" MaxLength="100" TabIndex="18" class="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvtxtAPFirstName" class="form-text text-muted" runat="server" Display="dynamic" ControlToValidate="txtAPFirstName"
                                    ForeColor="Red" ValidationGroup="Save1" ErrorMessage="Please enter First Name."></asp:RequiredFieldValidator>
                                <!-- <small id="" class="form-text text-danger">Error Message.</small> -->
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-lg-6">
                                <label for=""><span>Designation</span><span class="text-danger text-sm m-1">*</span></label>
                                <asp:TextBox runat="server" ID="txtAPDesignation" MaxLength="50" TabIndex="19" class="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvtxtAPDesignation" class="form-text text-muted" runat="server" Display="dynamic" ControlToValidate="txtAPDesignation"
                                    ForeColor="Red" ValidationGroup="Save1" ErrorMessage="Please enter First Name."></asp:RequiredFieldValidator>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-lg-6">
                                <label for="lblMobileNumber"><span>Mobile Number</span><span class="text-danger text-sm m-1">*</span></label>
                                <asp:TextBox runat="server" ID="txtAPMobileNumber" MaxLength="10" TabIndex="20" class="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvtxtAPMobileNumber" class="form-text text-muted" runat="server" Display="dynamic" ControlToValidate="txtAPMobileNumber"
                                    ForeColor="Red" ValidationGroup="Save1" ErrorMessage="Please enter First Name."></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revtxtAPMobileNumber" class="form-text text-muted" runat="server" ControlToValidate="txtAPMobileNumber"
                                    Display="Dynamic" ForeColor="Red" ErrorMessage="InValid Mobile Number." ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$"></asp:RegularExpressionValidator>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-lg-6">
                                <label for="lblEmailId"><span>Email Id</span><span class="text-danger text-sm m-1">*</span></label>
                                <asp:TextBox runat="server" ID="txtAPEmailId" TabIndex="21" class="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvtxtAPEmailId" class="form-text text-muted" runat="server" Display="dynamic" ControlToValidate="txtAPEmailId"
                                    ForeColor="Red" ValidationGroup="Save1" ErrorMessage="Please enter Email Id."></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revtxtAPEmailId" class="form-text text-muted" runat="server" ControlToValidate="txtAPEmailId"
                                    Display="Dynamic" ForeColor="Red" ErrorMessage="InValid Email Id." ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"></asp:RegularExpressionValidator>
                            </div>
                            <!-- form-group / col ends -->

                            <!-- col ends -->

                            <div class="mb-3 col-lg-12">
                                <div class="form-check">
                                    <asp:CheckBox ID="chkIsAuthAddrSameasCorrAddr" TabIndex="22" CssClass="form-check-input" runat="server" AutoPostBack="true" OnCheckedChanged="chkauthPersonAddress_CheckedChanged" />
                                    <label class="form-check-label" for="authPersonAddressCheck">
                                        <strong>Is the authorised person address same as the correspondence address?</strong>
                                    </label>
                                </div>
                                <!-- form-check ends -->
                            </div>
                            <!-- col ends -->

                            <!-- ---*--- address inside form-container starts ---*--- -->
                            <div class="form-container-child border-delta">
                                <div class="row">
                                    <div class="form-group col-lg-6">
                                        <label for=""><span>Postal Code</span><span class="text-danger text-sm m-1">*</span></label>
                                        <asp:TextBox runat="server" ID="txtAuthPostalCode" TabIndex="23" class="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvtxtAuthPostalCode" class="form-text text-muted" runat="server" Display="dynamic" ControlToValidate="txtAuthPostalCode"
                                            ForeColor="Red" ValidationGroup="Save1" ErrorMessage="Please enter PostCode."></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="revtxtPostalCode" class="form-text text-muted" runat="server" ControlToValidate="txtAuthPostalCode"
                                            Display="Dynamic" ValidationGroup="Save1" ForeColor="Red" ErrorMessage="InValid PostCode." ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
                                    </div>
                                    <!-- form-group / col ends -->
                                    <div class="form-group col-lg-6">
                                        <label for=""><span>Address Line 1</span><span class="text-danger text-sm m-1">*</span></label>
                                        <asp:TextBox runat="server" ID="txtAuthAddressLine1" MaxLength="500" TabIndex="24" class="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvtxtAuthAddressLine1" class="form-text text-muted" runat="server" Display="dynamic" ControlToValidate="txtAuthAddressLine1"
                                            ForeColor="Red" ValidationGroup="Save1" ErrorMessage="Please enter AddressLine1."></asp:RequiredFieldValidator>

                                    </div>
                                    <!-- form-group / col ends -->
                                    <div class="form-group col-lg-6">
                                        <label for=""><span>Address Line 2</span></label>
                                        <asp:TextBox runat="server" ID="txtAuthAddressLine2" MaxLength="500" TabIndex="25" class="form-control"></asp:TextBox>

                                    </div>
                                    <!-- form-group / col ends -->
                                    <div class="form-group col-lg-6">
                                        <label for=""><span>City / Village</span><span class="text-danger text-sm m-1">*</span></label>
                                        <asp:TextBox type="text" class="form-control" ID="txtCityVillage" TabIndex="26" runat="server" MaxLength="20"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvtxtCityVillage" class="form-text text-muted" runat="server" Display="dynamic" ControlToValidate="txtCityVillage"
                                            ForeColor="Red" ValidationGroup="Save1" ErrorMessage="Please enter City/Village."></asp:RequiredFieldValidator>

                                    </div>
                                    <!-- form-group / col ends -->
                                    <div class="mb-3 col-lg-6">
                                        <label for=""><span>State</span><span class="text-danger text-sm m-1">*</span></label>
                                        <div class="input-group">
                                            <asp:DropDownList ID="ddlAuthState" runat="server" TabIndex="27" class="custom-select" AutoPostBack="true" OnSelectedIndexChanged="ddlState_SelectedIndexChanged">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="rfvddlAuthState" runat="server" Display="dynamic" ControlToValidate="ddlAuthState" InitialValue="0" ValidationGroup="Save1" ErrorMessage="Select State"></asp:RequiredFieldValidator>

                                        </div>
                                        <!-- input group ends -->
                                    </div>
                                    <!-- col ends -->
                                </div>
                                <!-- row ends -->
                            </div>
                            <!-- form-container-child ends -->
                            <!-- ---*--- address inside form-container ends ---*--- -->
                        </div>
                        <!-- row ends -->
                    </div>
                    <!-- form-container ends -->
                    <div class="clear"></div>

                    <div class="text-right">
                        <asp:Button runat="server" ID="btnReset" Text="Reset Form" TabIndex="29" class="btn btn-outline-secondary" OnClick="btnReset_Click" />
                        <asp:Button runat="server" ID="btnsubmit" Text="Save & Continue" TabIndex="28" class="btn btn-primary" OnClick="btnsubmit_Click" ValidationGroup="Save1" />

                    </div>
                    <!-- text-right ends -->
                    <!-- -----*----- TAB PANEL CONTENT AREA ENDS -----*----- -->
                </div>
                <!-- tab-pane ends -->
                <div role="tabpanel" class="tab-pane fade show active" id="tabDirectorDetails" runat="server" aria-labelledby="tabItem9">
                    <!-- -----*----- TAB PANEL CONTENT AREA STARTS -----*----- -->
                    <div class="clear"></div>
                    <div class="position-relative form-container border-gamma">
                        <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                            <i class="fas fa-user-tie"></i>
                        </div>
                        <!-- form-title-icon ends -->
                        <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                            <span>
                                <asp:Literal runat="server" Text="<%$Resources:Resource1, NewITRequiredDocDir_PromoterDetails %>"></asp:Literal>
                                <%--Director / Promotor Details--%></span>
                        </div>
                        <!-- form-header-text ends -->
                        <div class="position-absolute form-header-right">
                            <%--<asp:Button runat ="server" ID="btnaddDirector" CssClass ="btn btn-outline-dark btn-action" Text ="Add More" />--%>
                            <%-- <button type="button" class="btn btn-outline-dark btn-action">
                      <i class="fas fa-plus"></i><span>Add More</span>
                    </button>--%>


                            <%--<button type="button" class="btn btn-outline-danger btn-action">
                      <i class="fas fa-times"></i><span>Remove</span>
                    </button>--%>
                        </div>
                        <!-- form-header-right ends -->
                        <div class="clear"></div>
                        <div class="row">
                            <div class="form-group col-lg-6">
                                <label for="lblFirstName"><span>Director / Promotor Name</span><span class="text-danger text-sm m-1">*</span></label>
                                <asp:TextBox CssClass="form-control" ID="txtDirectorFirstName" MaxLength="100" TabIndex="30" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="reqDirtxtFirstName" runat="server" Display="dynamic" ForeColor="red"
                                    ControlToValidate="txtDirectorFirstName" ErrorMessage="Director / Promotor Name Required!" ValidationGroup="Director">
                                </asp:RequiredFieldValidator>
                                <%--   <input type="text" class="form-control" name="txtFirstName" id="lblFirstName12" Text='<%#Eval("director_name") %>'>--%>
                                <!-- <small id="" class="form-text text-danger">Error Message.</small> -->
                            </div>
                            <div class="form-group col-lg-6">
                                <label for="lblDINNumber"><span>Director Identification Number (DIN)</span><span class="text-danger text-sm m-1">*</span></label>
                                <asp:TextBox CssClass="form-control" ID="txtDinNumber" MaxLength="20" TabIndex="31"  runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvDinNumber" runat="server" Display="dynamic" ForeColor="red"
                                    ControlToValidate="txtDinNumber" ErrorMessage="Director Identification Number Required!" ValidationGroup="Director">
                                </asp:RequiredFieldValidator>
                                <%--<input type="text" class="form-control" name="txtMobileNumber" id="lblMobileNumber" maxlength="10">--%>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-lg-6">
                                <label for="lblPan"><span>PAN number</span><span class="text-danger text-sm m-1">*</span></label>
                                <asp:TextBox CssClass="form-control" ID="txtDirectorPanNo" TabIndex="32"  MaxLength="15" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="reqdirtxtPanNo" runat="server"  Display="dynamic" ForeColor="red"
                                    ControlToValidate="txtDirectorPanNo" ErrorMessage="PAN Number Required!" ValidationGroup="Director">
                                </asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="regdirtxtPanNo" runat="server" ForeColor="red" ValidationExpression="^[a-zA-Z]{5}[0-9]{4}[a-zA-Z]{1}$" ControlToValidate="txtDirectorPanNo" ErrorMessage="Invalid PAN Number" ValidationGroup="Director"></asp:RegularExpressionValidator>
                                <%--  <input type="text" class="form-control" name="txtPanNo" id="lblPan1">--%>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-lg-6">
                                <label for="lblMobileNumber"><span>Mobile Number</span><span class="text-danger text-sm m-1">*</span></label>
                                <asp:TextBox CssClass="form-control" ID="txtDirectorMobileNumber" runat="server" MaxLength="10" TabIndex="33" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="reqdirtxtMobileNumber" runat="server" Display="dynamic" ForeColor="red"
                                    ControlToValidate="txtDirectorMobileNumber" ErrorMessage="Mobile Number Required!" ValidationGroup="Director">
                                </asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revtxtDirectorMobileNumber" class="form-text text-muted" runat="server" ControlToValidate="txtDirectorMobileNumber"
                                    Display="Dynamic" ForeColor="Red" ErrorMessage="InValid Mobile Number." ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                                <%--<input type="text" class="form-control" name="txtMobileNumber" id="lblMobileNumber" maxlength="10">--%>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-lg-6">
                                <label for="lblEmailId"><span>Email Id</span><span class="text-danger text-sm m-1">*</span></label>
                                <asp:TextBox CssClass="form-control" ID="txtDirectorEmailId" MaxLength="100" runat="server" TabIndex="34" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="reqdirtxtEmailId" runat="server" Display="dynamic" ForeColor="red"
                                    ControlToValidate="txtDirectorEmailId" ErrorMessage="EmailId Required!" ValidationGroup="Director">
                                </asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revtxtDirectorEmailId" class="form-text text-muted" runat="server" ControlToValidate="txtDirectorEmailId"
                                    Display="Dynamic" ForeColor="Red" ErrorMessage="InValid Email Id." ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"></asp:RegularExpressionValidator>
                                <%-- <input type="text" class="form-control" name="txtEmailId" id="lblEmailId">--%>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="mb-3 col-lg-12">
                                <div class="form-check">
                                    <asp:CheckBox runat="server" CssClass="form-check-input" AutoPostBack="true" ID="chkDirectorAddcheck" TabIndex="35"  OnCheckedChanged="chkDirectorAddcheck_OnCheckedChanged" />
                                    <label class="form-check-label" for="authorisedPersonCheck">
                                        <strong>Is the director / promotor address same as the correspondence address?</strong>
                                    </label>
                                    &nbsp;
                       <%-- <input class="form-check-input" type="checkbox" value="" id="directorAddressCheck">
                        <label class="form-check-label" for="directorAddressCheck">
                          <strong>Is the director / promotor address same as the correspondence address?</strong>
                        </label>--%>
                                </div>
                                <!-- form-check ends -->
                            </div>
                            <!-- col ends -->
                            <div class="form-group col-lg-12">
                                <label for=""><span>Address</span></label>
                                <asp:TextBox CssClass="form-control" ID="txtDirectorAddress" MaxLength="500" TabIndex="36"  runat="server"></asp:TextBox>
                                <%-- <textarea class="form-control" name="" id=""></textarea>--%>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-lg-12 text-right">
                                <asp:Button runat="server" ID="btnAddDirector" CssClass="btn btn-outline-secondary" Text="Add Director / Promotor" TabIndex="37"  OnClick="btnAddDirector_Click" ValidationGroup="Director" />

                            </div>
                        </div>
                        <!-- row ends -->
                        <!-- Table For Data Display -->
                        <div class="row">
                            <div class="col-12">
                                <div class="table-responsive">
                                    <asp:HiddenField runat="server" ID="hdnaddressid" />
                                    <asp:HiddenField runat="server" ID="hdnannexure1id" />
                                    <asp:HiddenField runat="server" ID="hdnannexure3id" />
                                    <asp:GridView ID="grdDirectorDetails" runat="server" DataKeyNames="Id"
                                        AutoGenerateColumns="False" AllowPaging="True"
                                        EnablePersistedSelection="True" CssClass="table table-sm table-bordered annex-1-dir-table"
                                        GridLines="None" OnRowCommand="grdDirectorDetails_RowCommand">
                                        <Columns>
                                            <asp:TemplateField HeaderText="ID" Visible="false">
                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_ID" runat="server" Text='<%#Eval("Id") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText="AddressID" Visible="false">
                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_AddressID" runat="server" Text='<%#Eval("address") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                  <%--          <asp:TemplateField HeaderText="Annexure1id" Visible="false">
                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_Annexure1ID" runat="server" Text='<%#Eval("annexure1_id") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>--%>

                                            <asp:TemplateField HeaderText="Annexure3id" Visible="false">
                                                <ItemTemplate>
                                                    <asp:Label ID="lbl_Annexure3ID" runat="server" Text='<%#Eval("annexure3_id") %>'></asp:Label> 
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText="Director /<br>Promotor Name" ItemStyle-Width="80px">
                                                <ItemTemplate>
                                                    <asp:Label runat="server" Text='<%# Eval("director_name") %>' ID="lblDirectorName">
                                                    </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText="DIN" ItemStyle-Width="50px">
                                                <ItemTemplate>
                                                    <asp:Label runat="server" Text='<%# Eval("DIN_number") %>' ID="lblDinNumber">
                                                    </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText="Mobile Number" ItemStyle-Width="50px">
                                                <ItemTemplate>
                                                    <asp:Label runat="server" Text='<%# Eval("phone_no") %>' ID="lblDirectorMobile">
                                                    </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText="Email" ItemStyle-Width="50px">
                                                <ItemTemplate>
                                                    <asp:Label runat="server" Text='<%# Eval("email_id") %>' ID="lblDirectorEmail">
                                                    </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText="PAN Number" ItemStyle-Width="50px">
                                                <ItemTemplate>
                                                    <asp:Label runat="server" Text='<%# Eval("director_pan") %>' ID="lblDirectorPAN">
                                                    </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText="Address" ItemStyle-Width="50px">
                                                <ItemTemplate>
                                                    <asp:Label runat="server" Text='<%# Eval("address_line_1") %>' ID="lblDirectoraddress">
                                                    </asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            
                                            <asp:TemplateField HeaderText="IsAddrSameAsCorr" ItemStyle-Width="50px" Visible="false">
                                                <ItemTemplate>
                                                    <asp:CheckBox runat="server" Text='<%# Eval("IsDirectorSameAsCorrespondence") %>' Checked='<%# Eval("IsDirectorSameAsCorrespondence") %>' ID="chkIsAddrSameAsCorr" >
                                                    </asp:CheckBox>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:TemplateField ItemStyle-Width="90px" HeaderText="Edit">
                                                <ItemTemplate>
                                                    <asp:Button ID="btn_Edit" runat="server" CommandArgument='<%# Eval("Id") %>' Text="Edit"
                                                        CommandName="process" CssClass="btn btn-outline-secondary btn-action2" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField ItemStyle-Width="90px" HeaderText="Delete">
                                                <ItemTemplate>
                                                    <asp:Button ID="btn_Delete" runat="server" CommandArgument='<%# Eval("Id") %>' Text="Remove"
                                                        CommandName="delete1" CssClass="btn btn-outline-danger btn-action2" />
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                        </Columns>
                                        <RowStyle CssClass="cursor-pointer" />
                                    </asp:GridView>

                                      <asp:Label ID="LblRequiredDirectorDetails" Visible="false" class="form-text text-muted" runat="server" Display="Dynamic" ForeColor="Red" Text="Please Add Director / Promotor Detail."></asp:Label>
                              
                                    <%--<table class="table table-sm table-bordered annex-1-dir-table">
                          <thead>
                            <tr>
                              <th>Sr</th>
                              <th>Director /<br>Promotor Name</th>
                              <th>Mobile Number</th>
                              <th>Email Id</th>
                              <th>PAN number</th>
                              <th>Address</th>
                              <th>Action</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td>1</td>
                              <td>Mr. John Doe</td>
                              <td>00000000000</td>
                              <td>mr-john-doe@domain.com</td>
                              <td>ABCDE0000F</td>
                              <td>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</td>
                              <td>
                                <button type="button" class="btn btn-outline-secondary btn-action2">
                                  <i class="far fa-edit"></i><span>Edit</span>
                                </button>
                                <button type="button" class="btn btn-outline-danger btn-action2">
                                  <i class="fas fa-times"></i><span>Remove</span>
                                </button>
                              </td>
                            </tr>
                            <tr>
                              <td>2</td>
                              <td>Mr. Aliquam Sollicitudin</td>
                              <td>9999999999</td>
                              <td>aliquam-sollicitudin@domain.com</td>
                              <td>ZXCVB9999N</td>
                              <td>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</td>
                              <td>
                                <button type="button" class="btn btn-outline-secondary btn-action2">
                                  <i class="far fa-edit"></i><span>Edit</span>
                                </button>
                                <button type="button" class="btn btn-outline-danger btn-action2">
                                  <i class="fas fa-times"></i><span>Remove</span>
                                </button>
                              </td>
                            </tr>
                          </tbody>
                        </table>--%>
                                </div>
                                <!-- table-responsive ends -->
                            </div>
                            <!-- col ends -->
                        </div>
                        <!-- row ends -->
                    </div>
                    <!-- form-container ends -->
                    <div class="clear"></div>
                    <div class="text-right">
                        <asp:Button runat="server" ID="btnDirectorDetailReset" Text="Reset Form" TabIndex="13" class="btn btn-outline-secondary" OnClick="btnDirectorDetailReset_Click" />
                        <asp:Button runat="server" ID="btnDirectorDetailSave" Text="Save & Continue" TabIndex="13" class="btn btn-primary" OnClick="btnDirectorDetailsubmit_Click" />

                    </div>
                    <!-- text-right ends -->
                    <!-- -----*----- TAB PANEL CONTENT AREA ENDS -----*----- -->
                </div>
                <!-- tab-pane ends -->
                <div role="tabpanel" class="tab-pane fade show active" id="tabITesUnitDetails" runat="server" aria-labelledby="tabItem2">
                    <!-- -----*----- TAB PANEL CONTENT AREA STARTS -----*----- -->
                    <div class="position-relative form-container border-gamma">
                        <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                            <i class="fas fa-building"></i>
                        </div>
                        <!-- form-title-icon ends -->
                        <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                            <span>eligible IT/ITeS Unit (New or Expansion/Diversification) details</span>
                        </div>
                        <!-- form-header-text ends -->
                        <div class="clear"></div>
                        <div class="row">
                            <div class="form-group col-lg-6">
                                <label for=""><span>Unit Type</span><span class="text-danger text-sm m-1">*</span></label>
                                <div class="clear"></div>
                                <div class="form-check form-check-inline">
                                    <asp:RadioButtonList ID="rblUnitType" runat="server" RepeatDirection="Horizontal" OnSelectedIndexChanged="rblUnitType_Changed" AutoPostBack="true">
                                   <%--     <asp:ListItem Text=" New" Value="1" Selected="True"></asp:ListItem>
                                        <asp:ListItem Text=" Expansion/Diversification" Value="2"></asp:ListItem>--%>
                                    </asp:RadioButtonList>
                                </div>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-lg-6">
                                <label for=""><span>area of the land / office space</span><span class="text-danger text-sm m-1">*</span></label>
                                <div class="input-group">
                                    <asp:TextBox class="form-control" ID="txtAreaOfLand" runat="server" MaxLength="5" TextMode="Number"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="revtxtAreaOfLand"
                                        ControlToValidate="txtAreaOfLand" class="form-text text-muted" runat="server" Display="Dynamic" ForeColor="Red"
                                        ErrorMessage="Only Numbers allowed"
                                        ValidationExpression="\d+">
                                    </asp:RegularExpressionValidator>
                                    <asp:DropDownList ID="ddlAreaScale" runat="server" TabIndex="9" CssClass="custom-select" AutoPostBack="true" OnSelectedIndexChanged="ddlAreaScale_SelectedIndexChanged">
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvddlAreaScale" runat="server" Display="dynamic" ControlToValidate="ddlAreaScale" InitialValue="0" ValidationGroup="Save2" ErrorMessage="Select Area Scale"></asp:RequiredFieldValidator>
                                </div>
                                <!-- input-group ends -->
                                <small id="" class="form-text text-muted text-capitalize">(Land in acres / Office Space in sqft)</small>
                            </div>
                            <!-- form-group / col ends -->

                            <!-- col ends -->
                            <div class="form-group col-lg-12">
                                <label for=""><span>Brief description of the project</span><span class="text-danger text-sm m-1">*</span></label>
                                <asp:TextBox runat="server" ID="txtProjectDesc" TabIndex="6" class="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvtxtProjectDesc" class="form-text text-muted" runat="server" Display="dynamic" ControlToValidate="txtProjectDesc"
                                    ForeColor="Red" ValidationGroup="Save2" ErrorMessage="Please enter Brief Description of Project."></asp:RequiredFieldValidator>
                            </div>
                            <!-- form-group / col ends -->

                            <!-- col ends -->
                            <div class="mb-3 col-lg-12">
                                <div class="form-check">
                                    <asp:CheckBox ID="chkIslocationandCorrAddrSame" CssClass="form-check-input" runat="server" AutoPostBack="true" OnCheckedChanged="chkIslocationandCorrAddrSame_CheckedChanged" />
                                    <label class="form-check-label" for="locationAddressCheck">
                                        <strong>Is the location address same as the correspondence address?</strong>
                                    </label>
                                </div>
                                <!-- form-check ends -->
                            </div>
                            <!-- col ends -->

                            <!-- ---*--- address inside form-container starts ---*--- -->
                            <div class="form-container-child border-delta">
                                <div class="row">
                                    <div class="form-group col-lg-6">
                                        <label for=""><span>Postal Code</span><span class="text-danger text-sm m-1">*</span></label>
                                        <asp:TextBox runat="server" ID="txtITeSPostalCode" TabIndex="6" class="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvtxtITeSPostalCode" class="form-text text-muted" runat="server" Display="dynamic" ControlToValidate="txtITeSPostalCode"
                                            ForeColor="Red" ValidationGroup="Save2" ErrorMessage="Please enter PostCode."></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="revtxtITeSPostalCode" class="form-text text-muted" runat="server" ControlToValidate="txtITeSPostalCode"
                                            Display="Dynamic" ForeColor="Red" ErrorMessage="InValid PostCode." ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
                                    </div>
                                    <!-- form-group / col ends -->
                                    <div class="form-group col-lg-6">
                                        <label for=""><span>Address Line 1</span><span class="text-danger text-sm m-1">*</span></label>
                                        <asp:TextBox runat="server" ID="txtITeSAddressLine1" TabIndex="7" class="form-control"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvtxtITeSAddressLine1" class="form-text text-muted" runat="server" Display="dynamic" ControlToValidate="txtITeSAddressLine1"
                                            ForeColor="Red" ValidationGroup="Save2" ErrorMessage="Please enter AddressLine1."></asp:RequiredFieldValidator>

                                    </div>
                                    <!-- form-group / col ends -->
                                    <div class="form-group col-lg-6">
                                        <label for=""><span>Address Line 2</span></label>
                                        <asp:TextBox runat="server" ID="txtITeSAddressLine2" TabIndex="8" class="form-control"></asp:TextBox>

                                    </div>
                                    <!-- form-group / col ends -->
                                    <div class="form-group col-lg-6">
                                        <label for=""><span>City / Village</span><span class="text-danger text-sm m-1">*</span></label>
                                        <asp:TextBox type="text" class="form-control" ID="txtITeSCity" TabIndex="11" runat="server" MaxLength="20"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvtxtITeSCity" class="form-text text-muted" runat="server" Display="dynamic" ControlToValidate="txtITeSCity"
                                            ForeColor="Red" ValidationGroup="Save2" ErrorMessage="Please enter City/Village."></asp:RequiredFieldValidator>
                                    </div>
                                    <!-- form-group / col ends -->
                                    <div class="mb-3 col-lg-6">
                                        <label for=""><span>State</span><span class="text-danger text-sm m-1">*</span></label>
                                        <div class="input-group">
                                            <asp:DropDownList ID="ddlITeSState" runat="server" TabIndex="9" class="custom-select" AutoPostBack="true" OnSelectedIndexChanged="ddlITeSState_SelectedIndexChanged">
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="rfvddlITeSState" runat="server" Display="dynamic" ControlToValidate="ddlITeSState" InitialValue="0" ValidationGroup="Save2" ErrorMessage="Select State"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                    <!-- form-group / col ends -->
                                    <div class="form-group col-lg-6">
                                        <label for=""><span>Telephone Number</span></label>
                                        <asp:TextBox runat="server" ID="txtITeSTelephoneNumber" TabIndex="1" class="form-control"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="revtxtITeSTelephoneNumber" class="form-text text-muted" runat="server" ControlToValidate="txtITeSTelephoneNumber"
                                            Display="Dynamic" ForeColor="Red" ErrorMessage="InValid Telephone Number." ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$"></asp:RegularExpressionValidator>
                                    </div>
                                    <!-- col ends -->
                                    <!-- input group ends -->
                                </div>
                                <!-- row ends -->
                            </div>
                            <!-- form-container-child ends -->
                            <!-- ---*--- address inside form-container ends ---*--- -->
                        </div>
                        <!-- row ends -->
                    </div>
                    <!-- form-container ends -->
                    <div class="clear"></div>
                    <div class="form-group col-12">
                        <div class="form-header-text bg-delta border-delta weight-semi-bold text-md text-beta text-capitalize">
                            <span>business development & recruitment schedule (projections)</span>
                        </div>
                        <!-- form-section ends -->
                    </div>
                    <!-- col ends -->
                    <div class="clear"></div>
                    <div class="position-relative form-container border-gamma mt-5">
                        <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                            <i class="fas fa-rupee-sign"></i>
                        </div>
                        <!-- form-title-icon ends -->
                        <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                            <span>domestic (turnover)</span>
                        </div>
                        <!-- form-header-text ends -->
                        <div class="clear"></div>
                        <div class="row">
                            <div class="form-group col-md-6 col-lg-4">
                                <label for=""><span>year 1</span></label>
                                <asp:TextBox runat="server" ID="txtDomesticTOYear1" class="form-control"></asp:TextBox>
                                <%--<asp:RegularExpressionValidator ID="revtxtDomesticTOYear1"
                                        ControlToValidate="txtDomesticTOYear1" class="form-text text-muted" runat="server" 
                                        Display="Dynamic" ForeColor="Red"
                                        ErrorMessage="Only Numbers allowed"
                                        ValidationExpression="\d+">
                                </asp:RegularExpressionValidator>--%>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-md-6 col-lg-4">
                                <label for=""><span>year 2</span></label>
                                <asp:TextBox runat="server" ID="txtDomesticTOYear2" class="form-control"></asp:TextBox>
                                <%--<asp:RegularExpressionValidator ID="revtxtDomesticTOYear2"
                                        ControlToValidate="txtDomesticTOYear2" class="form-text text-muted" runat="server" 
                                        Display="Dynamic" ForeColor="Red"
                                        ErrorMessage="Only Numbers allowed"
                                        ValidationExpression="\d+">
                                </asp:RegularExpressionValidator>--%>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-md-6 col-lg-4">
                                <label for=""><span>year 3</span></label>
                                <asp:TextBox runat="server" ID="txtDomesticTOYear3" class="form-control"></asp:TextBox>
                                <%--<asp:RegularExpressionValidator ID="revtxtDomesticTOYear3"
                                        ControlToValidate="txtDomesticTOYear3" class="form-text text-muted" runat="server" 
                                        Display="Dynamic" ForeColor="Red"
                                        ErrorMessage="Only Numbers allowed"
                                        ValidationExpression="\d+">
                                </asp:RegularExpressionValidator>--%>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-md-6 col-lg-4">
                                <label for=""><span>year 4</span></label>
                                <asp:TextBox runat="server" ID="txtDomesticTOYear4" class="form-control"></asp:TextBox>
                                <%--<asp:RegularExpressionValidator ID="revtxtDomesticTOYear4"
                                        ControlToValidate="txtDomesticTOYear4" class="form-text text-muted" runat="server" 
                                        Display="Dynamic" ForeColor="Red"
                                        ErrorMessage="Only Numbers allowed"
                                        ValidationExpression="\d+">
                                </asp:RegularExpressionValidator>--%>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-md-6 col-lg-4">
                                <label for=""><span>year 5</span></label>
                                <asp:TextBox runat="server" ID="txtDomesticTOYear5" class="form-control"></asp:TextBox>
                                <%--<asp:RegularExpressionValidator ID="revtxtDomesticTOYear5"
                                        ControlToValidate="txtDomesticTOYear5" class="form-text text-muted" runat="server" 
                                        Display="Dynamic" ForeColor="Red"
                                        ErrorMessage="Only Numbers allowed"
                                        ValidationExpression="\d+">
                                </asp:RegularExpressionValidator>--%>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-md-6 col-lg-4">
                                <label for=""><span>year 6</span></label>
                                <asp:TextBox runat="server" ID="txtDomesticTOYear6" class="form-control"></asp:TextBox>
                                <%--<asp:RegularExpressionValidator ID="revtxtDomesticTOYear6"
                                        ControlToValidate="txtDomesticTOYear6" class="form-text text-muted" runat="server" 
                                        Display="Dynamic" ForeColor="Red"
                                        ErrorMessage="Only Numbers allowed"
                                        ValidationExpression="\d+">
                                </asp:RegularExpressionValidator>--%>
                            </div>
                            <!-- form-group / col ends -->
                        </div>
                        <!-- row ends -->
                    </div>
                    <!-- form-container ends -->
                    <div class="clear"></div>
                    <div class="position-relative form-container border-gamma mt-5">
                        <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                            <i class="fas fa-rupee-sign"></i>
                        </div>
                        <!-- form-title-icon ends -->
                        <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                            <span>exports (turnover)</span>
                        </div>
                        <!-- form-header-text ends -->
                        <div class="clear"></div>
                        <div class="row">
                            <div class="form-group col-md-6 col-lg-4">
                                <label for=""><span>year 1</span></label>
                                <asp:TextBox runat="server" ID="txtExportTOYear1" class="form-control"></asp:TextBox>
                                <%--<asp:RegularExpressionValidator ID="revtxtExportTOYear1"
                                        ControlToValidate="txtExportTOYear1" class="form-text text-muted" runat="server" 
                                        Display="Dynamic" ForeColor="Red"
                                        ErrorMessage="Only Numbers allowed"
                                        ValidationExpression="\d+">
                                </asp:RegularExpressionValidator>--%>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-md-6 col-lg-4">
                                <label for=""><span>year 2</span></label>
                                <asp:TextBox runat="server" ID="txtExportTOYear2" class="form-control"></asp:TextBox>
                                <%-- <asp:RegularExpressionValidator ID="revtxtExportTOYear2"
                                        ControlToValidate="txtExportTOYear2" class="form-text text-muted" runat="server" 
                                        Display="Dynamic" ForeColor="Red"
                                        ErrorMessage="Only Numbers allowed"
                                        ValidationExpression="\d+">
                                </asp:RegularExpressionValidator>--%>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-md-6 col-lg-4">
                                <label for=""><span>year 3</span></label>
                                <asp:TextBox runat="server" ID="txtExportTOYear3" class="form-control"></asp:TextBox>
                                <%--<asp:RegularExpressionValidator ID="revtxtExportTOYear3"
                                        ControlToValidate="txtExportTOYear3" class="form-text text-muted" runat="server" 
                                        Display="Dynamic" ForeColor="Red"
                                        ErrorMessage="Only Numbers allowed"
                                        ValidationExpression="\d+">
                                </asp:RegularExpressionValidator>--%>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-md-6 col-lg-4">
                                <label for=""><span>year 4</span></label>
                                <asp:TextBox runat="server" ID="txtExportTOYear4" class="form-control"></asp:TextBox>
                                <%--<asp:RegularExpressionValidator ID="revtxtExportTOYear4"
                                        ControlToValidate="txtExportTOYear4" class="form-text text-muted" runat="server" 
                                        Display="Dynamic" ForeColor="Red"
                                        ErrorMessage="Only Numbers allowed"
                                        ValidationExpression="\d+">
                                </asp:RegularExpressionValidator>--%>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-md-6 col-lg-4">
                                <label for=""><span>year 5</span></label>
                                <asp:TextBox runat="server" ID="txtExportTOYear5" class="form-control"></asp:TextBox>
                                <%--<asp:RegularExpressionValidator ID="revtxtExportTOYear5"
                                        ControlToValidate="txtExportTOYear5" class="form-text text-muted" runat="server" 
                                        Display="Dynamic" ForeColor="Red"
                                        ErrorMessage="Only Numbers allowed"
                                        ValidationExpression="\d+">
                                </asp:RegularExpressionValidator>--%>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-md-6 col-lg-4">
                                <label for=""><span>year 6</span></label>
                                <asp:TextBox runat="server" ID="txtExportTOYear6" class="form-control"></asp:TextBox>
                                <%--<asp:RegularExpressionValidator ID="revtxtExportTOYear6"
                                        ControlToValidate="txtExportTOYear6" class="form-text text-muted" runat="server" 
                                        Display="Dynamic" ForeColor="Red"
                                        ErrorMessage="Only Numbers allowed"
                                        ValidationExpression="\d+">
                                </asp:RegularExpressionValidator>--%>
                            </div>
                            <!-- form-group / col ends -->
                        </div>
                        <!-- row ends -->
                    </div>
                    <!-- form-container ends -->
                    <div class="clear"></div>
                    <div class="position-relative form-container border-gamma mt-5">
                        <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                            <i class="fas fa-users"></i>
                        </div>
                        <!-- form-title-icon ends -->
                        <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                            <span>employees (count)</span>
                        </div>
                        <!-- form-header-text ends -->
                        <div class="clear"></div>
                        <div class="row">
                            <div class="form-group col-md-6 col-lg-4">
                                <label for=""><span>year 1</span></label>
                                <asp:TextBox runat="server" ID="txtEmployeesTOYear1" class="form-control"></asp:TextBox>
                                <%--<asp:RegularExpressionValidator ID="revtxtEmployeesTOYear1"
                                        ControlToValidate="txtEmployeesTOYear1" class="form-text text-muted" runat="server" 
                                        Display="Dynamic" ForeColor="Red"
                                        ErrorMessage="Only Numbers allowed"
                                        ValidationExpression="\d+">
                                </asp:RegularExpressionValidator>--%>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-md-6 col-lg-4">
                                <label for=""><span>year 2</span></label>
                                <asp:TextBox runat="server" ID="txtEmployeesTOYear2" class="form-control"></asp:TextBox>
                                <%--<asp:RegularExpressionValidator ID="revtxtEmployeesTOYear2"
                                        ControlToValidate="txtEmployeesTOYear2" class="form-text text-muted" runat="server" 
                                        Display="Dynamic" ForeColor="Red"
                                        ErrorMessage="Only Numbers allowed"
                                        ValidationExpression="\d+">
                                </asp:RegularExpressionValidator>--%>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-md-6 col-lg-4">
                                <label for=""><span>year 3</span></label>
                                <asp:TextBox runat="server" ID="txtEmployeesTOYear3" class="form-control"></asp:TextBox>
                                <%--<asp:RegularExpressionValidator ID="revtxtEmployeesTOYear3"
                                        ControlToValidate="txtEmployeesTOYear3" class="form-text text-muted" runat="server" 
                                        Display="Dynamic" ForeColor="Red"
                                        ErrorMessage="Only Numbers allowed"
                                        ValidationExpression="\d+">
                                </asp:RegularExpressionValidator>--%>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-md-6 col-lg-4">
                                <label for=""><span>year 4</span></label>
                                <asp:TextBox runat="server" ID="txtEmployeesTOYear4" class="form-control"></asp:TextBox>
                                <%--<asp:RegularExpressionValidator ID="revtxtEmployeesTOYear4"
                                        ControlToValidate="txtEmployeesTOYear4" class="form-text text-muted" runat="server" 
                                        Display="Dynamic" ForeColor="Red"
                                        ErrorMessage="Only Numbers allowed"
                                        ValidationExpression="\d+">
                                </asp:RegularExpressionValidator>--%>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-md-6 col-lg-4">
                                <label for=""><span>year 5</span></label>
                                <asp:TextBox runat="server" ID="txtEmployeesTOYear5" class="form-control"></asp:TextBox>
                                <%--<asp:RegularExpressionValidator ID="revtxtEmployeesTOYear5"
                                        ControlToValidate="txtEmployeesTOYear5" class="form-text text-muted" runat="server" 
                                        Display="Dynamic" ForeColor="Red"
                                        ErrorMessage="Only Numbers allowed"
                                        ValidationExpression="\d+">
                                </asp:RegularExpressionValidator>--%>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-md-6 col-lg-4">
                                <label for=""><span>year 6</span></label>
                                <asp:TextBox runat="server" ID="txtEmployeesTOYear6" class="form-control"></asp:TextBox>
                                <%--<asp:RegularExpressionValidator ID="revtxtEmployeesTOYear6"
                                        ControlToValidate="txtEmployeesTOYear6" class="form-text text-muted" runat="server" 
                                        Display="Dynamic" ForeColor="Red"
                                        ErrorMessage="Only Numbers allowed"
                                        ValidationExpression="\d+">
                                </asp:RegularExpressionValidator>--%>
                            </div>
                            <!-- form-group / col ends -->
                        </div>
                        <!-- row ends -->
                    </div>
                    <!-- form-container ends -->
                    <div class="clear"></div>
                    <%--<p class="text-danger"><strong>Temporary Note: </strong>Below given module will only appear if <u>Unit Type = Expansion/Diversification</u> will be selected.</p>--%>
                    <div class="clear"></div>
                    <div class="position-relative form-container border-gamma mt-5" runat="server" visible="false" id="DivUndertakingExpDiv">
                        <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                            <i class="fas fa-building"></i>
                        </div>
                        <!-- form-title-icon ends -->
                        <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                            <span>for existing units, undertaking expansion / diversification</span>
                        </div>
                        <!-- form-header-text ends -->
                        <div class="clear"></div>
                        <div class="row">
                            <div class="form-group col-lg-6">
                                <label for=""><span>current area under usage</span><span class="text-danger text-sm m-1">*</span></label>
                                <div class="input-group">
                                    <asp:TextBox class="form-control" ID="txtAreaUsage" runat="server" MaxLength="5" TextMode="Number"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="revtxtAreaUsage"
                                        ControlToValidate="txtAreaUsage" class="form-text text-muted" runat="server" Display="Dynamic" ForeColor="Red"
                                        ErrorMessage="Only Numbers allowed"
                                        ValidationExpression="\d+">
                                    </asp:RegularExpressionValidator>
                                    <asp:DropDownList ID="ddlAreaUsageScale" runat="server" TabIndex="9" class="custom-select" AutoPostBack="true" OnSelectedIndexChanged="ddlAreaUsageScale_SelectedIndexChanged">
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="rfvddlAreaUsageScale" runat="server" Display="dynamic" ControlToValidate="ddlAreaUsageScale" InitialValue="0" ValidationGroup="Save2" ErrorMessage="Select Area Usage Scale"></asp:RequiredFieldValidator>

                                </div>
                                <!-- input-group ends -->
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-lg-6">
                                <label for=""><span>number of employees in existing unit</span><span class="text-danger text-sm m-1">*</span></label>
                                <asp:TextBox class="form-control" ID="txtNoOfEmployee" runat="server" MaxLength="7" TextMode="Number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvtxtNoOfEmployee" runat="server" Display="dynamic"
                                    ControlToValidate="txtNoOfEmployee" InitialValue="0" ValidationGroup="Save2"
                                    ErrorMessage="Enter no of employees in existing unit"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revtxtNoOfEmployee"
                                    ControlToValidate="txtNoOfEmployee" class="form-text text-muted" runat="server" Display="Dynamic" ForeColor="Red"
                                    ErrorMessage="Only Numbers allowed"
                                    ValidationExpression="\d+">
                                </asp:RegularExpressionValidator>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-lg-6">
                                <label for=""><span>estimated annual EPF contribution for current employees</span><span class="text-danger text-sm m-1">*</span></label>
                                <asp:TextBox class="form-control" ID="txtEmployeeEPFAmount" runat="server" MaxLength="7" TextMode="Number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvtxtEmployeeEPFAmount" runat="server" Display="dynamic"
                                    ControlToValidate="txtEmployeeEPFAmount" InitialValue="0" ValidationGroup="Save2"
                                    ErrorMessage="Enter Annual EPF contribution for current Employees"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revtxtEmployeeEPFAmount"
                                    ControlToValidate="txtEmployeeEPFAmount" class="form-text text-muted" runat="server" Display="Dynamic" ForeColor="Red"
                                    ErrorMessage="Only Numbers allowed"
                                    ValidationExpression="\d+">
                                </asp:RegularExpressionValidator>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-lg-6">
                                <label for=""><span>average of last one (1) year's electricity consumption in units</span><span class="text-danger text-sm m-1">*</span></label>
                                <asp:TextBox class="form-control" ID="txtAvgLastYrEleUnit" runat="server" MaxLength="7" TextMode="Number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvtxtAvgLastYrEleUnit" runat="server" Display="dynamic"
                                    ControlToValidate="txtAvgLastYrEleUnit" InitialValue="0" ValidationGroup="Save2"
                                    ErrorMessage="Enter average of last one (1) year's electricity consumption in units"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revtxtAvgLastYrEleUnit"
                                    ControlToValidate="txtAvgLastYrEleUnit" class="form-text text-muted" runat="server" Display="Dynamic" ForeColor="Red"
                                    ErrorMessage="Only Numbers allowed"
                                    ValidationExpression="\d+">
                                </asp:RegularExpressionValidator>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-lg-12">
                                <label for=""><span>annual turnover of last three (3) years</span><span class="text-danger text-sm m-1">*</span></label>
                                <div class="row">
                                    <div class="form-group col-md-6 col-lg-4">
                                        <label for=""><span>year (-2)</span></label>
                                        <asp:TextBox class="form-control" ID="txtTOYear2" runat="server" MaxLength="7" TextMode="Number"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvtxtTOYear2" runat="server" Display="dynamic"
                                            ControlToValidate="txtTOYear2" InitialValue="0" ValidationGroup="Save2"
                                            ErrorMessage="Enter Turn Over Of Year(-2)."></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="revtxtTOYear2"
                                            ControlToValidate="txtTOYear2" class="form-text text-muted" runat="server" Display="Dynamic" ForeColor="Red"
                                            ErrorMessage="Only Numbers allowed"
                                            ValidationExpression="\d+">
                                        </asp:RegularExpressionValidator>
                                    </div>
                                    <!-- form-group / col ends -->
                                    <div class="form-group col-md-6 col-lg-4">
                                        <label for=""><span>year (-1)</span></label>
                                        <asp:TextBox class="form-control" ID="txtTOYear1" runat="server" MaxLength="7" TextMode="Number"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvtxtTOYear1" runat="server" Display="dynamic"
                                            ControlToValidate="txtTOYear1" InitialValue="0" ValidationGroup="Save2"
                                            ErrorMessage="Enter Turn Over Of Year(-1)."></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="revtxtTOYear1"
                                            ControlToValidate="txtTOYear1" class="form-text text-muted" runat="server" Display="Dynamic" ForeColor="Red"
                                            ErrorMessage="Only Numbers allowed"
                                            ValidationExpression="\d+">
                                        </asp:RegularExpressionValidator>
                                    </div>
                                    <!-- form-group / col ends -->
                                    <div class="form-group col-md-6 col-lg-4">
                                        <label for=""><span>year 0 (Current Year)</span></label>
                                        <asp:TextBox class="form-control" ID="txtTOYear0" runat="server" MaxLength="7" TextMode="Number"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvtxtTOYear0" runat="server" Display="dynamic"
                                            ControlToValidate="txtTOYear0" InitialValue="0" ValidationGroup="Save2"
                                            ErrorMessage="Enter Turn Over Of Current Year."></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="revtxtTOYear0"
                                            ControlToValidate="txtTOYear0" class="form-text text-muted" runat="server" Display="Dynamic" ForeColor="Red"
                                            ErrorMessage="Only Numbers allowed"
                                            ValidationExpression="\d+">
                                        </asp:RegularExpressionValidator>
                                    </div>
                                    <!-- form-group / col ends -->
                                </div>
                                <!-- row ends -->
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-lg-12">
                                <label for=""><span>VAT / CST / GST paid to Government of Gujarat over last three (3) years</span><span class="text-danger text-sm m-1">*</span></label>
                                <div class="row">
                                    <div class="form-group col-md-6 col-lg-4">
                                        <label for=""><span>year (-2)</span></label>
                                        <asp:TextBox class="form-control" ID="txtGSTYear2" runat="server" MaxLength="7" TextMode="Number"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvtxtGSTYear2" runat="server" Display="dynamic"
                                            ControlToValidate="txtGSTYear2" InitialValue="0" ValidationGroup="Save2"
                                            ErrorMessage="Enter GST amount Of Year(-2)."></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="revtxtGSTYear2"
                                            ControlToValidate="txtGSTYear2" class="form-text text-muted" runat="server" Display="Dynamic" ForeColor="Red"
                                            ErrorMessage="Only Numbers allowed"
                                            ValidationExpression="\d+">
                                        </asp:RegularExpressionValidator>
                                    </div>
                                    <!-- form-group / col ends -->
                                    <div class="form-group col-md-6 col-lg-4">
                                        <label for=""><span>year (-1)</span></label>
                                        <asp:TextBox class="form-control" ID="txtGSTYear1" runat="server" MaxLength="7" TextMode="Number"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvtxtGSTYear1" runat="server" Display="dynamic"
                                            ControlToValidate="txtGSTYear1" InitialValue="0" ValidationGroup="Save2"
                                            ErrorMessage="Enter GST amount Of Year(-1)."></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="revtxtGSTYear1"
                                            ControlToValidate="txtGSTYear1" class="form-text text-muted" runat="server" Display="Dynamic" ForeColor="Red"
                                            ErrorMessage="Only Numbers allowed"
                                            ValidationExpression="\d+">
                                        </asp:RegularExpressionValidator>
                                    </div>
                                    <!-- form-group / col ends -->
                                    <div class="form-group col-md-6 col-lg-4">
                                        <label for=""><span>year 0 (Current Year)</span></label>
                                        <asp:TextBox class="form-control" ID="txtGSTYear0" runat="server" MaxLength="7" TextMode="Number"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvtxtGSTYear0" runat="server" Display="dynamic"
                                            ControlToValidate="txtGSTYear0" InitialValue="0" ValidationGroup="Save2"
                                            ErrorMessage="Enter GST amount Of Current Year."></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="revtxtGSTYear0"
                                            ControlToValidate="txtGSTYear0" class="form-text text-muted" runat="server" Display="Dynamic" ForeColor="Red"
                                            ErrorMessage="Only Numbers allowed"
                                            ValidationExpression="\d+">
                                        </asp:RegularExpressionValidator>
                                    </div>
                                    <!-- form-group / col ends -->
                                </div>
                                <!-- row ends -->
                            </div>
                            <!-- form-group / col ends -->
                        </div>
                        <!-- row ends -->
                    </div>
                    <!-- form-container ends -->
                    <div class="clear"></div>
                    <div class="text-right">
                        <asp:Button runat="server" ID="btnITeSReset" Text="Reset Form" TabIndex="13" class="btn btn-outline-secondary" OnClick="btnITeSReset_Click" />
                        <asp:Button runat="server" ID="btnITeSSave" Text="Save & Continue" TabIndex="13" class="btn btn-primary" OnClick="btnITeSSave_Click" ValidationGroup="Save2" />
                    </div>
                    <!-- text-right ends -->
                    <!-- -----*----- TAB PANEL CONTENT AREA ENDS -----*----- -->
                </div>
                <!-- tab-pane ends -->
                <div role="tabpanel" class="tab-pane fade show active" id="tabFinProj" runat="server" aria-labelledby="tabItem3">
                    <!-- -----*----- TAB PANEL CONTENT AREA STARTS -----*----- -->
                    <div class="position-relative form-container border-gamma">
                        <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                            <i class="fas fa-rupee-sign"></i>
                        </div>
                        <!-- form-title-icon ends -->
                        <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                            <span>revenue forecast</span>
                        </div>
                        <!-- form-header-text ends -->
                        <div class="clear"></div>
                        <div class="row">
                            <div class="form-group col-md-6 col-lg-4">
                                <label for=""><span>year 1</span></label>
                                <asp:TextBox runat="server" ID="txtRevenueForecastYear1" class="form-control"></asp:TextBox>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-md-6 col-lg-4">
                                <label for=""><span>year 2</span></label>
                                <asp:TextBox runat="server" ID="txtRevenueForecastYear2" class="form-control"></asp:TextBox>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-md-6 col-lg-4">
                                <label for=""><span>year 3</span></label>
                                <asp:TextBox runat="server" ID="txtRevenueForecastYear3" class="form-control"></asp:TextBox>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-md-6 col-lg-4">
                                <label for=""><span>year 4</span></label>
                                <asp:TextBox runat="server" ID="txtRevenueForecastYear4" class="form-control"></asp:TextBox>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-md-6 col-lg-4">
                                <label for=""><span>year 5</span></label>
                                <asp:TextBox runat="server" ID="txtRevenueForecastYear5" class="form-control"></asp:TextBox>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-md-6 col-lg-4">
                                <label for=""><span>year 6</span></label>
                                <asp:TextBox runat="server" ID="txtRevenueForecastYear6" class="form-control"></asp:TextBox>
                            </div>
                            <!-- form-group / col ends -->
                        </div>
                        <!-- row ends -->
                    </div>
                    <!-- form-container ends -->
                    <div class="clear"></div>
                    <div class="position-relative form-container border-gamma mt-5">
                        <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                            <i class="fas fa-chart-line"></i>
                        </div>
                        <!-- form-title-icon ends -->
                        <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                            <span>expenditure forecast</span>
                        </div>
                        <!-- form-header-text ends -->
                        <div class="clear"></div>
                        <div class="row">
                            <div class="form-group col-md-6 col-lg-4">
                                <label for=""><span>year 1</span></label>
                                <asp:TextBox runat="server" ID="txtExpenditureForecastYear1" class="form-control"></asp:TextBox>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-md-6 col-lg-4">
                                <label for=""><span>year 2</span></label>
                                <asp:TextBox runat="server" ID="txtExpenditureForecastYear2" class="form-control"></asp:TextBox>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-md-6 col-lg-4">
                                <label for=""><span>year 3</span></label>
                                <asp:TextBox runat="server" ID="txtExpenditureForecastYear3" class="form-control"></asp:TextBox>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-md-6 col-lg-4">
                                <label for=""><span>year 4</span></label>
                                <asp:TextBox runat="server" ID="txtExpenditureForecastYear4" class="form-control"></asp:TextBox>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-md-6 col-lg-4">
                                <label for=""><span>year 5</span></label>
                                <asp:TextBox runat="server" ID="txtExpenditureForecastYear5" class="form-control"></asp:TextBox>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-md-6 col-lg-4">
                                <label for=""><span>year 6</span></label>
                                <asp:TextBox runat="server" ID="txtExpenditureForecastYear6" class="form-control"></asp:TextBox>
                            </div>
                            <!-- form-group / col ends -->
                        </div>
                        <!-- row ends -->
                    </div>
                    <!-- form-container ends -->
                    <div class="clear"></div>
                    <div class="position-relative form-container border-gamma mt-5">
                        <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                            <i class="fas fa-chart-pie"></i>
                        </div>
                        <!-- form-title-icon ends -->
                        <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                            <span>net profit forecast</span>
                        </div>
                        <!-- form-header-text ends -->
                        <div class="clear"></div>
                        <div class="row">
                            <div class="form-group col-md-6 col-lg-4">
                                <label for=""><span>year 1</span></label>
                                <asp:TextBox runat="server" ID="txtNetProfitForecastYear1" class="form-control"></asp:TextBox>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-md-6 col-lg-4">
                                <label for=""><span>year 2</span></label>
                                <asp:TextBox runat="server" ID="txtNetProfitForecastYear2" class="form-control"></asp:TextBox>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-md-6 col-lg-4">
                                <label for=""><span>year 3</span></label>
                                <asp:TextBox runat="server" ID="txtNetProfitForecastYear3" class="form-control"></asp:TextBox>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-md-6 col-lg-4">
                                <label for=""><span>year 4</span></label>
                                <asp:TextBox runat="server" ID="txtNetProfitForecastYear4" class="form-control"></asp:TextBox>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-md-6 col-lg-4">
                                <label for=""><span>year 5</span></label>
                                <asp:TextBox runat="server" ID="txtNetProfitForecastYear5" class="form-control"></asp:TextBox>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-md-6 col-lg-4">
                                <label for=""><span>year 6</span></label>
                                <asp:TextBox runat="server" ID="txtNetProfitForecastYear6" class="form-control"></asp:TextBox>
                            </div>
                            <!-- form-group / col ends -->
                        </div>
                        <!-- row ends -->
                    </div>
                    <!-- form-container ends -->
                    <div class="clear"></div>
                    <div class="position-relative form-container border-gamma mt-5">
                        <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                            <i class="fas fa-sitemap"></i>
                        </div>
                        <!-- form-title-icon ends -->
                        <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                            <span>cash flows from business operations</span>
                        </div>
                        <!-- form-header-text ends -->
                        <div class="clear"></div>
                        <div class="row">
                            <div class="form-group col-md-6 col-lg-4">
                                <label for=""><span>year 1</span></label>
                                <asp:TextBox runat="server" ID="txtBOForecastYear1" class="form-control"></asp:TextBox>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-md-6 col-lg-4">
                                <label for=""><span>year 2</span></label>
                                <asp:TextBox runat="server" ID="txtBOForecastYear2" class="form-control"></asp:TextBox>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-md-6 col-lg-4">
                                <label for=""><span>year 3</span></label>
                                <asp:TextBox runat="server" ID="txtBOForecastYear3" class="form-control"></asp:TextBox>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-md-6 col-lg-4">
                                <label for=""><span>year 4</span></label>
                                <asp:TextBox runat="server" ID="txtBOForecastYear4" class="form-control"></asp:TextBox>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-md-6 col-lg-4">
                                <label for=""><span>year 5</span></label>
                                <asp:TextBox runat="server" ID="txtBOForecastYear5" class="form-control"></asp:TextBox>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-md-6 col-lg-4">
                                <label for=""><span>year 6</span></label>
                                <asp:TextBox runat="server" ID="txtBOForecastYear6" class="form-control"></asp:TextBox>
                            </div>
                            <!-- form-group / col ends -->
                        </div>
                        <!-- row ends -->
                    </div>
                    <!-- form-container ends -->
                    <div class="clear"></div>
                    <div class="position-relative form-container border-gamma mt-5">
                        <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                            <i class="far fa-envelope"></i>
                        </div>
                        <!-- form-title-icon ends -->
                        <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                            <span>means of financing the project</span>
                        </div>
                        <!-- form-header-text ends -->
                        <div class="clear"></div>
                        <div class="row">
                            <div class="form-group col-lg-6">
                                <label for=""><span>Expected Government of Gujarat (GoG) assistance</span></label>
                                <asp:TextBox runat="server" ID="txtGoGAssistance" class="form-control" TextMode="Number"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="revtxtGoGAssistance"
                                    ControlToValidate="txtGoGAssistance" class="form-text text-muted" runat="server" Display="Dynamic" ForeColor="Red"
                                    ErrorMessage="Only Numbers allowed"
                                    ValidationExpression="\d+">
                                </asp:RegularExpressionValidator>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-lg-6">
                                <label for=""><span>Expected assistance from other Government organisations</span></label>
                                <asp:TextBox runat="server" ID="txtOtherGovtOrg" class="form-control" TextMode="Number"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="revtxtOtherGovtOrg"
                                    ControlToValidate="txtOtherGovtOrg" class="form-text text-muted" runat="server" Display="Dynamic" ForeColor="Red"
                                    ErrorMessage="Only Numbers allowed"
                                    ValidationExpression="\d+">
                                </asp:RegularExpressionValidator>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-lg-6">
                                <label for=""><span>promoters' contribution</span><span class="text-danger text-sm m-1">*</span></label>
                                <asp:TextBox runat="server" ID="txtPromoterContri" class="form-control" TextMode="Number"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="revtxtPromoterContri"
                                    ControlToValidate="txtPromoterContri" class="form-text text-muted" runat="server" Display="Dynamic" ForeColor="Red"
                                    ErrorMessage="Only Numbers allowed"
                                    ValidationExpression="\d+">
                                </asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="rfvtxtPromoterContri" class="form-text text-muted" runat="server" Display="dynamic" ControlToValidate="txtPromoterContri"
                                    ForeColor="Red" ValidationGroup="Save3" ErrorMessage="Please enter promoters' contribution."></asp:RequiredFieldValidator>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-lg-6">
                                <label for=""><span>debt / borrowing</span></label>
                                <asp:TextBox runat="server" ID="txtDebtBorrow" class="form-control" TextMode="Number"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="revtxtDebtBorrow"
                                    ControlToValidate="txtDebtBorrow" class="form-text text-muted" runat="server" Display="Dynamic" ForeColor="Red"
                                    ErrorMessage="Only Numbers allowed"
                                    ValidationExpression="\d+">
                                </asp:RegularExpressionValidator>
                            </div>
                            <!-- form-group / col ends -->

                            <!-- col ends -->
                            <div class="form-group col-lg-6">
                                <label for=""><span>total (<i class="fas fa-rupee-sign"></i>)</span><span class="text-danger text-sm m-1">*</span></label>
                                <%-- <div class="text-lg weight-bold">00000000</div>--%>
                                <asp:Label ID="lblTotalAmount" class="text-lg weight-bold" runat="server" Text="00000000"></asp:Label>
                            </div>
                            <!-- form-group / col ends -->
                        </div>
                        <!-- row ends -->
                    </div>
                    <!-- form-container ends -->
                    <div class="clear"></div>
                    <div class="text-right">
                        <asp:Button runat="server" ID="btnFinancialReset" Text="Reset Form"
                            TabIndex="13" class="btn btn-outline-secondary" OnClick="btnFinancialReset_Click" />
                        <asp:Button runat="server" ID="btnFinancialSave" Text="Save & Continue"
                            TabIndex="13" class="btn btn-primary" OnClick="btnFinancialSave_Click" ValidationGroup="Save3" />
                    </div>
                    <!-- text-right ends -->
                    <!-- -----*----- TAB PANEL CONTENT AREA ENDS -----*----- -->
                </div>
                <!-- tab-pane ends -->
                <div role="tabpanel" class="tab-pane fade show active" id="tabAssisSought" runat="server" aria-labelledby="tabItem4">
                    <!-- -----*----- TAB PANEL CONTENT AREA STARTS -----*----- -->
                    <div class="position-relative table-container border-gamma">
                        <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                            <i class="fas fa-rupee-sign"></i>
                        </div>
                        <!-- form-title-icon ends -->
                        <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                            <span>Assistance Sought Under The Scheme</span>
                        </div>
                        <!-- form-header-text ends -->
                        <div class="clear"></div>
                        <div class="row">
                            <div class="col-12 weight-medium text-sm">
                                <table class="table table-bordered table-striped annex-2-draft-table">
                                    <tr>
                                        <th>Sr.</th>
                                        <th>Assistance Details</th>
                                    </tr>
                                    <asp:Repeater runat="server" ID="RepterDetails" OnItemDataBound="RepterDetails_ItemDataBound">
                                        <HeaderTemplate>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblIncentiveID" runat="server" Text='<%#Eval("incentive_id") %>' Visible="false"></asp:Label>
                                            <asp:Label ID="lblISConsidered" runat="server" Text='<%#Eval("ISConsidered") %>' Visible="false"></asp:Label>
                                            <asp:Label ID="lblIsAssistanceClaim" runat="server" Text='<%#Eval("IsAssistanceClaim") %>' Visible="false"></asp:Label>

                                            <tr>
                                                <td>
                                                    <asp:Label ID="lblSrNo" runat="server" Text='<%#Eval("srNo") %>'></asp:Label></td>
                                                <td>
                                                    <div class="row">
                                                        <div class="col-lg-6">
                                                            <div class="text-xs text-beta">Assistance Type:</div>
                                                            <div class="text-md weight-bold">
                                                                <asp:Label ID="lblAssistanceName" runat="server" Text='<%#Eval("incentive_name") %>'></asp:Label>
                                                            </div>
                                                        </div>
                                                        <!-- col ends -->
                                                        <div class="col-lg-6">
                                                            <hr class="hr-one mt-2 d-lg-none">
                                                            <!-- 576 768 -->
                                                            <div class="text-xs text-beta">About Assistance:</div>
                                                            <div class="text-xs">
                                                                <asp:Label ID="lblAssistanceValue" runat="server" Text='<%#Eval("Assistance_Detail") %>'></asp:Label>
                                                            </div>
                                                        </div>
                                                        <!-- col ends -->

                                                        <div class="col-lg-6">
                                                            <hr class="hr-one mt-2" />
                                                            <div class="text-xs text-beta mb-2 text-capitalize">do you want to claim this assistance?</div>
                                                            <div class="form-check form-check-inline">
                                                                <asp:UpdatePanel ID="upradio" runat="server">
                                                                    <ContentTemplate>
                                                                        <asp:RadioButtonList ID="rdlAssistanceClaim" runat="server" class="form-check-input" Font-Bold="True" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="rdlAssistanceClaim_SelectedIndexChanged" BackColor="White">
                                                                            <asp:ListItem Value="y" Selected="True"><label class="form-check-label text-sm weight-semi-bold text-capitalize text-success" for="">yes</label></asp:ListItem>
                                                                            <asp:ListItem Value="n"><label class="form-check-label text-sm weight-semi-bold text-capitalize text-danger" for="">no</label></asp:ListItem>
                                                                        </asp:RadioButtonList>
                                                                    </ContentTemplate>
                                                                </asp:UpdatePanel>
                                                            </div>
                                                            <!-- form-check ends -->
                                                            <div class="clear"></div>
                                                        </div>

                                                        <!-- col ends -->
                                                        <div class="col-lg-6">
                                                            <hr class="hr-one mt-2">
                                                            <label for="" class="text-xs text-beta mb-2">Approximate Amount of Assistance Sought:</label>

                                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                                <ContentTemplate>
                                                                    <asp:TextBox ID="txtAssistaceAmount" runat="server" class="form-control mb-1" Text='<%#Eval("assistance_amount") %>'></asp:TextBox>
                                                                    <small id="" class="form-text text-danger">
                                                                        <asp:RegularExpressionValidator ID="regexvalTxtAssAmt" Display="Dynamic" ValidationExpression="^[a-zA-Z0-9. ]*$" ControlToValidate="txtAssistaceAmount" runat="server" ErrorMessage="Special characters are not allowed."></asp:RegularExpressionValidator></small>
                                                                    <%--Text='<%#Eval("assistance_amount") %>'--%>
                                                                </ContentTemplate>
                                                                <%--       <Triggers>
                                                                <asp:AsyncPostBackTrigger ControlID="rdlAssistanceClaim" EventName="SelectedIndexChanged" />
                                                            </Triggers>--%>
                                                            </asp:UpdatePanel>
                                                            <%--<input type="text" class="form-control mb-1" name="" id="">
                                                            <small id="" class="form-text text-danger">Error message</small>--%>
                                                        </div>
                                                        <!-- col ends -->
                                                        <div class="col-lg-12">
                                                            <hr class="hr-one mt-2">
                                                            <label for="" class="text-xs text-beta mb-2">Applicant Remarks:</label>
                                                            <%--<textarea class="form-control" name="" id=""></textarea>--%>

                                                            <asp:TextBox ID="txtApplicantRemarks" runat="server" class="form-control mt-1 mr-3" TextMode="MultiLine" placeholder="Remarks" Text='<%#Eval("remarks") %>'></asp:TextBox>
                                                            <%--Text='<%#Eval("remarks") %>'--%>

                                                            <small id="" class="form-text text-danger">
                                                                <asp:RegularExpressionValidator ID="regexvalTxtAppRem" ValidationExpression="^[a-zA-Z0-9. ]*$" ControlToValidate="txtApplicantRemarks" runat="server" ErrorMessage="Special characters are not allowed."></asp:RegularExpressionValidator></small>
                                                        </div>
                                                        <!-- col ends -->
                                                    </div>
                                                    <!-- row ends -->
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                        <FooterTemplate>
                                        </FooterTemplate>
                                    </asp:Repeater>

                                    <%--                               <tr>
                                        <td>01</td>
                                        <td>
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <div class="text-xs text-beta">Assistance Type:</div>
                                                    <div class="text-md weight-bold">Capital Subsidy</div>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-6">
                                                    <hr class="hr-one mt-2 d-lg-none">
                                                    <!-- 576 768 -->
                                                    <div class="text-xs text-beta">About Assistance:</div>
                                                    <div class="text-xs">-</div>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-6">
                                                    <hr class="hr-one mt-2">
                                                    <div class="text-xs text-beta mb-2 text-capitalize">do you want to claim this assistance?</div>
                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="radio" name="" id="" value="yes" checked>
                                                        <label class="form-check-label text-sm weight-semi-bold text-capitalize text-success" for="">yes</label>
                                                    </div>
                                                    <!-- form-check ends -->
                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="radio" name="" id="" value="no">
                                                        <label class="form-check-label text-sm weight-semi-bold text-capitalize text-danger" for="">no</label>
                                                    </div>
                                                    <!-- form-check ends -->
                                                    <div class="clear"></div>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-6">
                                                    <hr class="hr-one mt-2">
                                                    <label for="" class="text-xs text-beta mb-2">Approximate Amount of Assistance Sought:</label>
                                                    <input type="text" class="form-control mb-1" name="" id="">
                                                    <small id="" class="form-text text-danger">Error message</small>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-12">
                                                    <hr class="hr-one mt-2">
                                                    <label for="" class="text-xs text-beta mb-2">Applicant Remarks:</label>
                                                    <textarea class="form-control" name="" id=""></textarea>
                                                    <small id="" class="form-text text-danger">Error message</small>
                                                </div>
                                                <!-- col ends -->
                                            </div>
                                            <!-- row ends -->
                                        </td>
                                    </tr>
                                  <tr>
                                        <td>02</td>
                                        <td>
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <div class="text-xs text-beta">Assistance Type:</div>
                                                    <div class="text-md weight-bold">Reimbursement of Stamp Duty / Registration Fee</div>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-6">
                                                    <hr class="hr-one mt-2 d-lg-none">
                                                    <!-- 576 768 -->
                                                    <div class="text-xs text-beta">About Assistance:</div>
                                                    <div class="text-xs">-</div>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-6">
                                                    <hr class="hr-one mt-2">
                                                    <div class="text-xs text-beta mb-2 text-capitalize">do you want to claim this assistance?</div>
                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="radio" name="" id="" value="yes" checked>
                                                        <label class="form-check-label text-sm weight-semi-bold text-capitalize text-success" for="">yes</label>
                                                    </div>
                                                    <!-- form-check ends -->
                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="radio" name="" id="" value="no">
                                                        <label class="form-check-label text-sm weight-semi-bold text-capitalize text-danger" for="">no</label>
                                                    </div>
                                                    <!-- form-check ends -->
                                                    <div class="clear"></div>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-6">
                                                    <hr class="hr-one mt-2">
                                                    <label for="" class="text-xs text-beta mb-2">Approximate Amount of Assistance Sought:</label>
                                                    <input type="text" class="form-control mb-1" name="" id="">
                                                    <small id="" class="form-text text-danger">Error message</small>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-12">
                                                    <hr class="hr-one mt-2">
                                                    <label for="" class="text-xs text-beta mb-2">Applicant Remarks:</label>
                                                    <textarea class="form-control" name="" id=""></textarea>
                                                    <small id="" class="form-text text-danger">Error message</small>
                                                </div>
                                                <!-- col ends -->
                                            </div>
                                            <!-- row ends -->
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>03</td>
                                        <td>
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <div class="text-xs text-beta">Assistance Type:</div>
                                                    <div class="text-md weight-bold">Lease Rental Subsidy</div>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-6">
                                                    <hr class="hr-one mt-2 d-lg-none">
                                                    <!-- 576 768 -->
                                                    <div class="text-xs text-beta">About Assistance:</div>
                                                    <div class="text-xs">-</div>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-6">
                                                    <hr class="hr-one mt-2">
                                                    <div class="text-xs text-beta mb-2 text-capitalize">do you want to claim this assistance?</div>
                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="radio" name="" id="" value="yes" checked>
                                                        <label class="form-check-label text-sm weight-semi-bold text-capitalize text-success" for="">yes</label>
                                                    </div>
                                                    <!-- form-check ends -->
                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="radio" name="" id="" value="no">
                                                        <label class="form-check-label text-sm weight-semi-bold text-capitalize text-danger" for="">no</label>
                                                    </div>
                                                    <!-- form-check ends -->
                                                    <div class="clear"></div>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-6">
                                                    <hr class="hr-one mt-2">
                                                    <label for="" class="text-xs text-beta mb-2">Approximate Amount of Assistance Sought:</label>
                                                    <input type="text" class="form-control mb-1" name="" id="">
                                                    <small id="" class="form-text text-danger">Error message</small>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-12">
                                                    <hr class="hr-one mt-2">
                                                    <label for="" class="text-xs text-beta mb-2">Applicant Remarks:</label>
                                                    <textarea class="form-control" name="" id=""></textarea>
                                                    <small id="" class="form-text text-danger">Error message</small>
                                                </div>
                                                <!-- col ends -->
                                            </div>
                                            <!-- row ends -->
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>04</td>
                                        <td>
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <div class="text-xs text-beta">Assistance Type:</div>
                                                    <div class="text-md weight-bold">Interest Subsidy</div>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-6">
                                                    <hr class="hr-one mt-2 d-lg-none">
                                                    <!-- 576 768 -->
                                                    <div class="text-xs text-beta">About Assistance:</div>
                                                    <div class="text-xs">-</div>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-6">
                                                    <hr class="hr-one mt-2">
                                                    <div class="text-xs text-beta mb-2 text-capitalize">do you want to claim this assistance?</div>
                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="radio" name="" id="" value="yes" checked>
                                                        <label class="form-check-label text-sm weight-semi-bold text-capitalize text-success" for="">yes</label>
                                                    </div>
                                                    <!-- form-check ends -->
                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="radio" name="" id="" value="no">
                                                        <label class="form-check-label text-sm weight-semi-bold text-capitalize text-danger" for="">no</label>
                                                    </div>
                                                    <!-- form-check ends -->
                                                    <div class="clear"></div>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-6">
                                                    <hr class="hr-one mt-2">
                                                    <label for="" class="text-xs text-beta mb-2">Approximate Amount of Assistance Sought:</label>
                                                    <input type="text" class="form-control mb-1" name="" id="">
                                                    <small id="" class="form-text text-danger">Error message</small>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-12">
                                                    <hr class="hr-one mt-2">
                                                    <label for="" class="text-xs text-beta mb-2">Applicant Remarks:</label>
                                                    <textarea class="form-control" name="" id=""></textarea>
                                                    <small id="" class="form-text text-danger">Error message</small>
                                                </div>
                                                <!-- col ends -->
                                            </div>
                                            <!-- row ends -->
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>05</td>
                                        <td>
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <div class="text-xs text-beta">Assistance Type:</div>
                                                    <div class="text-md weight-bold">Power Tariff and Electricity Duty</div>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-6">
                                                    <hr class="hr-one mt-2 d-lg-none">
                                                    <!-- 576 768 -->
                                                    <div class="text-xs text-beta">About Assistance:</div>
                                                    <div class="text-xs">-</div>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-6">
                                                    <hr class="hr-one mt-2">
                                                    <div class="text-xs text-beta mb-2 text-capitalize">do you want to claim this assistance?</div>
                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="radio" name="" id="" value="yes" checked>
                                                        <label class="form-check-label text-sm weight-semi-bold text-capitalize text-success" for="">yes</label>
                                                    </div>
                                                    <!-- form-check ends -->
                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="radio" name="" id="" value="no">
                                                        <label class="form-check-label text-sm weight-semi-bold text-capitalize text-danger" for="">no</label>
                                                    </div>
                                                    <!-- form-check ends -->
                                                    <div class="clear"></div>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-6">
                                                    <hr class="hr-one mt-2">
                                                    <label for="" class="text-xs text-beta mb-2">Approximate Amount of Assistance Sought:</label>
                                                    <input type="text" class="form-control mb-1" name="" id="">
                                                    <small id="" class="form-text text-danger">Error message</small>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-12">
                                                    <hr class="hr-one mt-2">
                                                    <label for="" class="text-xs text-beta mb-2">Applicant Remarks:</label>
                                                    <textarea class="form-control" name="" id=""></textarea>
                                                    <small id="" class="form-text text-danger">Error message</small>
                                                </div>
                                                <!-- col ends -->
                                            </div>
                                            <!-- row ends -->
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>06</td>
                                        <td>
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <div class="text-xs text-beta">Assistance Type:</div>
                                                    <div class="text-md weight-bold">VAT/CST/GST Incentive</div>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-6">
                                                    <hr class="hr-one mt-2 d-lg-none">
                                                    <!-- 576 768 -->
                                                    <div class="text-xs text-beta">About Assistance:</div>
                                                    <div class="text-xs">-</div>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-6">
                                                    <hr class="hr-one mt-2">
                                                    <div class="text-xs text-beta mb-2 text-capitalize">do you want to claim this assistance?</div>
                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="radio" name="" id="" value="yes" checked>
                                                        <label class="form-check-label text-sm weight-semi-bold text-capitalize text-success" for="">yes</label>
                                                    </div>
                                                    <!-- form-check ends -->
                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="radio" name="" id="" value="no">
                                                        <label class="form-check-label text-sm weight-semi-bold text-capitalize text-danger" for="">no</label>
                                                    </div>
                                                    <!-- form-check ends -->
                                                    <div class="clear"></div>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-6">
                                                    <hr class="hr-one mt-2">
                                                    <label for="" class="text-xs text-beta mb-2">Approximate Amount of Assistance Sought:</label>
                                                    <input type="text" class="form-control mb-1" name="" id="">
                                                    <small id="" class="form-text text-danger">Error message</small>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-12">
                                                    <hr class="hr-one mt-2">
                                                    <label for="" class="text-xs text-beta mb-2">Applicant Remarks:</label>
                                                    <textarea class="form-control" name="" id=""></textarea>
                                                    <small id="" class="form-text text-danger">Error message</small>
                                                </div>
                                                <!-- col ends -->
                                            </div>
                                            <!-- row ends -->
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>07</td>
                                        <td>
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <div class="text-xs text-beta">Assistance Type:</div>
                                                    <div class="text-md weight-bold">Employment Generation Grant on EPF</div>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-6">
                                                    <hr class="hr-one mt-2 d-lg-none">
                                                    <!-- 576 768 -->
                                                    <div class="text-xs text-beta">About Assistance:</div>
                                                    <div class="text-xs">-</div>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-6">
                                                    <hr class="hr-one mt-2">
                                                    <div class="text-xs text-beta mb-2 text-capitalize">do you want to claim this assistance?</div>
                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="radio" name="" id="" value="yes" checked>
                                                        <label class="form-check-label text-sm weight-semi-bold text-capitalize text-success" for="">yes</label>
                                                    </div>
                                                    <!-- form-check ends -->
                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="radio" name="" id="" value="no">
                                                        <label class="form-check-label text-sm weight-semi-bold text-capitalize text-danger" for="">no</label>
                                                    </div>
                                                    <!-- form-check ends -->
                                                    <div class="clear"></div>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-6">
                                                    <hr class="hr-one mt-2">
                                                    <label for="" class="text-xs text-beta mb-2">Approximate Amount of Assistance Sought:</label>
                                                    <input type="text" class="form-control mb-1" name="" id="">
                                                    <small id="" class="form-text text-danger">Error message</small>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-12">
                                                    <hr class="hr-one mt-2">
                                                    <label for="" class="text-xs text-beta mb-2">Applicant Remarks:</label>
                                                    <textarea class="form-control" name="" id=""></textarea>
                                                    <small id="" class="form-text text-danger">Error message</small>
                                                </div>
                                                <!-- col ends -->
                                            </div>
                                            <!-- row ends -->
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>08</td>
                                        <td>
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <div class="text-xs text-beta">Assistance Type:</div>
                                                    <div class="text-md weight-bold">Quality Certification</div>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-6">
                                                    <hr class="hr-one mt-2 d-lg-none">
                                                    <!-- 576 768 -->
                                                    <div class="text-xs text-beta">About Assistance:</div>
                                                    <div class="text-xs">-</div>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-6">
                                                    <hr class="hr-one mt-2">
                                                    <div class="text-xs text-beta mb-2 text-capitalize">do you want to claim this assistance?</div>
                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="radio" name="" id="" value="yes" checked>
                                                        <label class="form-check-label text-sm weight-semi-bold text-capitalize text-success" for="">yes</label>
                                                    </div>
                                                    <!-- form-check ends -->
                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="radio" name="" id="" value="no">
                                                        <label class="form-check-label text-sm weight-semi-bold text-capitalize text-danger" for="">no</label>
                                                    </div>
                                                    <!-- form-check ends -->
                                                    <div class="clear"></div>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-6">
                                                    <hr class="hr-one mt-2">
                                                    <label for="" class="text-xs text-beta mb-2">Approximate Amount of Assistance Sought:</label>
                                                    <input type="text" class="form-control mb-1" name="" id="">
                                                    <small id="" class="form-text text-danger">Error message</small>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-12">
                                                    <hr class="hr-one mt-2">
                                                    <label for="" class="text-xs text-beta mb-2">Applicant Remarks:</label>
                                                    <textarea class="form-control" name="" id=""></textarea>
                                                    <small id="" class="form-text text-danger">Error message</small>
                                                </div>
                                                <!-- col ends -->
                                            </div>
                                            <!-- row ends -->
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>09</td>
                                        <td>
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <div class="text-xs text-beta">Assistance Type:</div>
                                                    <div class="text-md weight-bold">Patent Assistance</div>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-6">
                                                    <hr class="hr-one mt-2 d-lg-none">
                                                    <!-- 576 768 -->
                                                    <div class="text-xs text-beta">About Assistance:</div>
                                                    <div class="text-xs">-</div>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-6">
                                                    <hr class="hr-one mt-2">
                                                    <div class="text-xs text-beta mb-2 text-capitalize">do you want to claim this assistance?</div>
                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="radio" name="" id="" value="yes" checked>
                                                        <label class="form-check-label text-sm weight-semi-bold text-capitalize text-success" for="">yes</label>
                                                    </div>
                                                    <!-- form-check ends -->
                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="radio" name="" id="" value="no">
                                                        <label class="form-check-label text-sm weight-semi-bold text-capitalize text-danger" for="">no</label>
                                                    </div>
                                                    <!-- form-check ends -->
                                                    <div class="clear"></div>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-6">
                                                    <hr class="hr-one mt-2">
                                                    <label for="" class="text-xs text-beta mb-2">Approximate Amount of Assistance Sought:</label>
                                                    <input type="text" class="form-control mb-1" name="" id="">
                                                    <small id="" class="form-text text-danger">Error message</small>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-12">
                                                    <hr class="hr-one mt-2">
                                                    <label for="" class="text-xs text-beta mb-2">Applicant Remarks:</label>
                                                    <textarea class="form-control" name="" id=""></textarea>
                                                    <small id="" class="form-text text-danger">Error message</small>
                                                </div>
                                                <!-- col ends -->
                                            </div>
                                            <!-- row ends -->
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>10</td>
                                        <td>
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <div class="text-xs text-beta">Assistance Type:</div>
                                                    <div class="text-md weight-bold">Market Development</div>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-6">
                                                    <hr class="hr-one mt-2 d-lg-none">
                                                    <!-- 576 768 -->
                                                    <div class="text-xs text-beta">About Assistance:</div>
                                                    <div class="text-xs">-</div>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-6">
                                                    <hr class="hr-one mt-2">
                                                    <div class="text-xs text-beta mb-2 text-capitalize">do you want to claim this assistance?</div>
                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="radio" name="" id="" value="yes" checked>
                                                        <label class="form-check-label text-sm weight-semi-bold text-capitalize text-success" for="">yes</label>
                                                    </div>
                                                    <!-- form-check ends -->
                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="radio" name="" id="" value="no">
                                                        <label class="form-check-label text-sm weight-semi-bold text-capitalize text-danger" for="">no</label>
                                                    </div>
                                                    <!-- form-check ends -->
                                                    <div class="clear"></div>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-6">
                                                    <hr class="hr-one mt-2">
                                                    <label for="" class="text-xs text-beta mb-2">Approximate Amount of Assistance Sought:</label>
                                                    <input type="text" class="form-control mb-1" name="" id="">
                                                    <small id="" class="form-text text-danger">Error message</small>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-12">
                                                    <hr class="hr-one mt-2">
                                                    <label for="" class="text-xs text-beta mb-2">Applicant Remarks:</label>
                                                    <textarea class="form-control" name="" id=""></textarea>
                                                    <small id="" class="form-text text-danger">Error message</small>
                                                </div>
                                                <!-- col ends -->
                                            </div>
                                            <!-- row ends -->
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>11</td>
                                        <td>
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <div class="text-xs text-beta">Assistance Type:</div>
                                                    <div class="text-md weight-bold">Assistance for R&D Institute / Finishing School</div>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-6">
                                                    <hr class="hr-one mt-2 d-lg-none">
                                                    <!-- 576 768 -->
                                                    <div class="text-xs text-beta">About Assistance:</div>
                                                    <div class="text-xs">-</div>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-6">
                                                    <hr class="hr-one mt-2">
                                                    <div class="text-xs text-beta mb-2 text-capitalize">do you want to claim this assistance?</div>
                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="radio" name="" id="" value="yes" checked>
                                                        <label class="form-check-label text-sm weight-semi-bold text-capitalize text-success" for="">yes</label>
                                                    </div>
                                                    <!-- form-check ends -->
                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="radio" name="" id="" value="no">
                                                        <label class="form-check-label text-sm weight-semi-bold text-capitalize text-danger" for="">no</label>
                                                    </div>
                                                    <!-- form-check ends -->
                                                    <div class="clear"></div>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-6">
                                                    <hr class="hr-one mt-2">
                                                    <label for="" class="text-xs text-beta mb-2">Approximate Amount of Assistance Sought:</label>
                                                    <input type="text" class="form-control mb-1" name="" id="">
                                                    <small id="" class="form-text text-danger">Error message</small>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-12">
                                                    <hr class="hr-one mt-2">
                                                    <label for="" class="text-xs text-beta mb-2">Applicant Remarks:</label>
                                                    <textarea class="form-control" name="" id=""></textarea>
                                                    <small id="" class="form-text text-danger">Error message</small>
                                                </div>
                                                <!-- col ends -->
                                            </div>
                                            <!-- row ends -->
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>12</td>
                                        <td>
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <div class="text-xs text-beta">Assistance Type:</div>
                                                    <div class="text-md weight-bold">Contract/Sponsored research work from IT/ITeS Unit / Industry Association</div>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-6">
                                                    <hr class="hr-one mt-2 d-lg-none">
                                                    <!-- 576 768 -->
                                                    <div class="text-xs text-beta">About Assistance:</div>
                                                    <div class="text-xs">-</div>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-6">
                                                    <hr class="hr-one mt-2">
                                                    <div class="text-xs text-beta mb-2 text-capitalize">do you want to claim this assistance?</div>
                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="radio" name="" id="" value="yes" checked>
                                                        <label class="form-check-label text-sm weight-semi-bold text-capitalize text-success" for="">yes</label>
                                                    </div>
                                                    <!-- form-check ends -->
                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="radio" name="" id="" value="no">
                                                        <label class="form-check-label text-sm weight-semi-bold text-capitalize text-danger" for="">no</label>
                                                    </div>
                                                    <!-- form-check ends -->
                                                    <div class="clear"></div>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-6">
                                                    <hr class="hr-one mt-2">
                                                    <label for="" class="text-xs text-beta mb-2">Approximate Amount of Assistance Sought:</label>
                                                    <input type="text" class="form-control mb-1" name="" id="">
                                                    <small id="" class="form-text text-danger">Error message</small>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-12">
                                                    <hr class="hr-one mt-2">
                                                    <label for="" class="text-xs text-beta mb-2">Applicant Remarks:</label>
                                                    <textarea class="form-control" name="" id=""></textarea>
                                                    <small id="" class="form-text text-danger">Error message</small>
                                                </div>
                                                <!-- col ends -->
                                            </div>
                                            <!-- row ends -->
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>13</td>
                                        <td>
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <div class="text-xs text-beta">Assistance Type:</div>
                                                    <div class="text-md weight-bold">Viability Gap funding for exhibitions/seminars in Gujarat</div>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-6">
                                                    <hr class="hr-one mt-2 d-lg-none">
                                                    <!-- 576 768 -->
                                                    <div class="text-xs text-beta">About Assistance:</div>
                                                    <div class="text-xs">-</div>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-6">
                                                    <hr class="hr-one mt-2">
                                                    <div class="text-xs text-beta mb-2 text-capitalize">do you want to claim this assistance?</div>
                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="radio" name="" id="" value="yes" checked>
                                                        <label class="form-check-label text-sm weight-semi-bold text-capitalize text-success" for="">yes</label>
                                                    </div>
                                                    <!-- form-check ends -->
                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="radio" name="" id="" value="no">
                                                        <label class="form-check-label text-sm weight-semi-bold text-capitalize text-danger" for="">no</label>
                                                    </div>
                                                    <!-- form-check ends -->
                                                    <div class="clear"></div>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-6">
                                                    <hr class="hr-one mt-2">
                                                    <label for="" class="text-xs text-beta mb-2">Approximate Amount of Assistance Sought:</label>
                                                    <input type="text" class="form-control mb-1" name="" id="">
                                                    <small id="" class="form-text text-danger">Error message</small>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-12">
                                                    <hr class="hr-one mt-2">
                                                    <label for="" class="text-xs text-beta mb-2">Applicant Remarks:</label>
                                                    <textarea class="form-control" name="" id=""></textarea>
                                                    <small id="" class="form-text text-danger">Error message</small>
                                                </div>
                                                <!-- col ends -->
                                            </div>
                                            <!-- row ends -->
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>14</td>
                                        <td>
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <div class="text-xs text-beta">Assistance Type:</div>
                                                    <div class="text-md weight-bold">Skill Enhancement</div>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-6">
                                                    <hr class="hr-one mt-2 d-lg-none">
                                                    <!-- 576 768 -->
                                                    <div class="text-xs text-beta">About Assistance:</div>
                                                    <div class="text-xs">-</div>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-6">
                                                    <hr class="hr-one mt-2">
                                                    <div class="text-xs text-beta mb-2 text-capitalize">do you want to claim this assistance?</div>
                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="radio" name="" id="" value="yes" checked>
                                                        <label class="form-check-label text-sm weight-semi-bold text-capitalize text-success" for="">yes</label>
                                                    </div>
                                                    <!-- form-check ends -->
                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="radio" name="" id="" value="no">
                                                        <label class="form-check-label text-sm weight-semi-bold text-capitalize text-danger" for="">no</label>
                                                    </div>
                                                    <!-- form-check ends -->
                                                    <div class="clear"></div>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-6">
                                                    <hr class="hr-one mt-2">
                                                    <label for="" class="text-xs text-beta mb-2">Approximate Amount of Assistance Sought:</label>
                                                    <input type="text" class="form-control mb-1" name="" id="">
                                                    <small id="" class="form-text text-danger">Error message</small>
                                                </div>
                                                <!-- col ends -->
                                                <div class="col-lg-12">
                                                    <hr class="hr-one mt-2">
                                                    <label for="" class="text-xs text-beta mb-2">Applicant Remarks:</label>
                                                    <textarea class="form-control" name="" id=""></textarea>
                                                    <small id="" class="form-text text-danger">Error message</small>
                                                </div>
                                                <!-- col ends -->
                                            </div>
                                            <!-- row ends -->
                                        </td>
                                    </tr>--%>
                                </table>
                            </div>
                            <!-- col ends -->
                        </div>
                        <!-- row ends -->
                    </div>
                    <!-- form-container ends -->
                    <div class="clear"></div>
                    <div class="text-right">
                        <asp:Button runat="server" ID="btnAssistanceReset" Text="Reset Form"
                            TabIndex="13" class="btn btn-outline-secondary" OnClick="btnAssistanceReset_Click" />
                        <asp:Button runat="server" ID="btnAssistanceSave" Text="Save & Continue"
                            TabIndex="13" class="btn btn-primary" OnClick="btnAssistanceSave_Click" ValidationGroup="Save4" />
                    </div>
                    <!-- text-right ends -->
                    <!-- -----*----- TAB PANEL CONTENT AREA ENDS -----*----- -->
                </div>
                <!-- tab-pane ends -->
                <div role="tabpanel" class="tab-pane fade show active" id="tabBnkAccDetail" runat="server" aria-labelledby="tabItem5">
                    <!-- -----*----- TAB PANEL CONTENT AREA STARTS -----*----- -->
                    <div class="position-relative form-container border-gamma">
                        <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                            <i class="fas fa-university"></i>
                        </div>
                        <!-- form-title-icon ends -->
                        <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                            <span>bank account details</span>
                        </div>
                        <!-- form-header-text ends -->
                        <div class="clear"></div>
                        <div class="row">
                            <div class="form-group col-lg-6">
                                <label for=""><span>Payment Mode</span><span class="text-danger text-sm m-1">*</span></label>
                                <div class="clear"></div>
                                <div class="form-check form-check-inline">
                                    <asp:RadioButtonList ID="rblPaymentMode" runat="server" RepeatDirection="Horizontal">
                                        <asp:ListItem Text="RTGS" Value="1" Selected="True"></asp:ListItem>
                                        <asp:ListItem Text="NEFT" Value="2"></asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-lg-6">
                                <label for=""><span>bank name</span><span class="text-danger text-sm m-1">*</span></label>
                                <asp:TextBox type="text" class="form-control" ID="txtBankName" TabIndex="11" runat="server" MaxLength="20"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvtxtBankName" class="form-text text-muted" runat="server" Display="dynamic" ControlToValidate="txtBankName"
                                    ForeColor="Red" ValidationGroup="Save5" ErrorMessage="Please enter Bank Name."></asp:RequiredFieldValidator>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-lg-6">
                                <label for=""><span>branch name</span><span class="text-danger text-sm m-1">*</span></label>
                                <asp:TextBox type="text" class="form-control" ID="txtBranchName" TabIndex="11" runat="server" MaxLength="20"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvtxtBranchName" class="form-text text-muted" runat="server" Display="dynamic" ControlToValidate="txtBranchName"
                                    ForeColor="Red" ValidationGroup="Save5" ErrorMessage="Please enter Branch Name."></asp:RequiredFieldValidator>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-lg-6">
                                <label for=""><span>bank account number</span><span class="text-danger text-sm m-1">*</span></label>
                                <asp:TextBox type="text" class="form-control" ID="txtBankAcctNo" TabIndex="11" runat="server" MaxLength="20"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvtxtBankAcctNo" class="form-text text-muted" runat="server" Display="dynamic" ControlToValidate="txtBankAcctNo"
                                    ForeColor="Red" ValidationGroup="Save5" ErrorMessage="Please enter Bank Account Number."></asp:RequiredFieldValidator>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-lg-6">
                                <label for=""><span>IFSC number</span><span class="text-danger text-sm m-1">*</span></label>
                                <asp:TextBox type="text" class="form-control" ID="txtIFSCNo" TabIndex="11" runat="server" MaxLength="20"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvtxtIFSCNo" class="form-text text-muted" runat="server" Display="dynamic" ControlToValidate="txtIFSCNo"
                                    ForeColor="Red" ValidationGroup="Save5" ErrorMessage="Please enter IFSC Number."></asp:RequiredFieldValidator>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-lg-6">
                                <label for=""><span>MICR Code</span><span class="text-danger text-sm m-1">*</span></label>
                                <asp:TextBox type="text" class="form-control" ID="txtMicrCode" TabIndex="11" runat="server" MaxLength="20"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvtxtMicrCode" class="form-text text-muted" runat="server" Display="dynamic" ControlToValidate="txtMicrCode"
                                    ForeColor="Red" ValidationGroup="Save5" ErrorMessage="Please enter MICR Code."></asp:RequiredFieldValidator>
                            </div>
                            <!-- form-group / col ends -->
                            <div class="form-group col-lg-6">
                                <label for=""><span>Bank Address</span><span class="text-danger text-sm m-1">*</span></label>
                                <asp:TextBox runat="server" ID="txtBankAddress" TabIndex="6" class="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvtxtBankAddress" class="form-text text-muted" runat="server" Display="dynamic" ControlToValidate="txtBankAddress"
                                    ForeColor="Red" ValidationGroup="Save5" ErrorMessage="Please enter Bank Address."></asp:RequiredFieldValidator>
                            </div>
                            <!-- form-group / col ends -->
                        </div>
                        <!-- row ends -->

                    </div>
                    <!-- form-container ends -->
                    <div class="clear"></div>
                    <div class="text-right">
                        <asp:Button runat="server" ID="btnBankDtlReset" Text="Reset Form"
                            TabIndex="13" class="btn btn-outline-secondary" OnClick="btnBankDtlReset_Click" />
                        <asp:Button runat="server" ID="btnBankDtlSave" Text="Save & Continue"
                            TabIndex="13" class="btn btn-primary" OnClick="btnBankDtlSave_Click" ValidationGroup="Save5" />
                    </div>
                    <!-- text-right ends -->
                    <!-- -----*----- TAB PANEL CONTENT AREA ENDS -----*----- -->
                </div>
                <!-- tab-pane ends -->
                <div role="tabpanel" class="tab-pane fade show active" id="tabCommOper" runat="server" aria-labelledby="tabItem6">
                    <!-- -----*----- TAB PANEL CONTENT AREA STARTS -----*----- -->
                    <div class="position-relative form-container border-gamma">
                        <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                            <i class="far fa-calendar-check"></i>
                        </div>
                        <!-- form-title-icon ends -->
                        <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                            <span>date of beginning</span>
                        </div>
                        <!-- form-header-text ends -->
                        <div class="clear"></div>
                        <div class="row">
                            <div class="form-group col-lg-6">
                                <label for=""><span>tentative date of beginning of commercial operations</span></label>
                                <%-- <input type="text" class="form-control" name="" id="dateOfBeginning"> --%>
                                <asp:TextBox ID="dateOfBeginning" ClientIDMode="static" runat="server" class="form-control"></asp:TextBox>
                            </div>
                            <!-- form-group / col ends --
                </div> <!-- row ends -->
                        </div>
                        <!-- form-container ends -->
                        <div class="clear"></div>
                        <div class="text-right">
                            <asp:Button runat="server" ID="btnDateReset" Text="Reset Form"
                                TabIndex="13" class="btn btn-outline-secondary" OnClick="btnDateReset_Click" />
                            <asp:Button runat="server" ID="btnDateSave" Text="Save & Continue"
                                TabIndex="13" class="btn btn-primary" OnClick="btnDateSave_Click" ValidationGroup="Save5" />
                        </div>
                        <!-- text-right ends -->
                        <!-- -----*----- TAB PANEL CONTENT AREA ENDS -----*----- -->
                    </div>
                </div>
                <!-- tab-pane ends -->
                <div role="tabpanel" class="tab-pane fade show active" id="tabDeclaration" runat="server" aria-labelledby="tabItem7">
                    <!-- -----*----- TAB PANEL CONTENT AREA STARTS -----*----- -->
                    <div class="row">
                        <div class="col-12 weight-medium text-sm">
                            <p>I, on behalf of my organisation, hereby declare the following:</p>
                            <ol type="a">
                                <!-- a -->
                                <li>
                                    <p>Information, statements & other papers given herein are to the best of my knowledge & belief, true and correct in all particulars.</p>
                                </li>
                                <!-- b -->
                                <li>
                                    <p>We are not availing any assistance under any other scheme/policy of Government of Gujarat departments or its subordinate offices.</p>
                                </li>
                                <!-- c -->
                                <li>
                                    <p>I am duly authorized to sign an application and details and documents submitted in this application.</p>
                                </li>
                                <!-- d -->
                                <li>
                                    <p>I undertake that we will ensure that specified goods / services sold to Gujarat dealers would be further resold to customers within Gujarat as local sale only and interstate sale of such goods / services will not be allowed. I further undertake that against reimbursement of VAT/GST availed or claimed by this unit, if for the same sale, a Gujarat based dealer adjusts tax credit by selling such goods/services to customers outside Gujarat, the amount of such tax credit shall be reduced from the amount of reimbursement to be allowed to this unit.</p>
                                </li>
                                <!-- e -->
                                <li>
                                    <p class="weight-bold">We will hire one intern for every twenty employees on our payroll during the period we avail benefits under the scheme.</p>
                                </li>
                            </ol>
                            <div class="clear"></div>
                            <p class="weight-bold">Note:</p>
                            <ol>
                                <!-- 1 -->
                                <li>
                                    <p>Any financial transactions / expenditure statements forecast submitted by the unit must be signed by the authorized signatory of the unit and be certified by the auditor/ chartered accountant.</p>
                                </li>
                                <!-- 2 -->
                                <li>
                                    <p>The DPR should have detailed sections covering at least the following:</p>
                                    <ol type="a">
                                        <!-- a-->
                                        <li>
                                            <p>Location details</p>
                                        </li>
                                        <!-- b -->
                                        <li>
                                            <p>Company profile</p>
                                        </li>
                                        <!-- c -->
                                        <li>
                                            <p>Promoters list</p>
                                        </li>
                                        <!-- d -->
                                        <li>
                                            <p>Shareholding pattern</p>
                                        </li>
                                        <!-- e -->
                                        <li>
                                            <p>Product detail</p>
                                        </li>
                                        <!-- f -->
                                        <li>
                                            <p>Market survey / competitive landscape</p>
                                        </li>
                                        <!-- g -->
                                        <li>
                                            <p>Project cost components</p>
                                        </li>
                                        <!-- h -->
                                        <li>
                                            <p>Revenue / expenditure projections</p>
                                        </li>
                                        <!-- i -->
                                        <li>
                                            <p>Cash flows from business operations</p>
                                        </li>
                                        <!-- j -->
                                        <li>
                                            <p>Business development projections</p>
                                        </li>
                                        <!-- k -->
                                        <li>
                                            <p>Financial closure (Dependencies; Technological and Financial)</p>
                                        </li>
                                        <!-- l -->
                                        <li>
                                            <p>Risks and Assumptions</p>
                                        </li>
                                        <!-- m -->
                                        <li>
                                            <p>List of employees currently working at the unit, along with EPF contribution schedule of last one year (for existing units)</p>
                                        </li>
                                    </ol>
                                </li>
                            </ol>
                        </div>
                        <!-- col ends -->
                    </div>
                    <!-- row ends -->
                    <div class="clear"></div>
                    <div class="form-check">
                        <asp:CheckBox ID="chkDeclaration" CssClass="form-check-input" runat="server" />
                        <label class="form-check-label" for="declarationCheck">
                            I agree with above mentioned declaration and note. 
                        </label>
                    </div>
                    <!-- form-check ends -->

                    <div class="clear"></div>
                    <div class="text-right">
                        <asp:Button runat="server" ID="btnDeclarationReset" Text="Reset Form"
                            TabIndex="13" class="btn btn-outline-secondary" OnClick="btnDeclarationReset_Click" />
                        <asp:Button runat="server" ID="btnDeclarationSave" Text="Save & Continue"
                            TabIndex="13" class="btn btn-primary" OnClick="btnDeclarationSave_Click" ValidationGroup="Save5" />
                    </div>
                    <!-- text-right ends -->
                    <!-- -----*----- TAB PANEL CONTENT AREA ENDS -----*----- -->
                </div>
                <!-- tab-pane ends -->
                <div role="tabpanel" class="tab-pane fade show active" id="tabAck" runat="server" aria-labelledby="tabItem8">

                    <!-- -----*----- TAB PANEL CONTENT AREA STARTS -----*----- -->

                    <!-- Annexure-3A Acknowlwdgement Area Starts -->
                    <div class="position-relative table-container border-gamma">
                        <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                            <i class="fas fa-info"></i>
                        </div>
                        <!-- form-title-icon ends -->
                        <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                            <span>basic information</span>
                        </div>
                        <!-- form-header-text ends -->
                        <div class="clear"></div>
                        <div class="table-responsive">
                            <table class="table table-bordered weight-medium text-xs">
                                <tr>
                                    <td class="text-capitalize table-data-label">Entity Name / Unit Name</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckEntityName" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Entity Telephone Number</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckEntityTelephoneNo" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Entity Mobile Number</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckEntityMobileNo" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Entity Email Id</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckEntityEmailID" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <!-- table-responsive ends -->
                    </div>
                    <!-- form-container ends -->
                    <div class="clear"></div>
                    <div class="position-relative table-container border-gamma mt-5">
                        <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                            <i class="far fa-envelope"></i>
                        </div>
                        <!-- form-title-icon ends -->
                        <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                            <span>correspondence address</span>
                        </div>
                        <!-- form-header-text ends -->
                        <div class="clear"></div>
                        <div class="table-responsive">
                            <table class="table table-bordered weight-medium text-xs">
                                <tr>
                                    <td class="text-capitalize table-data-label">postal code</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckCorrPostalCode" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">address line 1</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckCorrAddLine1" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">address line 2</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckCorrAddLine2" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">city / village</td>
                                    <td class="weight-semi-bold text-capitalize">
                                        <asp:Label ID="lblAckCorrCity" class="weight-semi-bold text-capitalize" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">state</td>
                                    <td class="weight-semi-bold text-capitalize">
                                        <asp:Label ID="lblAckCorrState" class="weight-semi-bold text-capitalize" runat="server"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <!-- table-responsive ends -->
                    </div>
                    <!-- form-container ends -->
                    <div class="clear"></div>
                    <div class="position-relative table-container border-gamma mt-5">
                        <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                            <i class="far fa-building"></i>
                        </div>
                        <!-- form-title-icon ends -->
                        <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                            <span>entity details</span>
                        </div>
                        <!-- form-header-text ends -->
                        <div class="clear"></div>
                        <div class="table-responsive">
                            <table class="table table-bordered weight-medium text-xs">
                                <tr>
                                    <td class="text-capitalize table-data-label">Type of the entity that will seek assistance under the scheme</td>
                                    <td class="weight-semi-bold text-capitalize">
                                        <asp:Label ID="lblAckEntityType" class="weight-semi-bold text-capitalize" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">certified copy of the partnership deed uploaded?</td>
                                    <td class="weight-semi-bold text-uppercase">
                                        <asp:Label ID="lblAckCopyOfDeed" class="weight-semi-bold text-uppercase" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">certified copy of the memorandum and articles of association or equivalent registration documents uploaded?</td>
                                    <td class="weight-semi-bold text-uppercase">
                                        <asp:Label ID="lblAckIsRegDocUploaded" class="weight-semi-bold text-uppercase" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Registration Number</td>
                                    <td class="weight-semi-bold text-uppercase">
                                        <asp:Label ID="lblAckRegistrationNo" class="weight-semi-bold text-uppercase" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">scanned copy of memorandum and articles of association uploaded?</td>
                                    <td class="weight-semi-bold text-uppercase">
                                        <asp:Label ID="lblAckIsArticleAssociationUploaded" class="weight-semi-bold text-uppercase" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Certificate Of Incorporation</td>
                                    <td class="weight-semi-bold text-uppercase">
                                        <asp:Label ID="lblAckCertOfIncorporation" class="weight-semi-bold text-uppercase" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">scanned copy of certificate of incorporation uploaded?</td>
                                    <td class="weight-semi-bold text-uppercase">
                                        <asp:Label ID="lblAckIsCertOfIncorporationUploaded" class="weight-semi-bold text-uppercase" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">permanent account number (PAN) of Entity</td>
                                    <td class="weight-semi-bold text-uppercase text-md">
                                        <asp:Label ID="lblAckEntityPAN" class="weight-semi-bold text-uppercase text-md" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">scanned copy of the PAN card uploaded?</td>
                                    <td class="weight-semi-bold text-uppercase">
                                        <asp:Label ID="lblAckIsEntityPANDocUploaded" class="weight-semi-bold text-uppercase" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">GSTIN</td>
                                    <td class="weight-semi-bold text-uppercase">
                                        <asp:Label ID="lblAckEntityGSTIN" class="weight-semi-bold text-uppercase" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">GST registration certificate uploaded?</td>
                                    <td class="weight-semi-bold text-uppercase">
                                        <asp:Label ID="lblAckEntityGSTRegCertiUploaded" class="weight-semi-bold text-uppercase" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Taxpayer Identification Number (TIN)</td>
                                    <td class="weight-semi-bold text-uppercase">
                                        <asp:Label ID="lblAckTIN" class="weight-semi-bold text-uppercase" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">CA certificate showing the shareholding pattern uploaded?</td>
                                    <td class="weight-semi-bold text-uppercase">
                                        <asp:Label ID="lblAckIsCACertiShareHoldingUploaded" class="weight-semi-bold text-uppercase" runat="server"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <!-- table-responsive ends -->
                    </div>
                    <!-- form-container ends directors promotor tab remove-->

                    <!-- form-container ends -->
                    <div class="clear"></div>
                    <div class="position-relative table-container border-gamma mt-5">
                        <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                            <i class="far fa-id-badge"></i>
                        </div>
                        <!-- form-title-icon ends -->
                        <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                            <span>authorised person details</span>
                        </div>
                        <!-- form-header-text ends -->
                        <div class="clear"></div>
                        <div class="table-responsive">
                            <table class="table table-bordered weight-medium text-xs">
                                <tr>
                                    <td class="text-capitalize table-data-label">Is the authorized person and applicant the same?</td>
                                    <td class="weight-semi-bold text-uppercase">
                                        <asp:Label ID="lblAckIsAutPersonandApplicantSame" class="weight-semi-bold text-uppercase" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Authorised Person Name</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckAuthPersonName" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Designation</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckDesignation" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Mobile Number</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckAPMobileNo" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Email Id</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckAPEmailId" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">copy of authorisation letter uploaded?</td>
                                    <td class="weight-semi-bold text-uppercase">
                                        <asp:Label ID="lblIsAuthLetterUploaded" class="weight-semi-bold text-uppercase" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Is the authorised person address same as the correspondence address?</td>
                                    <td class="weight-semi-bold text-uppercase">
                                        <asp:Label ID="lblIsAuthPerAddrSameAsCorrAddr" class="weight-semi-bold text-uppercase" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">postal code</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckAPPostalCode" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">address line 1</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckAPAddrLine1" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">address line 2</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckAPAddrLine2" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">city / village</td>
                                    <td class="weight-semi-bold text-capitalize">
                                        <asp:Label ID="lblAckAPCity" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">state</td>
                                    <td class="weight-semi-bold text-capitalize">
                                        <asp:Label ID="lblAckAPState" class="weight-semi-bold text-capitalize" runat="server"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <!-- table-responsive ends -->
                    </div>
                    <!-- form-container ends -->
                    <div class="clear"></div>
                    <div class="position-relative table-container border-gamma mt-5">
                        <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                            <i class="fas fa-building"></i>
                        </div>
                        <!-- form-title-icon ends -->
                        <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                            <span>eligible IT/ITeS Unit (New or Expansion/Diversification) details</span>
                        </div>
                        <!-- form-header-text ends -->
                        <div class="clear"></div>
                        <div class="table-responsive">
                            <table class="table table-bordered weight-medium text-xs">
                                <tr>
                                    <td class="text-capitalize table-data-label">Unit Type</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckITeSUnitType" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">area of the land / office space</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckITeSLandArea" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">proof of land / office space possession uploaded?</td>
                                    <td class="weight-semi-bold text-uppercase">
                                        <asp:Label ID="lblAckITeSLandProof" class="weight-semi-bold text-uppercase" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Brief description of the project</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckITeSProjectDesc" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">detailed project report (DPR) uploaded?</td>
                                    <td class="weight-semi-bold text-uppercase">
                                        <asp:Label ID="lblAckITeSDPR" class="weight-semi-bold text-uppercase" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Is the location address same as the correspondence address?</td>
                                    <td class="weight-semi-bold text-uppercase">
                                        <asp:Label ID="lblAckITeSIsLocAddrSameAsCorrAddr" class="weight-semi-bold text-uppercase" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Postal Code</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckITeSPostalCode" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Address Line 1</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckITeSAddrLine1" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Address Line 2</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckITeSAddrLine2" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">City / Village</td>
                                    <td class="weight-semi-bold text-capitalize">
                                        <asp:Label ID="lblAckITeSCity" class="weight-semi-bold text-capitalize" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">State</td>
                                    <td class="weight-semi-bold text-capitalize">
                                        <asp:Label ID="lblAckITeSState" class="weight-semi-bold text-capitalize" runat="server"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <!-- table-responsive ends -->
                    </div>
                    <!-- form-container ends -->
                    <div class="clear"></div>
                    <div class="form-group">
                        <div class="form-header-text bg-delta border-delta weight-semi-bold text-md text-beta text-capitalize">
                            <span>business development & recruitment schedule (projections)</span>
                        </div>
                        <!-- form-section ends -->
                    </div>
                    <!-- col ends -->
                    <div class="clear"></div>
                    <div class="position-relative table-container border-gamma mt-5">
                        <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                            <i class="fas fa-rupee-sign"></i>
                        </div>
                        <!-- form-title-icon ends -->
                        <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                            <span>domestic (turnover)</span>
                        </div>
                        <!-- form-header-text ends -->
                        <div class="clear"></div>
                        <div class="table-responsive">
                            <table class="table table-bordered weight-medium text-xs">
                                <tr>
                                    <td class="text-capitalize table-data-label">Year 1</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckDomesticTOYear1" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Year 2</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckDomesticTOYear2" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Year 3</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckDomesticTOYear3" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Year 4</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckDomesticTOYear4" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Year 5</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckDomesticTOYear5" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Year 6</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckDomesticTOYear6" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <!-- table-responsive ends -->
                    </div>
                    <!-- form-container ends -->
                    <div class="clear"></div>
                    <div class="position-relative table-container border-gamma mt-5">
                        <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                            <i class="fas fa-rupee-sign"></i>
                        </div>
                        <!-- form-title-icon ends -->
                        <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                            <span>exports (turnover)</span>
                        </div>
                        <!-- form-header-text ends -->
                        <div class="clear"></div>
                        <div class="table-responsive">
                            <table class="table table-bordered weight-medium text-xs">
                                <tr>
                                    <td class="text-capitalize table-data-label">Year 1</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckExportToYear1" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Year 2</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckExportToYear2" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Year 3</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckExportToYear3" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Year 4</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckExportToYear4" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Year 5</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckExportToYear5" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Year 6</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckExportToYear6" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <!-- table-responsive ends -->
                    </div>
                    <!-- form-container ends -->
                    <div class="clear"></div>
                    <div class="position-relative table-container border-gamma mt-5">
                        <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                            <i class="fas fa-users"></i>
                        </div>
                        <!-- form-title-icon ends -->
                        <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                            <span>employees (count)</span>
                        </div>
                        <!-- form-header-text ends -->
                        <div class="clear"></div>
                        <div class="table-responsive">
                            <table class="table table-bordered weight-medium text-xs">
                                <tr>
                                    <td class="text-capitalize table-data-label">Year 1</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckEmplyeeCntYear1" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Year 2</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckEmplyeeCntYear2" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Year 3</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckEmplyeeCntYear3" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Year 4</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckEmplyeeCntYear4" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Year 5</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckEmplyeeCntYear5" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Year 6</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckEmplyeeCntYear6" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <!-- table-responsive ends -->
                    </div>
                    <!-- form-container ends -->
                    <div class="clear"></div>
                    <div class="position-relative table-container border-gamma mt-5">
                        <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                            <i class="fas fa-building"></i>
                        </div>
                        <!-- form-title-icon ends -->
                        <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                            <span>for existing units, undertaking expansion/diversification</span>
                        </div>
                        <!-- form-header-text ends -->
                        <div class="clear"></div>
                        <div class="table-responsive">
                            <table class="table table-bordered weight-medium text-xs">
                                <tr>
                                    <td class="text-capitalize table-data-label">current area under usage</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckDivAreaUsage" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">number of employees in existing unit</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckDivNoOfEmployee" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">estimated annual EPF contribution for current employees</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckDivEPF" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">average of last one (1) year's electricity consumption in units</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckDivAvgElecUnitLast1Yr" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize weight-semi-bold" colspan="2">annual turnover of last three (3) years</td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">year (-2)</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckAnnualTOYr2" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">year (-1)</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckAnnualTOYr1" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">year 0 (Current Year)</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblAckAnnualTOYr0" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize weight-semi-bold" colspan="2">VAT / CST / GST paid to Government of Gujarat over last three (3) years</td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">year (-2)</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblGSTYr2" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">year (-1)</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblGSTYr1" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">year 0 (Current Year)</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblGSTYr0" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <!-- table-responsive ends -->
                    </div>
                    <!-- form-container ends -->
                    <div class="clear"></div>
                    <div class="position-relative table-container border-gamma mt-5">
                        <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                            <i class="fas fa-rupee-sign"></i>
                        </div>
                        <!-- form-title-icon ends -->
                        <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                            <span>revenue forecast</span>
                        </div>
                        <!-- form-header-text ends -->
                        <div class="clear"></div>
                        <div class="table-responsive">
                            <table class="table table-bordered weight-medium text-xs">
                                <tr>
                                    <td class="text-capitalize table-data-label">Year 1</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblRevenueForecastYear1" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Year 2</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblRevenueForecastYear2" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Year 3</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblRevenueForecastYear3" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Year 4</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblRevenueForecastYear4" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Year 5</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblRevenueForecastYear5" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Year 6</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblRevenueForecastYear6" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>

                            </table>
                        </div>
                        <!-- table-responsive ends -->
                    </div>
                    <!-- form-container ends -->
                    <div class="clear"></div>
                    <div class="position-relative table-container border-gamma mt-5">
                        <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                            <i class="fas fa-chart-line"></i>
                        </div>
                        <!-- form-title-icon ends -->
                        <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                            <span>expenditure forecast</span>
                        </div>
                        <!-- form-header-text ends -->
                        <div class="clear"></div>
                        <div class="table-responsive">
                            <table class="table table-bordered weight-medium text-xs">
                                <tr>
                                    <td class="text-capitalize table-data-label">Year 1</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblExpenditureForecastYear1" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Year 2</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblExpenditureForecastYear2" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Year 3</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblExpenditureForecastYear3" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Year 4</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblExpenditureForecastYear4" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Year 5</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblExpenditureForecastYear5" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Year 6</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblExpenditureForecastYear6" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <!-- table-responsive ends -->
                    </div>
                    <!-- form-container ends -->
                    <div class="clear"></div>
                    <div class="position-relative table-container border-gamma mt-5">
                        <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                            <i class="fas fa-chart-pie"></i>
                        </div>
                        <!-- form-title-icon ends -->
                        <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                            <span>net profit forecast</span>
                        </div>
                        <!-- form-header-text ends -->
                        <div class="clear"></div>
                        <div class="table-responsive">
                            <table class="table table-bordered weight-medium text-xs">
                                <tr>
                                    <td class="text-capitalize table-data-label">Year 1</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblNetProfitForecastYear1" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Year 2</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblNetProfitForecastYear2" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Year 3</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblNetProfitForecastYear3" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Year 4</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblNetProfitForecastYear4" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Year 5</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblNetProfitForecastYear5" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Year 6</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblNetProfitForecastYear6" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <!-- table-responsive ends -->
                    </div>
                    <!-- form-container ends -->
                    <div class="clear"></div>
                    <div class="position-relative table-container border-gamma mt-5">
                        <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                            <i class="fas fa-sitemap"></i>
                        </div>
                        <!-- form-title-icon ends -->
                        <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                            <span>cash flows from business operations</span>
                        </div>
                        <!-- form-header-text ends -->
                        <div class="clear"></div>
                        <div class="table-responsive">
                            <table class="table table-bordered weight-medium text-xs">
                                <tr>
                                    <td class="text-capitalize table-data-label">Year 1</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblCashFlowBussinessOpeYear1" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Year 2</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblCashFlowBussinessOpeYear2" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Year 3</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblCashFlowBussinessOpeYear3" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Year 4</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblCashFlowBussinessOpeYear4" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Year 5</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblCashFlowBussinessOpeYear5" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Year 6</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblCashFlowBussinessOpeYear6" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <!-- table-responsive ends -->
                    </div>
                    <!-- form-container ends -->
                    <div class="clear"></div>
                    <div class="position-relative table-container border-gamma mt-5">
                        <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                            <i class="fas fa-handshake"></i>
                        </div>
                        <!-- form-title-icon ends -->
                        <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                            <span>means of financing the project</span>
                        </div>
                        <!-- form-header-text ends -->
                        <div class="clear"></div>
                        <div class="table-responsive">
                            <table class="table table-bordered weight-medium text-xs">
                                <tr>
                                    <td class="text-capitalize table-data-label">Expected Government of Gujarat (GoG) assistance</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblMFProExpectecGoGAssistance" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Expected assistance from other Government organisations</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblMFProAssGovtOrg" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">promoters' contribution</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblMFProPromotorsContri" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">debt / borrowing</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblMFProDebtBorrowing" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">loan sanction letter uploaded?</td>
                                    <td class="weight-semi-bold text-uppercase">
                                        <asp:Label ID="lblMFProLoanSanc" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">total (<i class="fas fa-rupee-sign"></i>)</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblMFProTotal" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <!-- table-responsive ends -->
                    </div>
                    <!-- form-container ends -->
                    <div class="clear"></div>
                    <div class="position-relative table-container border-gamma mt-5">
                        <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                            <i class="fas fa-rupee-sign"></i>
                        </div>
                        <!-- form-title-icon ends -->
                        <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                            <span>Approximate Amount of Assistance Sought</span>
                        </div>
                        <!-- form-header-text ends -->
                        <div class="clear"></div>
                        <div class="table-responsive">
                            <table class="table table-bordered weight-medium text-xs">
                                <tr>
                                    <td class="text-capitalize table-data-label">Capital Subsidy</td>
                                    <td>
                                        <div class="weight-bold">
                                            <i class="fas fa-rupee-sign"></i>&nbsp;
                           <span>
                               <asp:Label ID="lblApproxAmtAsstSghtCapitalSubsidy" class="weight-semi-bold" runat="server"></asp:Label>
                           </span>
                                        </div>
                                        <hr class="hr-one">
                                        <div class="text-muted">
                                            <span class="weight-semi-bold">Remarks:</span>&nbsp;
                          <span>
                              <asp:Label ID="lblApproxAmtAsstSghtCapSubRemarks" class="weight-semi-bold" runat="server"></asp:Label>
                          </span>
                                        </div>
                                        <!-- text-sm ends -->
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Reimbursement Of Stamp<br>
                                        Duty / Registration Fee</td>
                                    <td>
                                        <div class="weight-bold">
                                            <span>
                                                <asp:Label ID="lblReimbuOfStampDutyRegisFee" class="weight-bold" runat="server"></asp:Label>
                                            </span>
                                        </div>
                                        <hr class="hr-one">
                                        <div class="text-muted">
                                            <span class="weight-semi-bold">Remarks:</span>&nbsp;
                          <span>
                              <asp:Label ID="lblReimbuOfStampDutyRegisRemark" class="weight-semi-bold" runat="server"></asp:Label>
                          </span>
                                        </div>
                                        <!-- text-sm ends -->
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Lease Rental Subsidy</td>
                                    <td>
                                        <div class="weight-bold">
                                            <i class="fas fa-rupee-sign"></i>&nbsp;<span>
                                                <asp:Label ID="lblLeaseRentalSubsidyFee" class="weight-bold" runat="server"></asp:Label>
                                            </span>
                                        </div>
                                        <hr class="hr-one">
                                        <div class="text-muted">
                                            <span class="weight-semi-bold">Remarks:</span>&nbsp;
                          <span>
                              <asp:Label ID="lblLeaseRentalSubsidyRemark" class="weight-semi-bold" runat="server"></asp:Label>
                          </span>
                                        </div>
                                        <!-- text-sm ends -->
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Interest Subsidy</td>
                                    <td>
                                        <div class="weight-bold">
                                            <span>
                                                <asp:Label ID="lblInterestSubsidyFee" class="weight-bold" runat="server"></asp:Label>
                                            </span>
                                        </div>
                                        <hr class="hr-one">
                                        <div class="text-muted">
                                            <span class="weight-semi-bold">Remarks:</span>&nbsp;
                          <span>
                              <asp:Label ID="lblInterestSubsidyRemark" class="weight-semi-bold" runat="server"></asp:Label>
                          </span>
                                        </div>
                                        <!-- text-sm ends -->
                                    </td>
                                    <!-- <td class="weight-semi-bold"></td> -->
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Power Tariff & Electricity Duty</td>
                                    <td>
                                        <div class="weight-bold">
                                            <span>
                                                <asp:Label ID="lblPowerTarrifElecDutyFee" class="weight-semi-bold" runat="server"></asp:Label>
                                            </span>
                                        </div>
                                        <hr class="hr-one">
                                        <div class="text-muted">
                                            <span class="weight-semi-bold">Remarks:</span>&nbsp;
                          <span>&nbsp;
                              <asp:Label ID="lblPowerTarrifElecDutyRemark" class="weight-semi-bold" runat="server"></asp:Label>
                          </span>
                                        </div>
                                        <!-- text-sm ends -->
                                    </td>
                                    <!-- <td class="weight-semi-bold"></td> -->
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">VAT/CST/GST Incentive</td>
                                    <td>
                                        <div class="weight-bold">
                                            <span>
                                                <asp:Label ID="lblVatCstGstFee" class="weight-semi-bold" runat="server"></asp:Label>
                                            </span>
                                        </div>
                                        <hr class="hr-one">
                                        <div class="text-muted">
                                            <span class="weight-semi-bold">Remarks:</span>&nbsp;
                          <span>&nbsp;
                              <asp:Label ID="lblVatCstGstRemarks" class="weight-semi-bold" runat="server"></asp:Label>
                          </span>
                                        </div>
                                        <!-- text-sm ends -->
                                    </td>
                                    <!-- <td class="weight-semi-bold"></td> -->
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">Employment Generation Grant On EPF</td>
                                    <td>
                                        <div class="weight-bold">
                                            <span>
                                                <asp:Label ID="lblEmpGrantEPFFee" class="weight-semi-bold" runat="server"></asp:Label>
                                            </span>
                                        </div>
                                        <hr class="hr-one">
                                        <div class="text-muted">
                                            <span class="weight-semi-bold">Remarks:</span>&nbsp;
                          <span>&nbsp;
                              <asp:Label ID="lblEmpGrantEPFRemark" class="weight-semi-bold" runat="server"></asp:Label>
                          </span>
                                        </div>
                                        <!-- text-sm ends -->
                                    </td>
                                    <!-- <td class="weight-semi-bold"></td> -->
                                </tr>

                                <tr>
                                    <td class="text-capitalize table-data-label">Quality Certification</td>
                                    <td>
                                        <div class="weight-bold">
                                            <span>
                                                <asp:Label ID="lblQualityCertiFee" class="weight-semi-bold" runat="server"></asp:Label>
                                            </span>
                                        </div>
                                        <hr class="hr-one">
                                        <div class="text-muted">
                                            <span class="weight-semi-bold">Remarks:</span>&nbsp;
                          <span>&nbsp;
                              <asp:Label ID="lblQualityCertiRemark" class="weight-semi-bold" runat="server"></asp:Label>
                          </span>
                                        </div>
                                        <!-- text-sm ends -->
                                    </td>
                                    <!-- <td class="weight-semi-bold"></td> -->
                                </tr>

                            </table>
                        </div>
                        <!-- table-responsive ends -->
                    </div>
                    <!-- form-container ends -->
                    <div class="clear"></div>
                    <div class="position-relative table-container border-gamma mt-5">
                        <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                            <i class="fas fa-university"></i>
                        </div>
                        <!-- form-title-icon ends -->
                        <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                            <span>bank account details</span>
                        </div>
                        <!-- form-header-text ends -->
                        <div class="clear"></div>
                        <div class="table-responsive">
                            <table class="table table-bordered weight-medium text-xs">
                                <tr>
                                    <td class="text-capitalize table-data-label">Payment Mode</td>
                                    <td class="weight-semi-bold text-uppercase">
                                        <asp:Label ID="lblBnkAcctDetailsPaymentMode" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">bank name</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblBnkAcctDetailsBankName" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">branch name</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblBnkAcctDetailsBranchName" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">bank account number</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblBnkAcctDetailsBnkAcctNo" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="text-capitalize table-data-label">IFSC number</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblBnkAcctDetailsIFSCNumber" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <!-- table-responsive ends -->
                    </div>
                    <!-- form-container ends -->
                    <div class="clear"></div>
                    <div class="position-relative table-container border-gamma mt-5">
                        <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                            <i class="far fa-calendar-check"></i>
                        </div>
                        <!-- form-title-icon ends -->
                        <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                            <span>date of beginning</span>
                        </div>
                        <!-- form-header-text ends -->
                        <div class="clear"></div>
                        <div class="table-responsive">
                            <table class="table table-bordered weight-medium text-xs">
                                <tr>
                                    <td class="text-capitalize table-data-label">tentative date of beginning of commercial operations</td>
                                    <td class="weight-semi-bold">
                                        <asp:Label ID="lblBeginTentativeDateCommercialOperation" class="weight-semi-bold" runat="server"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <!-- table-responsive ends -->
                    </div>
                    <!-- form-container ends -->
                    <div class="clear"></div>
                    <div class="form-check">
                        <asp:CheckBox ID="chkAgreementCheck" CssClass="form-check-input" runat="server" />
                        <label>
                            I hereby declare that the information submitted in this application is true and correct to the best of my knowledge. 
                        </label>
                    </div>
                    <!-- form-check ends -->
                    <div class="clear"></div>
                    <div class="text-right">
                        <asp:Button runat="server" ID="btnSubmitAnnexure3A" class="btn btn-primary" Text="Submit Annexure-3A" />
                    </div>
                    <!-- text-right ends -->
                    <!-- Annexure-3A Acknowlwdgement Area Ends -->

                    <!-- -----*----- TAB PANEL CONTENT AREA ENDS -----*----- -->
                </div>
                <!-- tab-pane ends -->
                <div role="tabpanel" class="tab-pane fade tab-pane fade show active" id="tabDocUpload" aria-labelledby="tabItem6" runat="server">
                    <!-- -----*----- TAB PANEL CONTENT AREA STARTS -----*----- -->
                    <div class="position-relative form-container border-gamma">
                        <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                            <i class="far fa-file-alt"></i>
                        </div>
                        <!-- form-title-icon ends -->
                        <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                            <span>Required documents</span>
                        </div>
                        <!-- form-header-text ends -->
                        <div class="clear"></div>
                        <div class="row">

                            <div class="mb-3 col-lg-12">
                                <div class="custom-form-label">please attach certified copy of the partnership deed<span class="text-danger text-sm m-1">*</span></div>
                                <div class="input-group">
                                    <asp:FileUpload ID="fuAttachedFileCCPD" runat="server" />
                                    <asp:RequiredFieldValidator ID="rfvfuAttachedFileCCPD" runat="server" Display="dynamic" ForeColor="red" Enabled="false"
                                        ControlToValidate="fuAttachedFileCCPD" ErrorMessage="File Required!" ValidationGroup="docAttachedFileCCPDUpload">
                                    </asp:RequiredFieldValidator>
                                    <asp:Button runat="server" ID="btnAttachedFileCCPDUpload" Text="Upload" ValidationGroup="docAttachedFileCCPDUpload" OnClick="btnAttachedFileCCPDUpload_Click" />
                                    <asp:LinkButton runat="server" Text="View Doc" ID="lnkviewAttachedFileCCPD" Visible="false" OnClick="lnkviewAttachedFileCCPD_Click"></asp:LinkButton>
                                    <asp:HiddenField ID="hdnAttachedFileCCPDFilename" runat="server" />
                                </div>
                                <!-- input group ends -->
                            </div>
                            <!-- col ends -->

                            <div class="mb-3 col-lg-12">
                                <div class="custom-form-label">Please attach certified copy of the memorandum and articles of association or equivalent registration documents<span class="text-danger text-sm m-1">*</span></div>
                                <div class="input-group">
                                    <asp:FileUpload ID="fuERD" runat="server" />
                                    <asp:RequiredFieldValidator ID="rfvfuERD" runat="server" Display="dynamic" ForeColor="red" Enabled="false"
                                        ControlToValidate="fuERD" ErrorMessage="File Required!" ValidationGroup="docERD">
                                    </asp:RequiredFieldValidator>
                                    <asp:Button runat="server" ID="btnERDUpload" Text="Upload" ValidationGroup="docERD" OnClick="btnERDUpload_Click" />
                                    <asp:LinkButton runat="server" Text="View Doc" ID="lnkviewERDCard" Visible="false" OnClick="lnkviewERDCard_Click"></asp:LinkButton>
                                    <asp:HiddenField ID="hdnERDfilename" runat="server" />
                                </div>
                                <!-- input group ends -->
                            </div>
                            <!-- col ends -->

                            <div class="mb-3 col-lg-12">
                                <div class="custom-form-label">Please enclose memorandum and articles of association<span class="text-danger text-sm m-1">*</span></div>
                                <div class="input-group">
                                    <asp:FileUpload ID="fuMAA" runat="server" />
                                    <asp:RequiredFieldValidator ID="rfvfuMAA" runat="server" Display="dynamic" ForeColor="red" Enabled="false"
                                        ControlToValidate="fuMAA" ErrorMessage="File Required!" ValidationGroup="docMAA">
                                    </asp:RequiredFieldValidator>
                                    <asp:Button runat="server" ID="btnuploadMAA" Text="Upload" ValidationGroup="docMAA" OnClick="btnuploadMAA_Click" />
                                    <asp:LinkButton runat="server" Text="View Doc" ID="lnkMAA" Visible="false" OnClick="lnkMAA_Click"></asp:LinkButton>
                                    <asp:HiddenField ID="hdnMAAfilename" runat="server" />
                                </div>
                                <!-- input group ends -->
                            </div>
                            <!-- col ends -->

                            <div class="mb-3 col-lg-12">
                                <div class="custom-form-label">Please upload scanned copy of certificate of incorporation<span class="text-danger text-sm m-1">*</span></div>
                                <div class="input-group">
                                    <asp:FileUpload ID="fuCOI" runat="server" />
                                    <asp:RequiredFieldValidator ID="rfvfuCOI" runat="server" Display="dynamic" ForeColor="red" Enabled="false"
                                        ControlToValidate="fuCOI" ErrorMessage="File Required!" ValidationGroup="docCOI">
                                    </asp:RequiredFieldValidator>
                                    <asp:Button runat="server" ID="btnuploadCOI" Text="Upload" ValidationGroup="docCOI" OnClick="btnuploadCOI_Click" />
                                    <asp:LinkButton runat="server" Text="View Doc" ID="lnkCOI" Visible="false" OnClick="lnkCOI_Click"></asp:LinkButton>
                                    <asp:HiddenField ID="hdnfpCOIfilename" runat="server" />
                                </div>
                                <!-- input group ends -->
                            </div>
                            <!-- col ends -->

                            <div class="mb-3 col-lg-12">
                                <div class="custom-form-label">please attach scanned copy of the PAN card<span class="text-danger text-sm m-1">*</span></div>
                                <div class="input-group">
                                    <asp:FileUpload ID="fuPAN" runat="server" />
                                    <asp:RequiredFieldValidator ID="rfvfuPAN" runat="server" Display="dynamic" ForeColor="red" Enabled="false"
                                        ControlToValidate="fuPAN" ErrorMessage="File Required!" ValidationGroup="docPAN">
                                    </asp:RequiredFieldValidator>
                                    <asp:Button runat="server" ID="btnuploadPAN" Text="Upload" ValidationGroup="docPAN" OnClick="btnuploadPAN_Click" />
                                    <asp:LinkButton runat="server" Text="View Doc" ID="lnkPAN" Visible="false" OnClick="lnkPAN_Click"></asp:LinkButton>
                                    <asp:HiddenField ID="hdnfpPANfilename" runat="server" />
                                </div>
                                <!-- input group ends -->
                            </div>
                            <!-- col ends -->

                            <div class="mb-3 col-lg-12">
                                <div class="custom-form-label">Please upload GST registration certificate<span class="text-danger text-sm m-1">*</span></div>
                                <div class="input-group">
                                    <asp:FileUpload ID="fuGSTIN" runat="server" />
                                    <asp:RequiredFieldValidator ID="rfvfuGSTIN" runat="server" Display="dynamic" ForeColor="red" Enabled="false"
                                        ControlToValidate="fuGSTIN" ErrorMessage="File Required!" ValidationGroup="docGSTIN">
                                    </asp:RequiredFieldValidator>
                                    <asp:Button runat="server" ID="btnuploadGSTIN" Text="Upload" ValidationGroup="docGSTIN" OnClick="btnuploadGSTIN_Click" />
                                    <asp:LinkButton runat="server" Text="View Doc" ID="lnkGSTIN" Visible="false" OnClick="lnkGSTIN_Click"></asp:LinkButton>
                                    <asp:HiddenField ID="hdnfpGSTINfilename" runat="server" />
                                </div>
                                <!-- input group ends -->
                            </div>
                            <!-- col ends -->

                            <div class="mb-3 col-lg-12">
                                <div class="custom-form-label">Please upload CA certificate showing the shareholding pattern<span class="text-danger text-sm m-1">*</span></div>
                                <div class="input-group">
                                    <asp:FileUpload ID="fuCACerti" runat="server" />
                                    <asp:RequiredFieldValidator ID="rfvfuCACerti" runat="server" Display="dynamic" ForeColor="red" Enabled="false"
                                        ControlToValidate="fuCACerti" ErrorMessage="File Required!" ValidationGroup="docCACerti">
                                    </asp:RequiredFieldValidator>
                                    <asp:Button runat="server" ID="btnUploadCACerti" Text="Upload" ValidationGroup="docCACerti" OnClick="btnUploadCACerti_Click" />
                                    <asp:LinkButton runat="server" Text="View Doc" ID="lnkCACerti" Visible="false" OnClick="lnkCACerti_Click"></asp:LinkButton>
                                    <asp:HiddenField ID="hdnfpCACertifilename" runat="server" />
                                </div>
                                <!-- input group ends -->
                            </div>
                            <!-- col ends -->

                            <div class="mb-3 col-lg-12">
                                <div class="custom-form-label">Please upload copy of authorisation letter<span class="text-danger text-sm m-1">*</span></div>
                                <div class="input-group">
                                    <asp:FileUpload ID="fuAuthLetter" runat="server" />
                                    <asp:RequiredFieldValidator ID="rfvfuAuthLetter" runat="server" Display="dynamic" ForeColor="red" Enabled="false"
                                        ControlToValidate="fuAuthLetter" ErrorMessage="File Required!" ValidationGroup="docAuthLetter">
                                    </asp:RequiredFieldValidator>
                                    <asp:Button runat="server" ID="btnuploadAuthLetter" Text="Upload" ValidationGroup="docAuthLetter" OnClick="btnuploadAuthLetter_Click" />
                                    <asp:LinkButton runat="server" Text="View Doc" ID="lnkAuthLetter" Visible="false" OnClick="lnkAuthLetter_Click"></asp:LinkButton>
                                    <asp:HiddenField ID="hdnfpAuthLetterfilename" runat="server" />

                                </div>
                                <!-- input group ends -->
                            </div>
                            <!-- col ends -->

                            <div class="mb-3 col-lg-12">
                                <div class="custom-form-label">Please upload proof of land / office space possession<span class="text-danger text-sm m-1">*</span></div>
                                <div class="input-group">
                                    <asp:FileUpload ID="fuLandProof" runat="server" />
                                    <asp:RequiredFieldValidator ID="rfvfuLandProof" runat="server" Display="dynamic" ForeColor="red" Enabled="false"
                                        ControlToValidate="fuLandProof" ErrorMessage="File Required!" ValidationGroup="docLandProof">
                                    </asp:RequiredFieldValidator>
                                    <asp:Button runat="server" ID="btnuploadLandProof" Text="Upload" ValidationGroup="docLandProof" OnClick="btnuploadLandProof_Click" />
                                    <asp:LinkButton runat="server" Text="View Doc" ID="lnkLandProof" Visible="false" OnClick="lnkLandProof_Click"></asp:LinkButton>
                                    <asp:HiddenField ID="hdnfuLandProoffilename" runat="server" />

                                </div>
                                <!-- input group ends -->
                            </div>
                            <!-- col ends -->

                            <div class="mb-3 col-lg-12">
                                <div class="custom-form-label">Please upload detailed project report (DPR)<span class="text-danger text-sm m-1">*</span></div>
                                <div class="input-group">
                                    <asp:FileUpload ID="fuDPR" runat="server" />
                                    <asp:RequiredFieldValidator ID="rfvfuDPR" runat="server" Display="dynamic" ForeColor="red" Enabled="false"
                                        ControlToValidate="fuDPR" ErrorMessage="File Required!" ValidationGroup="docDPR">
                                    </asp:RequiredFieldValidator>
                                    <asp:Button runat="server" ID="btnuploadDPR" Text="Upload" ValidationGroup="docDPR" OnClick="btnuploadDPR_Click" />
                                    <asp:LinkButton runat="server" Text="View Doc" ID="lnkDPR" Visible="false" OnClick="lnkDPR_Click"></asp:LinkButton>
                                    <asp:HiddenField ID="hdnfuDPRfilename" runat="server" />

                                </div>
                                <!-- input group ends -->
                            </div>
                            <!-- col ends -->

                            <div class="mb-3 col-lg-12">
                                <div class="custom-form-label">Please upload loan sanction letter<span class="text-danger text-sm m-1">*</span></div>
                                <div class="input-group">
                                    <asp:FileUpload ID="fuLoanSanctionLetter" runat="server" />
                                    <asp:RequiredFieldValidator ID="rfvfuLoanSanctionLetter" runat="server" Display="dynamic" ForeColor="red" Enabled="false"
                                        ControlToValidate="fuLoanSanctionLetter" ErrorMessage="File Required!" ValidationGroup="docLoanSanctionLetter">
                                    </asp:RequiredFieldValidator>
                                    <asp:Button runat="server" ID="btnuploadLoanSanctionLetter" Text="Upload" ValidationGroup="docLoanSanctionLetter" OnClick="btnuploadLoanSanctionLetter_Click" />
                                    <asp:LinkButton runat="server" Text="View Doc" ID="lnkLoanSanctionLetter" Visible="false" OnClick="lnkLoanSanctionLetter_Click"></asp:LinkButton>
                                    <asp:HiddenField ID="hdnfuLoanSanctionLetterfilename" runat="server" />

                                </div>
                                <!-- input group ends -->
                            </div>
                            <!-- col ends -->

                        </div>
                        <!-- row ends -->
                    </div>
                    <!-- form-container ends -->

                </div>
                <div class="clear"></div>
                <div class="text-right">

                    <%--
                        <asp:Button runat="server" ID="btnRequiredDoc" Text="Continue" CssClass="btn btn-primary" ValidationGroup="DocUpload" OnClick="btnRequiredDoc_Click" />--%>


                    <%-- <input type="reset" class="btn btn-outline-secondary" value="Reset Form">
                  <input type="submit" class="btn btn-primary" value="Save & Continue">--%>
                </div>
                <!-- text-right ends -->
                <!-- -----*----- TAB PANEL CONTENT AREA ENDS -----*----- -->
                <!-- tab-pane ends -->
            </div>
            <!-- tab-pane ends -->
    </div>
    <!-- tab-content ends -->
    </section>
    </div>
    <!-- col ends -->
    <!-- gijgo date picker resources starts -->
    <script>
        var datePickerProperties = {
            header: true,
            //footer: true,
            //modal: true,
            calendarWeeks: true,
            format: 'dd-mm-yyyy',
            showOnFocus: true,
            size: 'default', /* small, default, large */
            weekStartDay: 1,
            showRightIcon: false,
            //showOtherMonths: false,
            //selectOtherMonths: false,
            uiLibrary: 'bootstrap4',
            iconsLibrary: 'fontawesome'
        };
        $.each(['#exhibitionDatePicker1', '#exhibitionDatePicker2', '#dateOfBeginning'], function (index, value) {
            $(value).datepicker(datePickerProperties);
        });
    </script>
    <!-- gijgo date picker resources end -->
</asp:Content>
