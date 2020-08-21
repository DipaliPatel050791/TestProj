       <%@ Page Title="" Language="C#" MasterPageFile="~/Policy.master" AutoEventWireup="true" CodeFile="NewApplicationIT.aspx.cs" Inherits="EntryForms_NewApplicationIT" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <script type="text/javascript">
    function Validate(sender, args) {
        var gridView = document.getElementById("<%=grdIncentive.ClientID %>");
        var checkBoxes = gridView.getElementsByTagName("input");
        for (var i = 0; i < checkBoxes.length; i++) {
            if (checkBoxes[i].type == "checkbox" && checkBoxes[i].checked) {
                args.IsValid = true;
                return;
            }
        }
        args.IsValid = false;
    }
</script>

     
     <div class="col-md-9 canvas">
         <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
         <asp:hiddenfield runat ="server" ID="hdnapplicant_address_id" />
           <asp:hiddenfield runat ="server" ID="hdnOfficeaddressid" />
           <asp:hiddenfield runat ="server" ID="hdnFactoryaddressid" />
          <asp:hiddenfield runat ="server" ID="hdnEntityaddressid" />
         <asp:hiddenfield runat ="server" ID="hdnAuthorisedPersonAddressID" />
         
          <asp:Label runat="server" ID="MSG" ForeColor="Red" Font-Bold="True" class="control-label"></asp:Label>
         <div class="section-progress">
          <div class="progress-box">
            <div class="text-lg text-capitalize text-center weight-bold mb-1">application progress (annexure wise)</div>
            <ul>
              <!-- 1 -->
              <li>
                <a href="#">
                  <div class="pro-circle weight-semi-bold card-text-i bg-info-lite border-info"><span>1</span></div>
                </a>
              </li>
              <!-- arrow -->
              <li>
                <div class="pro-arrow"><i class="fas fa-long-arrow-alt-right card-text-i"></i></div>
              </li>
              <!-- 2 -->
              <li>
                <a href="#">
                  <div class="pro-circle weight-semi-bold card-text-i bg-smoke-lite border-smoke">2</div>
                </a>
              </li>
              <!-- arrow -->
              <li>
                <div class="pro-arrow"><i class="fas fa-long-arrow-alt-right card-text-i"></i></div>
              </li>
              <!-- 3 -->
              <li>
                <a href="#">
                  <div class="pro-circle weight-semi-bold card-text-i bg-smoke-lite border-smoke">3</div>
                </a>
              </li>
              <!-- arrow -->
              <li>
                <div class="pro-arrow"><i class="fas fa-long-arrow-alt-right card-text-i"></i></div>
              </li>
              <!-- 4 -->
              <li>
                <a href="#">
                  <div class="pro-circle weight-semi-bold card-text-i bg-smoke-lite border-smoke">4</div>
                </a>
              </li>
              <!-- arrow -->
              <li>
                <div class="pro-arrow"><i class="fas fa-long-arrow-alt-right card-text-i"></i></div>
              </li>
              <!-- 5 -->
              <li>
                <a href="#">
                  <div class="pro-circle weight-semi-bold card-text-i bg-smoke-lite border-smoke">5</div>
                </a>
              </li>
            </ul>  
          </div> <!-- progress-box ends -->
          <div class="progress">
            <div class="progress-bar bg-success" role="progressbar" style="width: 0%" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"><span>0%</span></div>
            <div class="progress-bar bg-info" role="progressbar" style="width: 20%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"><span>In-progress</span></div>
          </div> <!-- progress ends -->
        </div>
           <section class="mt-3 mb-3">
          <ul class="nav nav-tabs" role="tablist">
            <li class="nav-item">
                <asp:LinkButton runat ="server" ID="linktabTitle1" class ="nav-link text-sm text-capitalize active" Text ="<%$Resources:Resource1, NewITBasicDetail %>" OnClick="linktabTitle1_Click"></asp:LinkButton>
           
            </li>
            <li class="nav-item">

                  <asp:LinkButton runat ="server" ID="linktabTitle2" class ="nav-link text-sm text-capitalize" Text ="<%$Resources:Resource1, NewITNatureEntity %>" OnClick="linktabTitle2_Click"></asp:LinkButton>

            
            </li>
            <li class="nav-item">


                 <asp:LinkButton runat ="server" ID="linktabTitle3" class ="nav-link text-sm text-capitalize" Text ="<%$Resources:Resource1, NewITAssSought %>" OnClick="linktabTitle3_Click" ></asp:LinkButton>

             <%-- <a class="nav-link text-sm text-capitalize" role="tab"  runat ="server" data-toggle="tab" href="#tabItem3" id="tabTitle3"  aria-controls="tabItem3"><asp:Literal runat ="server" Text ="<%$Resources:Resource1, NewITAssSought %>"></asp:Literal></a>--%>
            </li>
            <li class="nav-item">

                 <asp:LinkButton runat ="server" ID="linktabTitle4" class ="nav-link text-sm text-capitalize" Text ="<%$Resources:Resource1, NewITIncenDetail %>" OnClick="linktabTitle4_Click" ></asp:LinkButton>

             <%-- <a class="nav-link text-sm text-capitalize" role="tab"  runat ="server" data-toggle="tab" href="#tabItem4" id="tabTitle4"  aria-controls="tabItem4"><asp:Literal runat ="server" Text ="<%$Resources:Resource1, NewITIncenDetail %>"></asp:Literal></a>--%>
            </li>

               <li class="nav-item">
                    <asp:LinkButton runat ="server" ID="linktabTitle6" class ="nav-link text-sm text-capitalize" Text ="required documents" OnClick="linktabTitle6_Click" ></asp:LinkButton>
             <%-- <a class="nav-link text-sm text-capitalize" role="tab" data-toggle="tab" href="#tabItem6" id="tab-Item-6"  aria-controls="tabItem6">required documents</a>--%>
            </li>


            <li class="nav-item">

                   <asp:LinkButton runat ="server" ID="linktabTitle5" class ="nav-link text-sm text-capitalize" Text ="<%$Resources:Resource1, NewITIacknowledgement %>" OnClick="linktabTitle5_Click" ></asp:LinkButton>

              <%--<a class="nav-link text-sm text-capitalize" role="tab"  runat ="server"  data-toggle="tab" href="#tabItem5" id="tabTitle5"  aria-controls="tabItem5"><asp:Literal runat ="server" Text ="<%$Resources:Resource1, NewITIacknowledgement %>"></asp:Literal></a>--%>
            </li>
          </ul> <!-- nav-tabs ends -->
        </section>
          <section>
          <div class="text-sm">
            <span class="weight-bold">Note:</span><br>
            <span>You will need to upload all the mandatory documents in the <span class="weight-semi-bold">'Required Documents'</span> tab of this form.</span><br>
            <span class="text-danger text-lg m-1 weight-bold">*</span><span>denoted required field.</span>
          </div>
          <div>
            
          </div>
        </section>



        <section>
          <div class="text-sm text-right">
              <asp:HiddenField runat ="server" id="hdnPanNo"/>
           <%--   <asp:Literal runat ="server" Text ="<%$Resources:Resource1, NewITIDenotedField %>"></asp:Literal>--%>
           <%-- <span class="text-danger text-lg m-1">*</span>denoted required field.--%>
          </div>
        </section>
        
                <div class="tab-content">

              <div role="tabpanel" class="tab-pane fade show active" id="tabBasicDetails" aria-labelledby="tabItem1"  runat="server"  >
              <!-- -----*----- TAB PANEL CONTENT AREA STARTS -----*----- -->
            
                <div class="position-relative form-container border-gamma">
                  <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                    <i class="fas fa-user-tie"></i>
                  </div> <!-- form-title-icon ends -->
                  <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">

                        <asp:Literal runat ="server" Text ="<%$Resources:Resource1, NewITApplicantDetail %>"></asp:Literal>

                    <%--<span>applicant's details</span>--%>
                  </div>  <!-- form-header-text ends -->
                  <div class="clear"></div>
                  <div class="row">
                    <div class="form-group col-lg-6">
                        <asp:Label runat ="server" ID="NewITlblFirstName" Text ="<%$Resources:Resource1, NewITlblFirstName %>"></asp:Label>
                    <%--  <label for="lblFirstName"><span>First Name</span><span class="text-danger text-sm m-1">*</span></label>--%>
                        <asp:TextBox runat ="server" ID="txtFirstName" class="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="reqfirstname" runat="server" Display="dynamic" ControlToValidate="txtFirstName" forecolor="red"  ValidationGroup="ITApplication" ErrorMessage="Enter First Name"></asp:RequiredFieldValidator>
                    <%--  <input type="text" class="form-control" name="txtFirstName" id="lblFirstName" value="Lorem">--%>
                      <!-- <small id="" class="form-text text-muted">Informative message.</small> -->
                    </div> <!-- form-group / col ends -->
                    <div class="form-group col-lg-6">
                         <asp:Label runat ="server" ID="NewITlblLastName" Text ="<%$Resources:Resource1, NewITlblLastName %>"></asp:Label>
                   <%--   <label for="lblLastName"><span>Last Name</span><span class="text-danger text-sm m-1">*</span></label>--%>
                        <asp:TextBox id="txtLastName" class="form-control" runat ="server" ></asp:TextBox>
                          <asp:RequiredFieldValidator ID="reqlastname" runat="server" Display="dynamic" ControlToValidate="txtLastName" forecolor="red" ValidationGroup="ITApplication" ErrorMessage="Enter Last Name"></asp:RequiredFieldValidator>
                   <%--   <input type="text" class="form-control" name="txtLastName" id="lblLastName" value="Ipsum">--%>
                      <!-- <small id="" class="form-text text-muted">Informative message.</small> -->
                    </div> <!-- form-group / col ends -->
                    <div class="form-group col-lg-6">
                        <asp:Label runat ="server" ID="NewITlblMobileNumber" Text ="<%$Resources:Resource1, NewITlblMobileNumber %>"></asp:Label>
                     <%-- <label for="lblMobileNumber"><span>Mobile Number</span><span class="text-danger text-sm m-1">*</span></label>--%>
                          <asp:TextBox id="txtMobileNumber" class="form-control" runat ="server" maxlength="10"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="reqMobileNo" runat="server" Display="dynamic" ControlToValidate="txtMobileNumber" forecolor="red"  ValidationGroup="ITApplication" ErrorMessage="Enter Mobile No"></asp:RequiredFieldValidator>
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
        ControlToValidate="txtMobileNumber" ErrorMessage="Please enter valid Mobile number!" forecolor="red"
        ValidationExpression="^([7-9]{1})([0-9]{9})$" ValidationGroup="ITApplication"></asp:RegularExpressionValidator>
                      <%--<input type="text" class="form-control" name="txtMobileNumber" id="lblMobileNumber" maxlength="10" value="9977553311">--%>
                    </div> <!-- form-group / col ends -->
                    <div class="form-group col-lg-6">
                          <asp:Label runat ="server" ID="Label1" Text ="<%$Resources:Resource1, NewITlblEmailId %>"></asp:Label>
                    <%--  <label for="lblEmailId"><span>Email Id</span><span class="text-danger text-sm m-1">*</span></label>--%>
                          <asp:TextBox id="txtEmailId" class="form-control" runat ="server" ></asp:TextBox>
                         <asp:RequiredFieldValidator ID="reqEmailid" runat="server" Display="dynamic" ControlToValidate="txtEmailId" forecolor="red"  ValidationGroup="ITApplication" ErrorMessage="Enter Email Id"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" forecolor="red" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmailId" ErrorMessage="Invalid Email Format" ValidationGroup="ITApplication"></asp:RegularExpressionValidator>
                     <%-- <input type="text" class="form-control" name="txtEmailId" id="lblEmailId" value="dummy.email@address.com">--%>
                    </div> <!-- form-group / col ends -->
                  </div> <!-- row ends -->
                </div> <!-- form-container ends -->
                <div class="clear"></div>
                <div class="position-relative form-container border-gamma mt-5">
                  <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                    <i class="far fa-envelope"></i>
                  </div> <!-- form-title-icon ends -->
                  <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                         <asp:Literal runat ="server" Text ="<%$Resources:Resource1, NewITcorrespondenceaddress %>"></asp:Literal>
                 <%--   <span>correspondence address</span>--%>
                  </div>  <!-- form-header-text ends -->
                  <div class="clear"></div>
                  <div class="row">
                    <div class="form-group col-lg-6">
                        <asp:Label runat ="server" ID="Label2" Text ="<%$Resources:Resource1, NewITlblPostalCode %>"></asp:Label>
                    <%--  <label for=""><span>Postal Code</span><span class="text-danger text-sm m-1">*</span></label>--%>
                         <asp:TextBox id="txtPostalCode" class="form-control" runat ="server"  maxlength="6"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="reqPostalCode" runat="server" Display="dynamic" forecolor="red" ControlToValidate="txtPostalCode"  ValidationGroup="ITApplication" ErrorMessage="Enter Postal Code"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" forecolor="red" ValidationExpression="\d{6}" ControlToValidate="txtPostalCode" ErrorMessage="Invalid Postal Code" ValidationGroup="ITApplication"></asp:RegularExpressionValidator>
                    <%--  <input type="text" class="form-control" name="" id="" maxlength="6">--%>
                    </div> <!-- form-group / col ends -->
                    <div class="form-group col-lg-6">
                         <asp:Label runat ="server" ID="Label3" Text ="<%$Resources:Resource1, NewITlblAddress1 %>"></asp:Label>
                    <%--  <label for=""><span>Address Line 1</span><span class="text-danger text-sm m-1">*</span></label>--%>
                          <asp:TextBox id="txtAddline1" class="form-control" runat ="server"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="reqAddline1" runat="server" Display="dynamic" forecolor="red" ControlToValidate="txtAddline1"  ValidationGroup="ITApplication" ErrorMessage="Enter Address Line1"></asp:RequiredFieldValidator>
                    </div> <!-- form-group / col ends -->
                    <div class="form-group col-lg-6">
                        <asp:Label runat ="server" ID="Label4" Text ="<%$Resources:Resource1, NewITlblAddress2 %>"></asp:Label>
                   <%--   <label for=""><span>Address Line 2</span></label>--%>
                         <asp:TextBox id="txtAddline2" class="form-control" runat ="server"></asp:TextBox>
                     <%-- <input type="text" class="form-control" name="" id="">--%>
                    </div> <!-- form-group / col ends -->
                    <div class="form-group col-lg-6">
                         <asp:Label runat ="server" ID="Label5" Text ="<%$Resources:Resource1, NewITlblCity %>"></asp:Label>
                     <%-- <label for=""><span>City / Village</span><span class="text-danger text-sm m-1">*</span></label>--%>
                         <asp:TextBox id="txtCity" class="form-control" runat ="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqCiy" runat="server" forecolor="red" Display="dynamic" ControlToValidate="txtCity"  ValidationGroup="ITApplication" ErrorMessage="Enter City/Village"></asp:RequiredFieldValidator>
                     <%-- <input type="text" class="form-control" name="" id="">--%>
                    </div> <!-- form-group / col ends -->
                    <div class="mb-3 col-lg-6">
                         <asp:Label runat ="server" ID="Label6" Text ="<%$Resources:Resource1, NewITlblState %>"></asp:Label>
                    <%--  <label for=""><span>State</span><span class="text-danger text-sm m-1">*</span></label>--%>
                      <div class="input-group">
                          <asp:DropDownList runat="server" class="custom-select" ID="ddlState"></asp:DropDownList>
                            <asp:RequiredFieldValidator ID="reqstate" runat="server" forecolor="red" Display="dynamic" ControlToValidate="ddlState" InitialValue="0" ValidationGroup="ITApplication" ErrorMessage="Select State"></asp:RequiredFieldValidator>
                       <%-- <select class="custom-select" name="" id="">
                          <option selected disabled>Choose</option>
                          <option value="1">Gujarat</option>
                          <option value="2">Rajasthan</option>
                          <option value="3">Maharashtra</option>
                        </select>--%>
                      </div> <!-- input group ends -->
                    </div> <!-- col ends -->
                    <div class="form-group col-lg-6">
                         <asp:Label runat ="server" ID="Label7" Text ="<%$Resources:Resource1, NewITlblTelePhoneNo %>"></asp:Label>
                     <%-- <label for=""><span>Telephone Number</span></label>--%>
                          <asp:TextBox id="txtTelephoneNo" class="form-control" runat ="server"></asp:TextBox>
                     <%-- <input type="text" class="form-control" name="" id="">--%>
                    </div> <!-- form-group / col ends -->
                  </div> <!-- row ends -->
                </div> <!-- form-container ends -->
                <div class="clear"></div>
                <div class="position-relative form-container border-gamma mt-5">
                  <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                    <i class="far fa-id-card"></i>
                  </div> <!-- form-title-icon ends -->
                  <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                        <asp:Literal runat ="server" Text ="<%$Resources:Resource1, NewITidentityProof %>"></asp:Literal>
                   <%-- <span>identity proof</span>--%>
                  </div>  <!-- form-header-text ends -->
                  <div class="clear"></div>
                  <div class="row">
                    <div class="mb-3 col-lg-6">
                            <asp:Label runat ="server" ID="Label8" Text ="<%$Resources:Resource1, NewITlblidentityProof %>"></asp:Label>
                     <%-- <label for=""><span>identity proof</span><span class="text-danger text-sm m-1">*</span></label>--%>
                      <div class="input-group">
                           <asp:DropDownList runat="server" ID="ddlIdentityProof" class="custom-select"></asp:DropDownList>
                             <asp:RequiredFieldValidator ID="reqIdentityProof" runat="server" forecolor="red" Display="dynamic"   ControlToValidate="ddlIdentityProof" InitialValue="0" ValidationGroup="ITApplication" ErrorMessage="Select identity proof"></asp:RequiredFieldValidator>
                       <%-- <select class="custom-select" name="" id="">
                          <option selected disabled>Choose</option>
                          <option value="1">Passport</option>
                          <option value="2">Driving License</option>
                          <option value="3">Election Card / Voter ID</option>
                          <option value="4">PAN Card</option>
                          <option value="5">Aadhaar Card</option>
                        </select>--%>
                      </div> <!-- input group ends -->
                    </div> <!-- col ends -->
                    <div class="form-group col-lg-6">
                         <asp:Label runat ="server" ID="Label9" Text ="<%$Resources:Resource1, NewITlblIDNo %>"></asp:Label>
                         <asp:TextBox id="txtIDNo" class="form-control" runat ="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqID" runat="server" Display="dynamic" ControlToValidate="txtIDNo"   forecolor="red"  ValidationGroup="ITApplication" ErrorMessage="Enter ID number" ></asp:RequiredFieldValidator>
                      <%--<label for=""><span>ID number</span><span class="text-danger text-sm m-1">*</span></label>--%>
                    <%--  <input type="text" class="form-control" name="" id="">--%>
                    </div> <!-- form-group / col ends -->
                      <div runat ="server" id="IDProof" visible ="false" >
                    <div class="mb-3 col-lg-12">
                      
                      <div class="custom-form-label">
                            <asp:Label runat ="server" ID="Label10" Text ="<%$Resources:Resource1, NewITlblScanCopy %>"></asp:Label>
                        <%--  Please upload scanned copy of identity proof<span class="text-danger text-sm m-1">*</span>--%></div>
                      <div class="input-group">
                            <asp:FileUpload ID="fpIdentityProof" runat="server" />
                            
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator1"   runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="fpIdentityProof" ErrorMessage="File Required!" ValidationGroup="ITApplication" Enabled ="false" >
        </asp:RequiredFieldValidator>
                           <asp:button runat="server" id="btnIdentityUpload" text="Upload" OnClick="btnIdentityUpload_Click" />
                      <%--  <input type="file" name="identity-proof">--%>
                      </div> <!-- input group ends -->
                    </div> <!-- col ends -->
                          </div>
                  </div> <!-- row ends -->
                </div> <!-- form-container ends -->
                <div class="clear"></div>
                <div class="text-right">
                    <asp:button runat="server" id="btnBasicReset" text="Reset Form" cssclass="btn btn-outline-secondary" OnClick="btnBasicReset_Click"/>
                      <asp:button runat="server" id="btnBasicSave" text="Save & Continue" cssclass="btn btn-primary" ValidationGroup="ITApplication" OnClick="btnBasicSave_Click"/>
                <%--  <input type="reset" class="btn btn-outline-secondary" value="Reset Form">--%>
                <%--  <input type="submit" class="btn btn-primary" value="Save & Continue">--%>
                </div> <!-- text-right ends -->
            
              <!-- -----*----- TAB PANEL CONTENT AREA ENDS -----*----- -->
            </div>

            
              <div role="tabpanel" class="tab-pane fade show active " id="tabEntityDetails" aria-labelledby="tabItem2" runat ="server"  >
              <!-- -----*----- TAB PANEL CONTENT AREA STARTS -----*----- -->
                  
                <div class="position-relative form-container border-gamma">
                  <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                    <i class="far fa-building"></i>
                  </div> <!-- form-title-icon ends -->
                  <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                       
                    <span><asp:Literal runat ="server" Text ="Entity Details"></asp:Literal></span>
                  </div>  <!-- form-header-text ends -->
                  <div class="clear"></div>
                  <div class="row">
                    <div class="form-group col-lg-6">
                           <asp:Label runat ="server" ID="lblEntityPAN" Text ="<%$Resources:Resource1, NewITlblEntityPAN %>"></asp:Label>
                    <%--  <label for="lblPan"><span>Entity PAN</span><span class="text-danger text-sm m-1">*</span></label>--%>
                        <asp:TextBox runat="server" ID="txtEntityPan" class="form-control" maxlength="10"></asp:TextBox>
                    
                      <small id="" class="form-text text-muted">
                          <asp:Literal runat ="server" Text ="<%$Resources:Resource1, NewITPanOfPro_Part_Com_Asso %>"></asp:Literal>
                          </small>
                    </div> <!-- form-group / col ends -->
                    <div class="mb-3 col-lg-6">
                          <div runat ="server" id="idpancard" visible ="false">
                      <div class="custom-form-label">
                           <asp:Literal runat ="server" Text ="<%$Resources:Resource1, NewITScanCopyOfPanCard %>"></asp:Literal></div>
                      
                      <div class="input-group">


                            <asp:FileUpload ID="fpPanCard" runat="server" />
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator2"  runat="server" Display="dynamic" forecolor="red" Enabled="false"
            ControlToValidate="fpPanCard" ErrorMessage="File Required!" ValidationGroup="Entity">
        </asp:RequiredFieldValidator>





                       <%-- <input type="file" name="pan-card">--%>
                      </div> <!-- input group ends -->
                            </div>
                    </div> <!-- col ends -->
                    <div class="form-group col-lg-6">

                         <asp:Label runat ="server" ID="lblEntityFirstName" Text ="<%$Resources:Resource1, NewITlblEntityFirstName %>"></asp:Label>

                     <%-- <label for="lblFirstName"><span>Entity Name</span><span class="text-danger text-sm m-1">*</span></label>--%>
                       <asp:TextBox runat="server" ID="txtEntityFirstName" class="form-control"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="reqentitynm"  runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="txtEntityFirstName" ErrorMessage="Entity Name Required!" ValidationGroup="Entity">
        </asp:RequiredFieldValidator>
                      <small id="" class="form-text text-muted">
                           <asp:Literal runat ="server" Text ="<%$Resources:Resource1, NewITCompany_Business_Entity name %>"></asp:Literal>
                          
                         </small>
                    </div> <!-- form-group / col ends -->
                    <div class="mb-3 col-lg-6">


                        <asp:Label runat ="server" ID="lblTypesOfEntityAssistance" Text ="<%$Resources:Resource1, NewITlblTypesOfEntityAssistance %>"></asp:Label>

                     <%-- <label for=""><span class="text-danger text-sm m-1">*</span></label>--%>
                      <div class="input-group">

                            <asp:DropDownList runat="server" class="custom-select" ID="ddlTypeOfEntity"></asp:DropDownList>
                          <asp:RequiredFieldValidator ID="reqTypeOfEntity" runat ="server" ErrorMessage="Types of Entity Required!" ControlToValidate ="ddlTypeOfEntity" InitialValue ="0" ValidationGroup="Entity" Display ="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                       <%-- <select class="custom-select" name="" id="">
                          <option selected disabled>Please select the type of entity</option>
                          <option value="1">Proprietorship</option>
                          <option value="2">Partnership Firm</option>
                          <option value="3">Company</option>
                          <option value="4">Association</option>
                        </select>--%>
                      </div> <!-- input group ends -->
                    </div> <!-- col ends -->
                      <div runat ="server" id="divPartnershipdeed" visible ="false" >
                    <div class="mb-3 col-lg-12">

                          <asp:Label runat ="server" CssClass ="custom-form-label" ID="Label11" Text ="<%$Resources:Resource1, NewITlblCopyOfPartnershipdeed %>"></asp:Label>

                   <%--   <div class="custom-form-label">please attach certified copy of the partnership deed<span class="text-danger text-sm m-1">*</span></div>--%>
                      <div class="input-group">
                        <asp:FileUpload ID="fpPartnershipdeed" runat="server" />
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator3"  runat="server" Display="dynamic" forecolor="red" Enabled ="false" 
            ControlToValidate="fpPartnershipdeed" ErrorMessage="File Required!" ValidationGroup="Entity">
        </asp:RequiredFieldValidator>
                      </div> <!-- input group ends -->
                    </div> <!-- col ends -->
                          </div>
                      <div runat ="server" id="divmemorandumdoc" visible ="false">
                    <div class="mb-3 col-lg-12">


                        <asp:Label runat ="server" CssClass ="custom-form-label" ID="Label12" Text ="<%$Resources:Resource1, NewITlblCopyOfMemorandum_RegDoc %>"></asp:Label>

                    <%--  <div class="custom-form-label">Please attach certified copy of the memorandum and articles of association or equivalent registration documents<span class="text-danger text-sm m-1">*</span>--%>

                         <div class="input-group">
                       <asp:FileUpload ID="fpRegistrationProof" runat="server" />
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator4"  runat="server" Display="dynamic" forecolor="red" Enabled ="false"
            ControlToValidate="fpPartnershipdeed" ErrorMessage="File Required!" ValidationGroup="Entity">
        </asp:RequiredFieldValidator>
                      </div> <!-- input group ends -->
                    </div>
</div>
                      <div class="col-12"></div> <!-- seperator -->


                     
                   
                    <div class="form-group col-lg-6">
                        <asp:Label runat ="server" ID="Label13" Text ="<%$Resources:Resource1, NewITlblEntityMobileNo %>"></asp:Label>
                   <%--   <label for=""><span>Entity Mobile Number</span><span class="text-danger text-sm m-1">*</span></label>--%>
                        <asp:TextBox runat ="server" ID="txtEntityMobileNo" CssClass ="form-control" maxlength="10"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="reqentityMob"  runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="txtEntityMobileNo" ErrorMessage="Entity MobileNo Required!" ValidationGroup="Entity">
        </asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
        ControlToValidate="txtEntityMobileNo" ErrorMessage="Please enter valid Mobile number!" forecolor="red"
        ValidationExpression="^([7-9]{1})([0-9]{9})$" ValidationGroup="Entity"></asp:RegularExpressionValidator>
                     <%-- <input type="text" class="form-control" name="" id="" maxlength="10">--%>
                    </div> <!-- form-group / col ends -->
                    <div class="form-group col-lg-6">
                          <asp:Label runat ="server" ID="Label14" Text ="<%$Resources:Resource1, NewITlblEntityTelephoneNo %>"></asp:Label>
                      <%--<label for=""><span>Entity Telephone Number</span></label>--%>

                          <asp:TextBox runat ="server" ID="txtEntityTelephoneNo" CssClass ="form-control" maxlength="10"></asp:TextBox>

                   <%--   <input type="text" class="form-control" name="" id="" maxlength="10">--%>
                    </div> <!-- form-group / col ends -->
                    <div class="form-group col-lg-6">
                         <asp:Label runat ="server" ID="Label15" Text ="<%$Resources:Resource1, NewITlblEntityFaxNo %>"></asp:Label>
                    <%--  <label for=""><span>Entity FAX Number</span></label>--%>
                         <asp:TextBox runat ="server" ID="txtEntityFaxNo" CssClass ="form-control" maxlength="10"></asp:TextBox>
                     <%-- <input type="text" class="form-control" name="" id="" maxlength="10">--%>
                    </div> <!-- form-group / col ends -->
                    <div class="form-group col-lg-6">
                         <asp:Label runat ="server" ID="Label16" Text ="<%$Resources:Resource1, NewITlblEntityEmailid%>"></asp:Label>  
                     <%-- <label for=""><span>Entity Email Id</span><span class="text-danger text-sm m-1">*</span></label>--%>
                        <asp:TextBox runat ="server" ID="txtEntityEmailId" CssClass ="form-control" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqEntityEmail"  runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="txtEntityEmailId" ErrorMessage="Entity Email Required!" ValidationGroup="Entity">
        </asp:RequiredFieldValidator>
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" forecolor="red" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEntityEmailId" ErrorMessage="Invalid Email Format" ValidationGroup="Entity"></asp:RegularExpressionValidator>

                     <%-- <input type="text" class="form-control" name="" id="">--%>
                    </div> <!-- form-group / col ends -->
                    
                  </div> <!-- row ends -->
                  </div>
                 <!-- form-container ends -->
                <div class="clear"></div>
                <div class="position-relative form-container border-gamma mt-5">
                  <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                    <i class="fas fa-building"></i>
                  </div> <!-- form-title-icon ends -->
                  <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                    <span> <asp:Literal runat ="server" Text ="<%$Resources:Resource1, NewITOfficeAddress %>"></asp:Literal>   <%--office address--%></span>
                  </div>  <!-- form-header-text ends -->
                  <div class="clear"></div>
                  <div class="row">
                    <div class="mb-3 col-lg-12">
                      <div class="form-check">
                       
                          <asp:CheckBox runat ="server" AutoPostBack ="true"  CssClass="form-check-input"  ID="chkOfficeAddsameCorrespondence" Text =" Is the office address same as the correspondence address?" Font-Bold="True" OnCheckedChanged="chkOfficeAddsameCorrespondence_CheckedChanged" />
                                 
                          &nbsp;
                        <%--<input class="form-check-input" type="checkbox" value="" id="officeAddressCheck">
                        <label class="form-check-label" for="officeAddressCheck">
                          <strong>Is the office address same as the correspondence address?</strong>
                        </label>--%>
                      </div> <!-- form-check ends -->
                          
                    </div> <!-- col ends -->
                   
                     
                    <div class="form-group col-lg-6">
                         <asp:Label runat ="server" ID="Label17" Text ="<%$Resources:Resource1, NewITlblOfficePostalCode %>"></asp:Label>
                     <%-- <label for=""><span>Postal Code</span><span class="text-danger text-sm m-1">*</span></label>--%>
                        <asp:TextBox runat ="server" ID="txtOfficePostalCode" CssClass ="form-control" maxlength="6"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator51"  runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="txtOfficePostalCode" ErrorMessage="Postal Code Required!" ValidationGroup="Entity">
        </asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator52" runat="server" forecolor="red" ValidationExpression="\d{6}" ControlToValidate="txtOfficePostalCode" ErrorMessage="Invalid Postal Code" ValidationGroup="Entity"></asp:RegularExpressionValidator>
                      <%--<input type="text" class="form-control" name="" id="" maxlength="6">--%>
                    </div> <!-- form-group / col ends -->
                    <div class="form-group col-lg-6">
                          <asp:Label runat ="server" ID="Label18" Text ="<%$Resources:Resource1, NewITlblOfficeAddressLine1 %>"></asp:Label>
                         <asp:TextBox runat ="server" ID="txtOfficeAddress1" CssClass ="form-control" ></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator53"  runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="txtOfficeAddress1" ErrorMessage="Office Address Required!" ValidationGroup="Entity">
        </asp:RequiredFieldValidator>
                     <%-- <label for=""><span>Address Line 1</span><span class="text-danger text-sm m-1">*</span></label>--%>
                    <%--  <input type="text" class="form-control" name="" id="">--%>
                    </div> <!-- form-group / col ends -->
                    <div class="form-group col-lg-6">
                          <asp:Label runat ="server" ID="Label19" Text ="<%$Resources:Resource1, NewITlblOfficeAddressLine2 %>"></asp:Label>
                    <%--  <label for=""><span>Address Line 2</span></label>--%>
                         <asp:TextBox runat ="server" ID="txtOfficeAddress2" CssClass ="form-control" ></asp:TextBox>
                     <%-- <input type="text" class="form-control" name="" id="">--%>
                    </div> <!-- form-group / col ends -->
                    <div class="form-group col-lg-6">
                         <asp:Label runat ="server" ID="Label20" Text ="<%$Resources:Resource1, NewITlblOfficeCity %>"></asp:Label>
                      <%--<label for=""><span>City / Village</span><span class="text-danger text-sm m-1">*</span></label>--%>
                        <asp:TextBox runat ="server" ID="txtOfficeCity" CssClass ="form-control" ></asp:TextBox>
                          <asp:RequiredFieldValidator ID="reqOfficeCity"  runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="txtOfficeCity" ErrorMessage="City Required!" ValidationGroup="Entity">
        </asp:RequiredFieldValidator>
                    <%--  <input type="text" class="form-control" name="" id="">--%>
                    </div> <!-- form-group / col ends -->
                    <div class="mb-3 col-lg-6">
                          <asp:Label runat ="server" ID="Label21" Text ="<%$Resources:Resource1, NewITlblOfficeState %>"></asp:Label>
                     <%-- <label for=""><span>State</span><span class="text-danger text-sm m-1">*</span></label>--%>
                      <div class="input-group">
                          <asp:DropDownList runat ="server" id="ddlOfficeState" CssClass ="custom-select"></asp:DropDownList>
                          <asp:RequiredFieldValidator ID="reqddlOfficeState"  runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="ddlOfficeState" ErrorMessage="State Required!" ValidationGroup="Entity" InitialValue ="0">
        </asp:RequiredFieldValidator>
                       <%-- <select class="custom-select" name="" id="">
                          <option selected disabled>Choose</option>
                          <option value="1">Gujarat</option>
                          <option value="2">Rajasthan</option>
                          <option value="3">Maharashtra</option>
                        </select>--%>
                      </div> <!-- input group ends -->
                    </div> <!-- col ends -->
                              
                          
                  </div> <!-- row ends -->
                </div> <!-- form-container ends -->
                <div class="clear"></div>
                <div class="position-relative form-container border-gamma mt-5">
                  <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                    <i class="fas fa-industry"></i>
                  </div> <!-- form-title-icon ends -->
                  <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                    <span><asp:Literal runat ="server" Text ="<%$Resources:Resource1, NewITFactoryAddress %>"></asp:Literal><%--factory address--%></span>
                  </div>  <!-- form-header-text ends -->
                  <div class="clear"></div>
                  <div class="row">
                    <div class="mb-3 col-lg-12">
                      <div class="form-check">
                           <asp:CheckBox runat ="server" CssClass="form-check-input" AutoPostBack="true"  ID="chkFactoryAddcheck" Text ="Is the factory address same as the correspondence address?" OnCheckedChanged="chkFactoryAddcheck_CheckedChanged"/>
                          &nbsp;
                        <%--<input class="form-check-input" type="checkbox" value="" id="factoryAddressCheck">
                        <label class="form-check-label" for="factoryAddressCheck">
                          <strong>Is the factory address same as the correspondence address?</strong>
                        </label>--%>
                      </div> <!-- form-check ends -->
                    </div> <!-- col ends -->
                    <div class="form-group col-lg-6">

                        <asp:Label runat ="server" ID="Label22" Text ="<%$Resources:Resource1, NewITlblFactoryPostalCode %>"></asp:Label>
                     <%-- <label for=""><span>Postal Code</span><span class="text-danger text-sm m-1">*</span></label>--%>
                        <asp:TextBox runat ="server" ID="txtFactoryPostalCode" CssClass ="form-control" maxlength="6"></asp:TextBox>

                          <asp:RequiredFieldValidator ID="reqtxtFactoryPostalCode"  runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="txtFactoryPostalCode" ErrorMessage="Factory Postal Code Required!" ValidationGroup="Entity">
        </asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regtxtFactoryPostalCode" runat="server" forecolor="red" ValidationExpression="\d{6}" ControlToValidate="txtFactoryPostalCode" ErrorMessage="Invalid Postal Code" ValidationGroup="Entity"></asp:RegularExpressionValidator>
                    <%--  <label for=""><span>Postal Code</span><span class="text-danger text-sm m-1">*</span></label>
                      <input type="text" class="form-control" name="" id="" maxlength="6">--%>
                    </div> <!-- form-group / col ends -->
                    <div class="form-group col-lg-6">
                         <asp:Label runat ="server" ID="Label23" Text ="<%$Resources:Resource1, NewITlblFactoryAddressLine1 %>"></asp:Label>
                         <asp:TextBox runat ="server" ID="txtFactoryAdd1" CssClass ="form-control" ></asp:TextBox>
                         <asp:RequiredFieldValidator ID="reqtxtFactoryAdd1"  runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="txtFactoryAdd1" ErrorMessage="Factory Address Required!" ValidationGroup="Entity">
        </asp:RequiredFieldValidator>
                     <%-- <label for=""><span>Address Line 1</span><span class="text-danger text-sm m-1">*</span></label>
                      <input type="text" class="form-control" name="" id="">--%>
                    </div> <!-- form-group / col ends -->
                    <div class="form-group col-lg-6">

                        <asp:Label runat ="server" ID="Label24" Text ="<%$Resources:Resource1, NewITlblFactoryAddressLine2 %>"></asp:Label>
                    <%--  <label for=""><span>Address Line 2</span></label>--%>
                         <asp:TextBox runat ="server" ID="txtFactoryAdd2" CssClass ="form-control" ></asp:TextBox>

                      <%--<label for=""><span>Address Line 2</span></label>
                      <input type="text" class="form-control" name="" id="">--%>
                    </div> <!-- form-group / col ends -->
                    <div class="form-group col-lg-6">
                         <asp:Label runat ="server" ID="Label25" Text ="<%$Resources:Resource1, NewITlblFactoryCity %>"></asp:Label>
                      <%--<label for=""><span>City / Village</span><span class="text-danger text-sm m-1">*</span></label>--%>
                        <asp:TextBox runat ="server" ID="txtFactoryCity" CssClass ="form-control" ></asp:TextBox>
                          <asp:RequiredFieldValidator ID="reqtxtFactoryCity"  runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="txtFactoryCity" ErrorMessage="Factory City Required!" ValidationGroup="Entity">
        </asp:RequiredFieldValidator>
                   <%--   <label for=""><span>City / Village</span><span class="text-danger text-sm m-1">*</span></label>
                      <input type="text" class="form-control" name="" id="">--%>
                    </div> <!-- form-group / col ends -->
                    <div class="mb-3 col-lg-6">
                        <asp:Label runat ="server" ID="Label26" Text ="<%$Resources:Resource1, NewITlblFactoryState %>"></asp:Label>
                     <%-- <label for=""><span>State</span><span class="text-danger text-sm m-1">*</span></label>--%>
                      <div class="input-group">
                           <asp:DropDownList runat ="server" id="ddlFactoryState" CssClass ="custom-select"></asp:DropDownList>
                           <asp:RequiredFieldValidator ID="reqddlFactoryState"  runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="ddlFactoryState" ErrorMessage="State Required!" ValidationGroup="Entity" InitialValue="0">
        </asp:RequiredFieldValidator>
                        <%--<select class="custom-select" name="" id="">
                          <option selected disabled>Choose</option>
                          <option value="1">Gujarat</option>
                          <option value="2">Rajasthan</option>
                          <option value="3">Maharashtra</option>
                        </select>--%>
                      </div> <!-- input group ends -->
                    </div> <!-- col ends -->
                  </div> <!-- row ends -->
                </div> <!-- form-container ends -->
                <div class="clear"></div>
                <div class="position-relative form-container border-gamma mt-5">
                  <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                    <i class="far fa-file-alt"></i>
                  </div> <!-- form-title-icon ends -->
                  <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                    <span><asp:Literal runat ="server" Text ="<%$Resources:Resource1, NewITRequiredDoc %>"></asp:Literal></span>
                  </div>  
                  <div class="clear"></div>
                  <div class="row">
                    <div class="form-group col-lg-6">
                          <asp:Label runat ="server" ID="Label27" Text ="<%$Resources:Resource1, NewITlblReqDocRegistrationNo %>"></asp:Label>
                 
                          <asp:TextBox runat ="server" ID="txtRegistrationNo" CssClass ="form-control" ></asp:TextBox>
                         <asp:RequiredFieldValidator ID="reqtxtRegistrationNo"  runat="server" Display="dynamic" forecolor="red" Enabled ="false" 
            ControlToValidate="txtRegistrationNo" ErrorMessage="RegistrationNo Required!" ValidationGroup="Entity">
        </asp:RequiredFieldValidator>
                   
                    </div> 
                    
                    <div class="form-group col-lg-6">
                         <asp:Label runat ="server" ID="Label29" Text ="<%$Resources:Resource1, NewITlblReqDocIncorporationCerti %>"></asp:Label>
                  
                         <asp:TextBox runat ="server" ID="txtIncorporationCerti" CssClass ="form-control" ></asp:TextBox>
                          <asp:RequiredFieldValidator ID="reqtxtIncorporationCerti"  runat="server" Display="dynamic" forecolor="red" Enabled ="false"
            ControlToValidate="txtIncorporationCerti" ErrorMessage="Certificate Of Incorporation Required!" ValidationGroup="Entity">
        </asp:RequiredFieldValidator>
                  
                    </div> 
                   
                    <div class="form-group col-lg-6">
                         <asp:Label runat ="server" ID="Label31" Text ="<%$Resources:Resource1, NewITlblReqDocGSTIN %>"></asp:Label>
                    
                         <asp:TextBox runat ="server" ID="txtGSTIN" CssClass ="form-control"  ></asp:TextBox>
                    
                    </div> 
                   
                   
                  </div> 
                </div>
                <div class="clear"></div>


                
                   <div class="clear"></div>
                 

                <div class="position-relative form-container border-gamma mt-5">
                  <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                    <i class="fas fa-user-tie"></i>
                  </div> <!-- form-title-icon ends -->
                  <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                    <span><asp:Literal runat ="server" Text ="<%$Resources:Resource1, NewITRequiredDocDir_PromoterDetails %>"></asp:Literal><%--Director / Promotor Details--%></span>
                  </div> <!-- form-header-text ends -->
                  <div class="position-absolute form-header-right">
                      <%--<asp:Button runat ="server" ID="btnaddDirector" CssClass ="btn btn-outline-dark btn-action" Text ="Add More" />--%>
                   <%-- <button type="button" class="btn btn-outline-dark btn-action">
                      <i class="fas fa-plus"></i><span>Add More</span>
                    </button>--%>
                     

                    <%--<button type="button" class="btn btn-outline-danger btn-action">
                      <i class="fas fa-times"></i><span>Remove</span>
                    </button>--%>
                  </div> <!-- form-header-right ends -->
                  <div class="clear"></div>
                  <div class="row">
                    <div class="form-group col-lg-6">
                      <label for="lblFirstName"><span>Director / Promotor Name</span><span class="text-danger text-sm m-1">*</span></label>
                        <asp:TextBox cssclass="form-control" id="txtDirectorFirstName" runat ="server"  ></asp:TextBox>
                         <asp:RequiredFieldValidator ID="reqDirtxtFirstName"  runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="txtDirectorFirstName" ErrorMessage="Director / Promotor Name Required!" ValidationGroup="Director" >
        </asp:RequiredFieldValidator>
                   <%--   <input type="text" class="form-control" name="txtFirstName" id="lblFirstName12" Text='<%#Eval("director_name") %>'>--%>
                      <!-- <small id="" class="form-text text-danger">Error Message.</small> -->
                    </div> <!-- form-group / col ends -->
                    <div class="form-group col-lg-6">
                      <label for="lblMobileNumber"><span>Mobile Number</span><span class="text-danger text-sm m-1">*</span></label>

                        <asp:TextBox cssclass="form-control" id="txtDirectorMobileNumber" runat ="server"   maxlength="10"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="reqdirtxtMobileNumber"  runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="txtDirectorMobileNumber" ErrorMessage="Mobile Number Required!" ValidationGroup="Director">
        </asp:RequiredFieldValidator>

                      <%--<input type="text" class="form-control" name="txtMobileNumber" id="lblMobileNumber" maxlength="10">--%>
                    </div> <!-- form-group / col ends -->
                    <div class="form-group col-lg-6">
                      <label for="lblEmailId"><span>Email Id</span><span class="text-danger text-sm m-1">*</span></label>


                          <asp:TextBox cssclass="form-control" id="txtDirectorEmailId" runat ="server"  ></asp:TextBox>
                         <asp:RequiredFieldValidator ID="reqdirtxtEmailId"  runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="txtDirectorEmailId" ErrorMessage="EmailId Required!" ValidationGroup="Director">
        </asp:RequiredFieldValidator>
                     <%-- <input type="text" class="form-control" name="txtEmailId" id="lblEmailId">--%>
                    </div> <!-- form-group / col ends -->
                    <div class="form-group col-lg-6">
                      <label for="lblPan"><span>PAN number</span><span class="text-danger text-sm m-1">*</span></label>

                         <asp:TextBox cssclass="form-control" id="txtDirectorPanNo" runat ="server"  ></asp:TextBox>
                         <asp:RequiredFieldValidator ID="reqdirtxtPanNo"  runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="txtDirectorPanNo" ErrorMessage="PAN Number Required!" ValidationGroup="Director">
        </asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regdirtxtPanNo" runat="server" forecolor="red" ValidationExpression="^[a-zA-Z]{5}[0-9]{4}[a-zA-Z]{1}$" ControlToValidate="txtDirectorPanNo" ErrorMessage="Invalid PAN Number" ValidationGroup="Director"></asp:RegularExpressionValidator>
                    <%--  <input type="text" class="form-control" name="txtPanNo" id="lblPan1">--%>   
                    </div> <!-- form-group / col ends -->
                    <div class="mb-3 col-lg-12">
                      <div class="form-check">

                               <asp:CheckBox runat ="server" CssClass="form-check-input" AutoPostBack="true"  ID="chkDirectorAddcheck" Text ="Is the director / promotor address same as the correspondence address?" OnCheckedChanged="chkDirectorAddcheck_OnCheckedChanged"/>
                           &nbsp;
                       <%-- <input class="form-check-input" type="checkbox" value="" id="directorAddressCheck">
                        <label class="form-check-label" for="directorAddressCheck">
                          <strong>Is the director / promotor address same as the correspondence address?</strong>
                        </label>--%>
                      </div> <!-- form-check ends -->
                    </div> <!-- col ends -->
                    <div class="form-group col-lg-12">
                       
                      <label for=""><span>Address</span></label>

                         <asp:TextBox cssclass="form-control" id="txtDirectorAddress" runat ="server"  ></asp:TextBox>

                     <%-- <textarea class="form-control" name="" id=""></textarea>--%>
                    </div> <!-- form-group / col ends -->
                       <div class="form-group col-lg-12 text-right">
                            <asp:Button runat ="server" ID="btnAddDirector" CssClass ="btn btn-outline-secondary" Text ="Add Director / Promotor" OnClick="btnAddDirector_Click" ValidationGroup="Director"/>
                                      
                    </div> 
                  </div> <!-- row ends -->
                      <!-- Table For Data Display -->
                  <div class="row">
                    <div class="col-12">
                      <div class="table-responsive">
                          <asp:HiddenField runat ="server" ID="hdnaddressid" />
                          <asp:HiddenField runat ="server" ID="hdnannexureid" />
                          <asp:GridView ID="grdDirectorDetails" runat="server" DataKeyNames="Id" 
                        AutoGenerateColumns="False" AllowPaging="True"
                        EnablePersistedSelection="True"  CssClass="table table-sm table-bordered annex-1-dir-table"
                        GridLines="None" OnRowCommand="grdDirectorDetails_RowCommand" >
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
                             <asp:TemplateField HeaderText="Annexureuid" Visible="false">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_AnnexureID" runat="server" Text='<%#Eval("annexure1_id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Director /<br>Promotor Name" ItemStyle-Width="80px">
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%# Eval("director_name") %>' ID="lblDirectorName">
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
                             <asp:TemplateField HeaderText="" Visible="false">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_IsDirectorSameAsCorrespondence" runat="server" Text='<%#Eval("IsDirectorSameAsCorrespondence") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ItemStyle-Width="90px" HeaderText="Edit">
                                <ItemTemplate>
                                    <asp:Button ID="btn_Edit" runat="server" CommandArgument='<%# Eval("Id") %>'  Text ="Edit"
                                        CommandName="process" CssClass="btn btn-outline-secondary btn-action2"/>
                                  

                                </ItemTemplate>


                            </asp:TemplateField>

                            <asp:TemplateField ItemStyle-Width="90px" HeaderText="Delete">
                                <ItemTemplate>

                                      <asp:Button ID="btn_Delete" runat="server" CommandArgument='<%# Eval("Id") %>'  Text ="Remove"
                                        CommandName="delete1" CssClass="btn btn-outline-danger btn-action2"/>
                                

                                </ItemTemplate>


                            </asp:TemplateField>
                        </Columns>
                        <RowStyle CssClass="cursor-pointer" />

                    </asp:GridView>






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
                      </div> <!-- table-responsive ends -->
                    </div> <!-- col ends -->
                  </div> <!-- row ends -->
                </div> <!-- form-container ends -->
                      
                <div class="clear"></div>


                 



                   <div class="clear"></div>

                <div class="position-relative form-container border-gamma mt-5">
                  <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                    <i class="far fa-id-badge"></i>
                  </div> <!-- form-title-icon ends -->
                  <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                    <span><asp:Literal runat ="server" Text ="<%$Resources:Resource1, NewITAuthorisedPersonDetails %>"></asp:Literal><%--authorised person details--%></span>
                  </div> <!-- form-header-text ends -->
                  <div class="clear"></div>
                  <div class="row">
                    <div class="mb-3 col-lg-12">
                      <div class="form-check">
                          <asp:CheckBox runat ="server" CssClass="form-check-input"  AutoPostBack ="true"  ID="chkauthorisedPerson" Text ="Is the authorized person and applicant the same?" OnCheckedChanged="chkauthorisedPerson_CheckedChanged"/>
                          &nbsp;
                       <%-- <input class="form-check-input" type="checkbox" value="" id="authorisedPersonCheck">
                        <label class="form-check-label" for="authorisedPersonCheck">
                          <strong>Is the authorized person and applicant the same?</strong>
                        </label>--%>
                      </div> <!-- form-check ends -->
                    </div> <!-- col ends -->
                    <div class="form-group col-lg-6">
                        <asp:Label runat="server" ID="lblAuthorisePersonName" Text ="<%$Resources:Resource1, NewITlblAuthorisedPersonName %>"></asp:Label>
                      <%--<label for="lblFirstName"><span>Authorised Person Name</span><span class="text-danger text-sm m-1">*</span></label>--%>
                        <asp:TextBox runat ="server" ID="txtAuthorisedPersonFirstName" CssClass="form-control"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="reqauthtxtAuthorisedPersonFirstName"  runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="txtAuthorisedPersonFirstName" ErrorMessage="Name Required!" ValidationGroup="Entity">
        </asp:RequiredFieldValidator>
                      <%--<input type="text" class="form-control" name="txtFirstName" id="lblFirstName1">--%>
                      <!-- <small id="" class="form-text text-danger">Error Message.</small> -->
                    </div> <!-- form-group / col ends -->
                    <div class="form-group col-lg-6">
                          <asp:Label runat="server" ID="Label33" Text ="<%$Resources:Resource1, NewITlblAuthorisedPersonDesignation %>"></asp:Label>
                     <%-- <label for=""><span>Designation</span><span class="text-danger text-sm m-1">*</span></label>--%>
                          <asp:TextBox runat ="server" ID="txtAuthorisedPersonDesignation" CssClass="form-control"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="reqAuthtxtAuthorisedPersonDesignation"  runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="txtAuthorisedPersonDesignation" ErrorMessage="Designation Required!" ValidationGroup="Entity">
        </asp:RequiredFieldValidator>
                     <%-- <input type="text" class="form-control" name="" id="">--%>
                    </div> <!-- form-group / col ends -->
                    <div class="form-group col-lg-6">
                        <asp:Label runat="server" ID="Label34" Text ="<%$Resources:Resource1, NewITlblAuthorisedPersonMobileNo %>"></asp:Label>
                     <%-- <label for="lblMobileNumber"><span>Mobile Number</span><span class="text-danger text-sm m-1">*</span></label>--%>
                        <asp:TextBox runat ="server" ID="txtAuthorisedPersonMobileNo" CssClass="form-control" maxlength="10"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqauthtxtAuthorisedPersonMobileNo"  runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="txtAuthorisedPersonMobileNo" ErrorMessage="MobileNo Required!" ValidationGroup="Entity">
        </asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regauthtxtAuthorisedPersonMobileNo" runat="server"
        ControlToValidate="txtAuthorisedPersonMobileNo" ErrorMessage="Please enter valid Mobile number!" forecolor="red"
        ValidationExpression="^([7-9]{1})([0-9]{9})$" ValidationGroup="Entity"></asp:RegularExpressionValidator>

                   <%--   <input type="text" class="form-control" name="txtMobileNumber" id="lblMobileNumber1" maxlength="10">--%>
                    </div> <!-- form-group / col ends -->
                    <div class="form-group col-lg-6">
                         <asp:Label runat="server" ID="Label35" Text ="<%$Resources:Resource1, NewITlblAuthorisedPersonEmail %>"></asp:Label>
                    <%--  <label for="lblEmailId"><span>Email Id</span><span class="text-danger text-sm m-1">*</span></label>--%>
                           <asp:TextBox runat ="server" ID="txtAuthorisedPersonEmail" CssClass="form-control" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqauthtxtAuthorisedPersonEmail"  runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="txtAuthorisedPersonEmail" ErrorMessage="Email Required!" ValidationGroup="Entity">
        </asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regauthtxtAuthorisedPersonEmail" runat="server" forecolor="red" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtAuthorisedPersonEmail" ErrorMessage="Invalid Email Format" ValidationGroup="Entity"></asp:RegularExpressionValidator>
                     <%-- <input type="text" class="form-control" name="txtEmailId" id="lblEmailId1">--%>
                    </div> <!-- form-group / col ends -->
                    <div class="mb-3 col-lg-12">
                      <div class="form-check">


                            <asp:CheckBox runat ="server" CssClass="form-check-input"  AutoPostBack="true"  ID="chkauthPersonAddress" Text ="Is the authorised person address same as the correspondence address?" OnCheckedChanged="chkauthPersonAddress_CheckedChanged"/>
                          &nbsp;
                       <%-- <input class="form-check-input" type="checkbox" value="" id="authPersonAddressCheck">
                        <label class="form-check-label" for="authPersonAddressCheck">
                          <strong>Is the authorised person address same as the correspondence address?</strong>
                        </label>--%>
                      </div> <!-- form-check ends -->
                    </div> <!-- col ends -->
                    <div class="form-group col-lg-12">
                          <asp:Label runat="server" ID="Label36" Text ="<%$Resources:Resource1, NewITlblAuthorisedPersonAddress %>"></asp:Label>
                      <%--<label for=""><span>Address</span></label>--%>
                         <asp:TextBox runat ="server" ID="txtAuthorisedPersonAddress" CssClass="form-control" TextMode ="MultiLine"></asp:TextBox>
                      <%--<textarea class="form-control" name="" id=""></textarea>--%>
                    </div> <!-- form-group / col ends -->
                  </div> <!-- row ends -->
                </div> <!-- form-container ends -->
                <div class="clear"></div>
                <div class="text-right">

                      <asp:button runat="server" id="btnEntityReset" text="Reset Form" cssclass="btn btn-outline-secondary" />
                      <asp:button runat="server" id="btnEntitySave" text="Save & Continue" cssclass="btn btn-primary" ValidationGroup="Entity" OnClick="btnEntitySave_Click" />


                 <%-- <input type="reset" class="btn btn-outline-secondary" value="Reset Form">
                  <input type="submit" class="btn btn-primary" value="Save & Continue">--%>
                </div>
     
       </div>

                  
              
               <div role="tabpanel" class="tab-pane fade show active" id="tabAssistanceDetails" aria-labelledby="tabItem3" runat ="server" >
                   <div class="position-relative form-container border-gamma">
                  <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                    <i class="fas fa-hands-helping"></i>
                  </div> <!-- form-title-icon ends -->
                  <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                    <span>assistance sought</span>
                  </div>  <!-- form-header-text ends -->
                  <div class="clear"></div>
                  <div class="row">
                    <div class="mb-3 col-lg-12">
                         <asp:Label runat="server" ID="Label378" Text ="Assistance will be sought for*"></asp:Label>
                      <%--  <asp:UpdatePanel runat ="server" ID="upAssistance">
                            <ContentTemplate>--%>
                          <asp:DropDownList runat ="server" id="ddlEntityAssistance" CssClass ="custom-select" AutoPostBack ="true" OnSelectedIndexChanged="ddlEntityAssistance_SelectedIndexChanged" ></asp:DropDownList>
                             <%--   </ContentTemplate>
                    </asp:UpdatePanel>--%>
                    </div> <!-- col ends -->
                  </div> <!-- row ends -->
                </div>
                     <div class="clear"></div>
                <div class="form-group col-12">
                  <div class="form-header-text bg-delta border-delta weight-semi-bold text-md text-beta text-capitalize">
                    <span>Information for unit type</span>
                  </div> <!-- form-section ends -->
                </div> <!-- col ends -->
                <div class="clear"></div>
                <%--    <asp:UpdatePanel runat ="server" ID="upAssistanceDiv">
                            <ContentTemplate>--%>
                   <div>
                   <div runat ="server" id="divItItesUnit" >
                      <div class="position-relative form-container border-gamma mt-5">
                  <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                    <i class="fas fa-building"></i>
                  </div> <!-- form-title-icon ends -->
                  <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                    <span>IT/ITeS Unit (New or Expansion / Diversification)</span>
                  </div>  <!-- form-header-text ends -->
                  <div class="clear"></div>
                  <div class="row">
                    <div class="form-group col-lg-12">
                      <label for="it-ites-unit-address"><span>Location</span><span class="text-danger text-sm m-1">*</span></label>
                        <asp:TextBox runat ="server" TextMode ="MultiLine" ID="txtunitaddress" class="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqLocation"  runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="txtunitaddress" ErrorMessage="Location Required!" ValidationGroup="Assistance" Enable="false">
        </asp:RequiredFieldValidator>
                      <%--<textarea class="form-control" name="it-ites-unit-address" id="it-ites-unit-address"></textarea>--%>
                      <small id="" class="form-text text-muted">Please enter full address of location with postal code.</small>
                    </div> <!-- form-group / col ends -->                   
                    <div class="form-group col-lg-6">
                      <label for=""><span>Tentative area</span><span class="text-danger text-sm m-1">*</span></label>
                      <div class="input-group">
                          <asp:TextBox runat ="server" ID="txtUnitArea"  class="form-control"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="reqUnitArea"  runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="txtUnitArea" ErrorMessage="Tentative area Required!" ValidationGroup="Assistance" Enable="false">
        </asp:RequiredFieldValidator>
                       <%-- <input type="text" class="form-control">--%>

                          <asp:DropDownList runat ="server" id="ddlAreaType" CssClass ="custom-select"></asp:DropDownList>

                        <%--<select class="custom-select" name="" id="">
                          <option value="Square Feet">Square Feet</option>
                          <option value="Square Meter">Square Meter</option>
                          <option value="Acre">Acre</option>
                        </select>--%>
                      </div> <!-- input-group ends -->
                      <small id="" class="form-text text-muted text-capitalize">(Land in acres / Office Space in sqft)</small>
                    </div> <!-- form-group / col ends -->
                    <div class="form-group col-lg-6">
                      <label for=""><span>Tentative Investment</span><span class="text-danger text-sm m-1">*</span></label>
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <span class="input-group-text"><i class="fas fa-rupee-sign text-sm"></i></span>
                        </div> <!-- input-group-prepend ends -->
                       <asp:TextBox runat ="server" ID="txtInvestment"  class="form-control"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="reqInvestment" runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="txtInvestment" ErrorMessage="Tentative Investment Required!" ValidationGroup="Assistance" Enable="false">
        </asp:RequiredFieldValidator>
                      </div> <!-- input-group ends -->
                      <small id="" class="form-text text-muted">Please enter full digit of amount.</small>
                    </div> <!-- form-group / col ends -->
                    <div class="form-group col-lg-6">
                      <label for=""><span>Tentative Employment</span><span class="text-danger text-sm m-1">*</span></label>
                       <asp:TextBox runat ="server" ID="txtEmployment"  class="form-control"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="reqEmployment"  runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="txtEmployment" ErrorMessage="Tentative Employment Required!" ValidationGroup="Assistance" Enable="false">
        </asp:RequiredFieldValidator>
                      <small id="" class="form-text text-muted">Please enter how many employment will be created.</small>
                    </div> <!-- form-group / col ends -->
                    <div class="form-group col-lg-6">
                      <label for=""><span>Unit Type</span><span class="text-danger text-sm m-1">*</span></label>
                      <div class="clear"></div>
                      <div class="form-check form-check-inline">

                          <asp:RadioButtonList runat ="server" class="form-check-label" ID="rdUnitType" RepeatDirection="Horizontal"></asp:RadioButtonList>

                       <%-- <input class="form-check-input" type="radio" name="unitType" id="new-unit" value="new">
                        <label class="form-check-label" for="new-unit">New</label>--%>
                      </div>
                      <%--<div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="unitType" id="expansion-unit" value="expansion">
                        <label class="form-check-label" for="expansion-unit">Expansion</label>
                      </div>
                      <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="unitType" id="diversification-unit" value="diversification">
                        <label class="form-check-label" for="diversification-unit">Diversification</label>
                      </div>--%>
                    </div> <!-- form-group / col ends -->
                  </div> <!-- row ends -->
                </div> <!-- form-container ends -->
                <div class="clear"></div>
                       </div>

                   <div runat ="server" id="divItItesPark" visible ="false" >

                         <div class="position-relative form-container border-gamma mt-5">
                  <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                    <i class="fas fa-building"></i>
                  </div> <!-- form-title-icon ends -->
                  <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                    <span>IT/ITeS Park</span>
                  </div>  <!-- form-header-text ends -->
                  <div class="clear"></div>
                  <div class="row">
                    <div class="form-group col-lg-12">
                      <label for="it-ites-park-address"><span>Location</span><span class="text-danger text-sm m-1">*</span></label>
                        <asp:TextBox runat ="server" TextMode ="MultiLine" ID="txtParkLocation" class="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqParkLocation"  runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="txtParkLocation" ErrorMessage="Location Required!" ValidationGroup="Assistance" Enable="false">
        </asp:RequiredFieldValidator>
                      <small id="" class="form-text text-muted">Please enter full address of location with postal code.</small>
                    </div> <!-- form-group / col ends --> 
                    <div class="form-group col-lg-6">
                      <label for=""><span>Park Type</span><span class="text-danger text-sm m-1">*</span></label>
                      <div class="clear"></div>
                      <div class="form-check form-check-inline">
                           <asp:RadioButtonList runat ="server" class="form-check-label" ID="rdlParkType" RepeatDirection="Horizontal"></asp:RadioButtonList>
                      </div>
                     
                    </div> <!-- form-group / col ends -->
                    <div class="form-group col-lg-6">
                      <label for=""><span>Tentative area of the land where IT/ITeS Park will be set up</span><span class="text-danger text-sm m-1">*</span></label>
                      <div class="input-group">
                         <asp:TextBox runat ="server"  ID="txtTentativeParkArea" class="form-control"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="reqTentativeParkArea"  runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="txtTentativeParkArea" ErrorMessage="Tentative area of land Required!" ValidationGroup="Assistance" Enable="false"></asp:RequiredFieldValidator>
                         <asp:DropDownList runat ="server" id="ddlTentativeParkArea" CssClass ="custom-select"></asp:DropDownList>
                      </div> <!-- input-group ends -->
                    </div> <!-- form-group / col ends -->
                    <div class="form-group col-lg-6">
                      <label for=""><span>Total built up area</span><span class="text-danger text-sm m-1">*</span></label>
                      <div class="input-group">
                         <asp:TextBox runat ="server"  ID="txtBuiltupParkArea" class="form-control"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="reqBuiltupParkArea"  runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="txtBuiltupParkArea" ErrorMessage="Total built up area Required!" ValidationGroup="Assistance" Enable="false"></asp:RequiredFieldValidator>
                        <asp:DropDownList runat ="server" id="ddlBuiltupParkArea" CssClass ="custom-select"></asp:DropDownList>
                      </div> <!-- input-group ends -->
                    </div> <!-- form-group / col ends -->
                    <div class="form-group col-lg-6">
                      <label for=""><span>Tentative Project Cost, excluding cost of land</span><span class="text-danger text-sm m-1">*</span></label>
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <span class="input-group-text"><i class="fas fa-rupee-sign text-sm"></i></span>
                        </div> <!-- input-group-prepend ends -->
                       <asp:TextBox runat ="server"  ID="txtParkProjectCost" class="form-control"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="reqTentativeProjectCost"  runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="txtParkProjectCost" ErrorMessage="Tentative Project Cost Required!" ValidationGroup="Assistance" Enable="false"></asp:RequiredFieldValidator>
                      </div> <!-- input-group ends -->
                      <small id="" class="form-text text-muted">Please enter full digit of amount.</small>
                    </div> <!-- form-group / col ends -->
                    <div class="form-group col-lg-12">
                      <label for=""><span>brief description of the activities undertaken</span><span class="text-danger text-sm m-1">*</span></label>
                         <asp:TextBox runat ="server" TextMode ="MultiLine" ID="txtParkActivity" class="form-control"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="reqDescActivities"  runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="txtParkActivity" ErrorMessage="brief description of the activities Required!" ValidationGroup="Assistance" Enable="false"></asp:RequiredFieldValidator>
                      <small id="" class="form-text text-muted">Activities undertaken so far by the applicant for setting up the IT/ITeS park & market analysis carried out.</small>
                    </div> <!-- form-group / col ends -->
                  </div> <!-- row ends -->
                </div> <!-- form-container ends -->
                <div class="clear"></div>

                   </div>
                   <div runat="server" id="divRNDInstitute" visible ="false">
                         <div class="position-relative form-container border-gamma mt-5">
                  <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                    <i class="fas fa-building"></i>
                  </div> <!-- form-title-icon ends -->
                  <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                    <span>Research & Development Institution</span>
                  </div>  <!-- form-header-text ends -->
                  <div class="clear"></div>
                  <div class="row">
                    <div class="form-group col-lg-12">
                      <label for="r&d-institution-address"><span>Location</span><span class="text-danger text-sm m-1">*</span></label>
                     <asp:TextBox runat ="server" TextMode ="MultiLine" ID="txtRNDLocation" class="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqRNDLocation"  runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="txtRNDLocation" ErrorMessage="Location Required!" ValidationGroup="Assistance" Enable="false">
        </asp:RequiredFieldValidator>
                      <small id="" class="form-text text-muted">Please enter full address of location with postal code.</small>
                    </div> <!-- form-group / col ends --> 
                    <div class="form-group col-lg-6">
                      <label for=""><span>Tentative area of the land where R&D institute will be set up</span><span class="text-danger text-sm m-1">*</span></label>
                      <div class="input-group">
                        <asp:TextBox runat ="server"  ID="txtRNDTentativeArea" class="form-control"></asp:TextBox>
                         <asp:DropDownList runat ="server" id="ddlRNDTentativeAreaType" CssClass ="custom-select"></asp:DropDownList>
                      </div> <!-- input-group ends -->
                    </div> <!-- form-group / col ends -->
                    <div class="form-group col-lg-6">
                      <label for=""><span>tentative project cost</span><span class="text-danger text-sm m-1">*</span></label>
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <span class="input-group-text"><i class="fas fa-rupee-sign text-sm"></i></span>
                        </div> <!-- input-group-prepend ends -->
                        <asp:TextBox runat ="server" ID="txtRNDTentativeCost"  class="form-control"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="reqRNDTentativeCost" runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="txtRNDTentativeCost" ErrorMessage="Tentative Project Cost Required!" ValidationGroup="Assistance" Enable="false">
        </asp:RequiredFieldValidator>
                      </div> <!-- input-group ends -->
                      <small id="" class="form-text text-muted">Please enter full digit of amount.</small>
                    </div> <!-- form-group / col ends -->
                    <div class="form-group col-lg-12">
                      <label for=""><span>brief description of the activities undertaken</span><span class="text-danger text-sm m-1">*</span></label>
                      <asp:TextBox runat ="server" TextMode ="MultiLine" ID="txtRNDActivity" class="form-control"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="reqRNDActivity"  runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="txtRNDActivity" ErrorMessage="brief description of the activities Required!" ValidationGroup="Assistance" Enable="false"></asp:RequiredFieldValidator>
                      <small id="" class="form-text text-muted">The activities undertaken so far by the applicant for setting up R&D institute.</small>
                    </div> <!-- form-group / col ends -->
                  </div> <!-- row ends -->
                </div> <!-- form-container ends -->
                <div class="clear"></div>
                   </div>

                   <div runat ="server" id="divFishingSchool" visible ="false">
                         <div class="position-relative form-container border-gamma mt-5">
                  <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                    <i class="fas fa-building"></i>
                  </div> <!-- form-title-icon ends -->
                  <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                    <span>Finishing School</span>
                  </div>  <!-- form-header-text ends -->
                  <div class="clear"></div>
                  <div class="row">
                    <div class="form-group col-lg-12">
                      <label for="finish-school-address"><span>Location</span><span class="text-danger text-sm m-1">*</span></label>
                       <asp:TextBox runat ="server" TextMode ="MultiLine" ID="txtFishingSchoolLocation" class="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqFishingschoolLocation"  runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="txtFishingSchoolLocation" ErrorMessage="Location Required!" ValidationGroup="Assistance" Enable="false">
        </asp:RequiredFieldValidator>
                      <small id="" class="form-text text-muted">Please enter full address of location with postal code.</small>
                    </div> <!-- form-group / col ends -->                   
                    <div class="form-group col-lg-6">
                      <label for=""><span>tentative area of the land where finishing school will be set up</span><span class="text-danger text-sm m-1">*</span></label>
                      <div class="input-group">
                          <asp:TextBox runat ="server"  ID="txtFishingschoolTentativeArea" class="form-control"></asp:TextBox>
                         <asp:DropDownList runat ="server" id="ddlFishingAreaType" CssClass ="custom-select"></asp:DropDownList>
                      </div> <!-- input-group ends -->
                    </div> <!-- form-group / col ends -->
                    <div class="form-group col-lg-6">
                      <label for=""><span>tentative project cost</span><span class="text-danger text-sm m-1">*</span></label>
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <span class="input-group-text"><i class="fas fa-rupee-sign text-sm"></i></span>
                        </div> <!-- input-group-prepend ends -->
                         <asp:TextBox runat ="server" ID="txtFishingProjectCost"  class="form-control"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="reqFishingProjectCost" runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="txtFishingProjectCost" ErrorMessage="Tentative Project Cost Required!" ValidationGroup="Assistance" Enable="false">
        </asp:RequiredFieldValidator>
                      </div> <!-- input-group ends -->
                      <small id="" class="form-text text-muted">Please enter full digit of amount.</small>
                    </div> <!-- form-group / col ends -->
                    <div class="form-group col-lg-12">
                      <label for=""><span>brief description of the activities undertaken</span><span class="text-danger text-sm m-1">*</span></label>
                    <asp:TextBox runat ="server" TextMode ="MultiLine" ID="txtFishingActivity" class="form-control"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="reqFishingActivity"  runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="txtFishingActivity" ErrorMessage="brief description of the activities Required!" ValidationGroup="Assistance" Enable="false"></asp:RequiredFieldValidator>
                      <small id="" class="form-text text-muted">The activities undertaken so far by the applicant for setting up the finishing school & market analysis carried out.</small>
                    </div> <!-- form-group / col ends -->
                  </div> <!-- row ends -->
                </div> <!-- form-container ends -->
                <div class="clear"></div>

                   </div>
                   <div id="divItIndustryAssociation" runat ="server" visible ="false" >
                            <div class="position-relative form-container border-gamma mt-5">
                  <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                    <i class="fas fa-building"></i>
                  </div> <!-- form-title-icon ends -->
                  <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                    <span>IT/ITeS Industry Association</span>
                  </div>  <!-- form-header-text ends -->
                  <div class="clear"></div>
                  <div class="row">             
                    <div class="form-group col-lg-6">
                      <label for=""><span>exhibition / trade fair name</span><span class="text-danger text-sm m-1">*</span></label>
                       <asp:TextBox runat ="server" ID="txtExhibitionname"  class="form-control"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="reqexhibitionname" runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="txtExhibitionname" ErrorMessage="exhibition /trade fair Required!" ValidationGroup="Assistance" Enable="false">
        </asp:RequiredFieldValidator>
                    </div> <!-- form-group / col ends -->
                    <div class="form-group col-lg-6">
                      <label for=""><span>date for the exhibition / trade fair</span><span class="text-danger text-sm m-1">*</span></label>
                       <%--    <input type="text" class="form-control" name="" id="exhibitionDatePicker1">--%>
                          <asp:TextBox runat ="server" ID="txtdateforExhibition"  class="form-control" ClientIDMode="static"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="reqdateforExhibition" runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="txtdateforExhibition" ErrorMessage="date for the exhibition / trade fair Required!" ValidationGroup="Assistance" Enable="false">
        </asp:RequiredFieldValidator>

                     
                    </div> <!-- form-group / col ends -->
                    <div class="form-group col-lg-6">
                      <label for=""><span>expenditure planned by association</span><span class="text-danger text-sm m-1">*</span></label>
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <span class="input-group-text"><i class="fas fa-rupee-sign text-sm"></i></span>
                        </div> <!-- input-group-prepend ends -->
                        <asp:TextBox runat ="server" ID="txtexpenditurePlanned"  class="form-control"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="reqexpenditurePlanned" runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="txtexpenditurePlanned" ErrorMessage="expenditure planned by association Required!" ValidationGroup="Assistance" Enable="false">
        </asp:RequiredFieldValidator>
                      </div> <!-- input-group ends -->
                      <small id="" class="form-text text-muted">Please enter full digit of amount.</small>
                    </div> <!-- form-group / col ends -->
                    <div class="form-group col-lg-6">
                      <label for=""><span>did you avail this assistance under the current scheme previously?</span><span class="text-danger text-sm m-1">*</span></label>
                      <div class="clear"></div>
                      <div class="form-check form-check-inline">

                          <asp:RadioButtonList ID="rdlAvailAssistance" runat ="server" class="form-check-label" RepeatDirection="Horizontal">
                              <asp:ListItem Text="Yes" Value =1></asp:ListItem>
                              <asp:ListItem Text="No" Value =0></asp:ListItem>
                          </asp:RadioButtonList>
                       <%-- <input class="form-check-input" type="radio" name="availAssistance" id="availYes" value="yes">
                        <label class="form-check-label" for="availYes">Yes</label>--%>
                      </div>
                     <%-- <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="availAssistance" id="availNo" value="no">
                        <label class="form-check-label" for="availNo">No</label>
                      </div>--%>
                    </div> <!-- form-group / col ends -->
                    <div class="form-group col-lg-6">
                      <label for=""><span>date of the exhibition / trade fair</span><span class="text-danger text-sm m-1">*</span></label>
                          <%-- <input type="text" class="form-control" name="" id="exhibitionDatePicker2">--%>
                       <asp:TextBox runat ="server" ID="txtavailSchemeDate"  class="form-control" ClientIDMode ="Static" ></asp:TextBox>
                          <asp:RequiredFieldValidator ID="reqAvailSchemeDate" runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="txtavailSchemeDate" ErrorMessage="date of the exhibition / trade fair Required!" ValidationGroup="Assistance" Enable="false">
        </asp:RequiredFieldValidator>
                      <small id="" class="form-text text-muted">Pleae enter date of the exhibition / trade fair for which you have take assistance.</small>
                    </div> <!-- form-group / col ends -->
                    <div class="form-group col-lg-6">
                      <label for=""><span>amount</span><span class="text-danger text-sm m-1">*</span></label>
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <span class="input-group-text"><i class="fas fa-rupee-sign text-sm"></i></span>
                        </div> <!-- input-group-prepend ends -->
                      <asp:TextBox runat ="server" ID="txtIndustryAssociationAmount"  class="form-control"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="reqIndustryAssociationAmount" runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="txtIndustryAssociationAmount" ErrorMessage="Amount Required!" ValidationGroup="Assistance" Enable="false">
        </asp:RequiredFieldValidator>
                      </div> <!-- input-group ends -->
                      <small id="" class="form-text text-muted">Please enter full digit of amount.</small>
                    </div> <!-- form-group / col ends -->
                  </div> <!-- row ends -->
                </div> <!-- form-container ends -->
                <div class="clear"></div>
                   </div>
                   <div id="divContractResearchwork" runat ="server" visible ="false">
                         <div class="position-relative form-container border-gamma mt-5">
                  <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                    <i class="fas fa-building"></i>
                  </div> <!-- form-title-icon ends -->
                  <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                    <span>Contract / Sponsored Research Work</span>
                  </div>  <!-- form-header-text ends -->
                  <div class="clear"></div>
                  <div class="row">             
                    <div class="form-group col-lg-6">
                      <label for=""><span>research topic</span><span class="text-danger text-sm m-1">*</span></label>
                      <asp:TextBox runat ="server" ID="txtResearchTopic"  class="form-control" ></asp:TextBox>
                          <asp:RequiredFieldValidator ID="reqResearchTopic" runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="txtResearchTopic" ErrorMessage="Research Topic Required!" ValidationGroup="Assistance" Enable="false">
        </asp:RequiredFieldValidator>
                    </div> <!-- form-group / col ends -->
                    <div class="form-group col-lg-6">
                      <label for=""><span>research assigning organization</span><span class="text-danger text-sm m-1">*</span></label>
                     <asp:TextBox runat ="server" ID="txtResearchAssigningOrg"  class="form-control"  ></asp:TextBox>
                          <asp:RequiredFieldValidator ID="reqResearchAssigningOrg" runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="txtResearchAssigningOrg" ErrorMessage="research assigning organization Required!" ValidationGroup="Assistance" Enable="false">
        </asp:RequiredFieldValidator>
                    </div> <!-- form-group / col ends -->
                    <div class="form-group col-lg-6">
                      <label for=""><span>total duration of research</span><span class="text-danger text-sm m-1">*</span></label>
                      <asp:TextBox runat ="server" ID="txtTotalduration"  class="form-control"  ></asp:TextBox>
                          <asp:RequiredFieldValidator ID="reqTotalduration" runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="txtTotalduration" ErrorMessage="total duration of research Required!" ValidationGroup="Assistance" Enable="false">
        </asp:RequiredFieldValidator>
                    </div> <!-- form-group / col ends -->
                    <div class="form-group col-lg-6">
                      <label for=""><span>total cost for undertaking research</span><span class="text-danger text-sm m-1">*</span></label>
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <span class="input-group-text"><i class="fas fa-rupee-sign text-sm"></i></span>
                        </div> <!-- input-group-prepend ends -->
                        <asp:TextBox runat ="server" ID="txtTotalCostforResearch"  class="form-control"  ></asp:TextBox>
                          <asp:RequiredFieldValidator ID="reqTotalCostforResearch" runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="txtTotalCostforResearch" ErrorMessage="total cost for undertaking research Required!" ValidationGroup="Assistance" Enable="false">
        </asp:RequiredFieldValidator>
                      </div> <!-- input-group ends -->
                      <small id="" class="form-text text-muted">Please enter full digit of amount.</small>
                    </div> <!-- form-group / col ends -->
                    <div class="form-group col-lg-6">
                      <label for=""><span>Name of the organization if you received assistance for a similar project</span><span class="text-danger text-sm m-1">*</span></label>
                     <asp:TextBox runat ="server" ID="txtOrgNameforAssistance"  class="form-control"  ></asp:TextBox>
                          <asp:RequiredFieldValidator ID="reqOrgNameforAssistance" runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="txtOrgNameforAssistance" ErrorMessage="Name of the organization if you received assistance for a similar project Required!" ValidationGroup="Assistance" Enable="false">
        </asp:RequiredFieldValidator>
                    </div> <!-- form-group / col ends -->
                  </div> <!-- row ends -->
                </div> <!-- form-container ends -->
                <div class="clear"></div>
                   </div>
                       </div>
                                  <%--</ContentTemplate>--%>
                      <%--  <Triggers>
                            <asp:AsyncPostBackTrigger ControlID ="ddlEntityAssistance" EventName="SelectedIndexChanged" />
                        </Triggers>
                    </asp:UpdatePanel>--%>

                    <div class="text-right">

                      <asp:button runat="server" id="btnAssistanceReset" text="Reset Form" cssclass="btn btn-outline-secondary" />
                      <asp:button runat="server" id="btnAssistanceSave" text="Save & Continue" cssclass="btn btn-primary" ValidationGroup="Assistance" OnClick="btnAssistanceSave_Click"  />


                 <%-- <input type="reset" class="btn btn-outline-secondary" value="Reset Form">
                  <input type="submit" class="btn btn-primary" value="Save & Continue">--%>
                </div>
                   </div>

 <div role="tabpanel" class="tab-pane fade show active" id="tabIncentiveDetails" aria-labelledby="tabItem4" runat ="server" >
          <div class="position-relative form-container border-gamma">
                  <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                    <i class="fas fa-rupee-sign"></i>
                  </div> <!-- form-title-icon ends -->
                  <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                    <span>Approximate Amount of Assistance Sought</span>
                  </div>  <!-- form-header-text ends -->
                  <div class="clear"></div>
                  <div class="row">
                    <div class="mb-3 col-lg-12">
                      <div class="table-responsive">


                          <asp:GridView ID="grdIncentive" runat="server" DataKeyNames="Id" 
                        AutoGenerateColumns="False" AllowPaging="false"
                        EnablePersistedSelection="True"  CssClass="table table-bordered"
                        GridLines="None"  >
                        <Columns>

                            <asp:TemplateField HeaderText="ID" Visible="false">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_ID" runat="server" Text='<%#Eval("Id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            
                            <asp:TemplateField HeaderText="" ItemStyle-Width="10px">
                                <ItemTemplate>
                                    <asp:CheckBox ID="chkRow" runat="server" Checked='<%#Convert.ToBoolean(Eval("Ischecked")) %>' />
                                </ItemTemplate>
                            </asp:TemplateField>


                             <asp:TemplateField HeaderText="Assistance Type" ItemStyle-Width="70px">
                                <ItemTemplate>
                                     <asp:Label ID="lblAssistanceType" runat="server" Text='<%#Eval("incentive_name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>



                            <asp:TemplateField HeaderText="Assistance Detail" ItemStyle-Width="30px">
                                <ItemTemplate>
                                    <asp:Label ID="lblAssistanceDetail" runat="server" Text='<%#Eval("Assistance_Detail") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>


                            <asp:TemplateField HeaderText="Approximate Amount Of Assistance Sought" ItemStyle-Width="50px">
                                <ItemTemplate>
                                    <asp:TextBox ID="txtAssistanceAmount" runat="server" Text='<%# Bind("assistance_amount") %>' class="form-control"> </asp:TextBox>  
                                </ItemTemplate>
                            </asp:TemplateField>
                         
                        </Columns>
                        <RowStyle CssClass="cursor-pointer" />

                    </asp:GridView>

                          <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Please select at least one Assistance Type."
    ClientValidationFunction="Validate" ForeColor="Red" ValidationGroup="Incentive"></asp:CustomValidator>

                        <%--<table class="table table-bordered">
                          <tr>
                            <th>&nbsp;</th>
                            <th>Assistance<br>Type</th>
                            <th>Assistance<br>Detail</th>
                            <th>Approximate Amount Of<br>Assistance Sought</th>
                          </tr>
                          <!-- ---*---*---*--- -->
                          <tr>
                            <td class="align-middle">
                              <input type="checkbox" value="" id="capitalSubsidy">
                            </td>
                            <td class="align-middle">
                              <label for="capitalSubsidy">
                                Capital Subsidy
                              </label>
                            </td>
                            <td class="align-middle"><span>10%</span></td>
                            <td class="align-middle">
                              <input type="text" class="form-control" name="capitalSubsidy" id="">
                            </td>
                          </tr>
                          <!-- ---*---*---*--- -->
                          <tr>
                            <td class="align-middle">
                              <input type="checkbox" value="" id="reimburseOfStampDuty">
                            </td>
                            <td class="align-middle">
                              <label for="reimburseOfStampDuty">
                                Reimbursement Of Stamp<br>Duty / Registration Fee
                              </label>
                            </td>
                            <td class="align-middle"><span>20%</span></td>
                            <td class="align-middle">
                              <input type="text" class="form-control" name="reimburseOfStampDuty" id="">
                            </td>
                          </tr>
                          <!-- ---*---*---*--- -->
                          <tr>
                            <td class="align-middle">
                              <input type="checkbox" value="" id="leaseRentSubsidy">
                            </td>
                            <td class="align-middle">
                              <label for="leaseRentSubsidy">
                                Lease Rental Subsidy
                              </label>
                            </td>
                            <td class="align-middle"><span>30%</span></td>
                            <td class="align-middle">
                              <input type="text" class="form-control" name="leaseRentSubsidy" id="">
                            </td>
                          </tr>
                          <!-- ---*---*---*--- -->
                          <tr>
                            <td class="align-middle">
                              <input type="checkbox" value="" id="interestSubsidy">
                            </td>
                            <td class="align-middle">
                              <label for="interestSubsidy">
                                Interest Subsidy
                              </label>
                            </td>
                            <td class="align-middle"><span>40%</span></td>
                            <td class="align-middle">
                              <input type="text" class="form-control" name="interestSubsidy" id="">
                            </td>
                          </tr>
                          <!-- ---*---*---*--- -->
                          <tr>
                            <td class="align-middle">
                              <input type="checkbox" value="" id="powerTariffDuty">
                            </td>
                            <td class="align-middle">
                              <label for="powerTariffDuty">
                                Power Tariff & Electricity Duty
                              </label>
                            </td>
                            <td class="align-middle"><span>50%</span></td>
                            <td class="align-middle">
                              <input type="text" class="form-control" name="powerTariffDuty" id="">
                            </td>
                          </tr>
                          <!-- ---*---*---*--- -->
                          <tr>
                            <td class="align-middle">
                              <input type="checkbox" value="" id="VatCstGstIncentive">
                            </td>
                            <td class="align-middle">
                              <label for="VatCstGstIncentive">
                                VAT/CST/GST Incentive
                              </label>
                            </td>
                            <td class="align-middle"><span>60%</span></td>
                            <td class="align-middle">
                              <input type="text" class="form-control" name="VatCstGstIncentive" id="">
                            </td>
                          </tr>
                          <!-- ---*---*---*--- -->
                          <tr>
                            <td class="align-middle">
                              <input type="checkbox" value="" id="employmentGrantOnEpf">
                            </td>
                            <td class="align-middle">
                              <label for="employmentGrantOnEpf">
                                Employment Generation Grant On EPF
                              </label>
                            </td>
                            <td class="align-middle"><span>70%</span></td>
                            <td class="align-middle">
                              <input type="text" class="form-control" name="employmentGrantOnEpf" id="">
                            </td>
                          </tr>
                          <!-- ---*---*---*--- -->
                          <tr>
                            <td class="align-middle">
                              <input type="checkbox" value="" id="qualityCertification">
                            </td>
                            <td class="align-middle">
                              <label for="qualityCertification">
                                Quality Certification
                              </label>
                            </td>
                            <td class="align-middle"><span>0%</span></td>
                            <td class="align-middle">
                              <input type="text" class="form-control" name="qualityCertification" id="">
                            </td>
                          </tr>
                          <!-- ---*---*---*--- -->
                        </table>--%>
                      </div> <!-- table-responsive ends --> 
                    </div> <!-- col ends -->
                  </div> <!-- row ends -->
                </div> <!-- form-container ends -->
                <div class="clear"></div>
                <div class="text-right">

                      <asp:button runat="server" id="btnIncentiveReset" text="Reset Form" cssclass="btn btn-outline-secondary" />
                      <asp:button runat="server" id="btnIncentiveSave" text="Save & Continue" cssclass="btn btn-primary" ValidationGroup="Incentive" OnClick="btnIncentiveSave_Click"  />


                 <%-- <input type="reset" class="btn btn-outline-secondary" value="Reset Form">
                  <input type="submit" class="btn btn-primary" value="Save & Continue">--%>
                </div> <!-- text-right ends -->
     </div>


                    


<div role="tabpanel" class="tab-pane fade show active" id="tabacknowledge" aria-labelledby="tabItem5" runat ="server" >
      <div class="position-relative table-container border-gamma">
                  <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                    <i class="fas fa-user-tie"></i>
                  </div> <!-- form-title-icon ends -->
                  <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                    <span>applicant's details</span>
                  </div>  <!-- form-header-text ends -->
                  <div class="clear"></div>
                  <div class="table-responsive">
                    <table class="table table-bordered weight-medium">
                      <tr>
                        <td class="text-capitalize table-data-label">first name</td>
                        <td class="weight-semi-bold"> <asp:Label runat ="server" ID="lblackFirstName" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">last name</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackLastName" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">mobile number</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackMobile" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">email id</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackEmail" Text =""></asp:Label></td>
                      </tr>
                    </table>
                  </div> <!-- table-responsive ends -->
                </div> <!-- form-container ends -->
                <div class="clear"></div>
                <div class="position-relative table-container border-gamma mt-5">
                  <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                    <i class="far fa-envelope"></i>
                  </div> <!-- form-title-icon ends -->
                  <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                    <span>correspondence address</span>
                  </div>  <!-- form-header-text ends -->
                  <div class="clear"></div>
                  <div class="table-responsive">
                    <table class="table table-bordered weight-medium">
                      <tr>
                        <td class="text-capitalize table-data-label">postal code</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackCorPostalCode" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">address line 1</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackCorAddressline1" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">address line 2</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackCorAddressline2" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">city / village</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackCorCity" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">state</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackCorState" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">telephone number</td>
                        <td class="weight-semi-bold"><span class="text-danger text-uppercase"><asp:Label runat ="server" ID="lblackCorTelephoneNumber" Text =""></asp:Label></span></td>
                      </tr>
                    </table>
                  </div> <!-- table-responsive ends -->
                </div> <!-- form-container ends -->
                <div class="clear"></div>
                <div class="position-relative table-container border-gamma mt-5">
                  <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                    <i class="far fa-id-card"></i>
                  </div> <!-- form-title-icon ends -->
                  <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                    <span>identity proof</span>
                  </div>  <!-- form-header-text ends -->
                  <div class="clear"></div>
                  <div class="table-responsive">
                    <table class="table table-bordered weight-medium">   
                      <tr>
                        <td class="text-capitalize table-data-label">identity proof</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackIDProof" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">ID number</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackIDProofNumber" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">scanned copy of identity proof uploaded?</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackScanCopyIDProofUploaded" Text =""></asp:Label></td>
                      </tr>
                    </table>
                  </div> <!-- table-responsive ends -->
                </div> <!-- form-container ends -->
                <div class="clear"></div>
                <div class="position-relative table-container border-gamma mt-5">
                  <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                    <i class="far fa-building"></i>
                  </div> <!-- form-title-icon ends -->
                  <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                    <span>entity details</span>
                  </div>  <!-- form-header-text ends -->
                  <div class="clear"></div>
                  <div class="table-responsive">
                    <table class="table table-bordered weight-medium">
                      <tr>
                        <td class="text-capitalize table-data-label text-md">Entity PAN</td>
                        <td class="weight-semi-bold text-uppercase text-md"><asp:Label runat ="server" ID="lblackEntityPan" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">scanned copy of the PAN card uploaded?</td>
                        <td class="weight-semi-bold text-uppercase"><asp:Label runat ="server" ID="lblackIsPanAttached" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label text-md">Entity Name</td>
                        <td class="weight-semi-bold text-md"><asp:Label runat ="server" ID="lblackEntityName" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">Type of the entity that will seek assistance under the scheme</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackEntityType" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">certified copy of the partnership deed uploaded?</td>
                        <td class="weight-semi-bold text-uppercase"><asp:Label runat ="server" ID="lblackCertificateOfPartnership" ></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">certified copy of the memorandum and articles of association or equivalent registration documents uploaded?</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackMemorandumArticle" Text =""></asp:Label></span></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">Entity Mobile Number</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackEntityMob" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">Entity Telephone Number</td>
                        <td class="weight-semi-bold"><span class="text-danger text-uppercase"><asp:Label runat ="server" ID="lblackEntityTelephone" Text =""></asp:Label></span></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">Entity FAX Number</td>
                        <td class="weight-semi-bold"><span class="text-danger text-uppercase"><asp:Label runat ="server" ID="lblackEntityFAX" Text =""></asp:Label></span></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">Entity Email Id</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblEntityEmail" Text =""></asp:Label></td>
                      </tr>
                    </table>
                  </div> <!-- table-responsive ends -->
                </div> <!-- form-container ends -->
                <div class="clear"></div>
                <div class="position-relative table-container border-gamma mt-5">
                  <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                    <i class="fas fa-building"></i>
                  </div> <!-- form-title-icon ends -->
                  <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                    <span>office address</span>
                  </div>  <!-- form-header-text ends -->
                  <div class="clear"></div>
                  <div class="table-responsive">
                    <table class="table table-bordered weight-medium">
                      <tr>
                        <td class="text-capitalize table-data-label">Is the office address same as the correspondence address?</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackIsOfficeaddresssameasCorres" Text =""></asp:Label></span></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">Postal Code</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackOfficePostalCode" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">Address Line 1</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackOfficeaddress1" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">Address Line 2</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackOfficeaddress2" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">City / Village</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackOfficeCity" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">State</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackOfficeState" Text =""></asp:Label></td>
                      </tr>
                    </table>
                  </div> <!-- table-responsive ends -->
                </div> <!-- form-container ends -->
                <div class="clear"></div>
                <div class="position-relative table-container border-gamma mt-5">
                  <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                    <i class="fas fa-industry"></i>
                  </div> <!-- form-title-icon ends -->
                  <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                    <span>factory address</span>
                  </div>  <!-- form-header-text ends -->
                  <div class="clear"></div>
                  <div class="table-responsive">
                    <table class="table table-bordered weight-medium">
                      <tr>
                        <td class="text-capitalize table-data-label">Is the factory address same as the correspondence address?</td>
                        <td class="weight-semi-bold "><asp:Label runat ="server" ID="lblackFactorySameasCorresadress" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">Postal Code</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackFactoryPostalCode" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">Address Line 1</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackFactoryaddress1" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">Address Line 2</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackFactoryaddress2" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">City / Village</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackFactoryCity" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">State</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackFactoryState" Text =""></asp:Label></td>
                      </tr>
                    </table>
                  </div> <!-- table-responsive ends -->
                </div> <!-- form-container ends -->
                <div class="clear"></div>
                <%--<div class="position-relative table-container border-gamma mt-5">
                  <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                    <i class="far fa-file-alt"></i>
                  </div> <!-- form-title-icon ends -->
                  <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                    <span>required documents</span>
                  </div>  <!-- form-header-text ends -->
                  <div class="clear"></div>
                  <div class="table-responsive">
                    <table class="table table-bordered weight-medium">
                      <tr>
                        <td class="text-capitalize table-data-label">Registration Number</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="Label50" Text ="lblRegistrationNo"></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">scanned copy of registation uploaded?</td>
                        <td class="weight-semi-bold text-uppercase"><asp:Label runat ="server" ID="Label51" Text ="lblScanCopyRegiUpload"></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">Certificate Of Incorporation</td>
                        <td class="weight-semi-bold"><span class="text-danger text-uppercase"><asp:Label runat ="server" ID="lblCertificateIncorporation" Text =""></asp:Label></span></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">Please upload scanned copy of certificate of incorporation</td>
                        <td class="weight-semi-bold"><span class="text-danger text-uppercase"><asp:Label runat ="server" ID="lblScanCopyIncorporationUpload" Text =""></asp:Label></span></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">GSTIN</td>
                        <td class="weight-semi-bold text-uppercase"><asp:Label runat ="server" ID="lblackGSTIN" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">GST registration certificate uploaded?</td>
                        <td class="weight-semi-bold text-uppercase">.0<asp:Label runat ="server" ID="lblackGSTRegistrationUpload" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">CA certificate showing the shareholding pattern uploaded?</td>
                        <td class="weight-semi-bold text-uppercase">no</td>
                      </tr>
                    </table>
                  </div> <!-- table-responsive ends -->
                </div>--%> <!-- form-container ends -->
                <div class="clear"></div>

    <asp:Repeater runat="server" ID="RptDirector">
            <HeaderTemplate>
                
                    </HeaderTemplate>
        <ItemTemplate>
                <div class="position-relative table-container border-gamma mt-5">
                  <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                    <i class="fas fa-user-tie"></i>
                  </div> <!-- form-title-icon ends -->
                  <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                    <span>Director / Promotor Details</span>
                  </div> <!-- form-header-text ends -->
                  <div class="clear"></div>
                  <div class="table-responsive">
                    <table class="table table-bordered weight-medium">
                      <tr>
                        <td class="text-capitalize table-data-label">Director / Promotor Name</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackDirectorName" Text='<%#Eval("director_name") %>'></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">Mobile Number</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackDirectorMobile" Text ='<%#Eval("phone_no") %>'></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">Email Id</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackDirectorEmail" Text ='<%#Eval("email_id") %>'></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">PAN number</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackDirectorPAN" Text ='<%#Eval("director_pan") %>'></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">Is the director / promotor address same as the correspondence address?</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackDirectirAddressSameAsCorres" Text ='<%#Eval("IsDirectorSameAsCorrespondence").ToString()=="True"?"Yes":"No" %>'></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">Address</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackDirectorAddress" Text ='<%#Eval("address") %>'></asp:Label></td>
                      </tr>
                    </table>
                  </div> <!-- table-responsive ends -->
                </div> <!-- form-container ends -->

              </ItemTemplate>
            <FooterTemplate>
                
                </FooterTemplate>
</asp:Repeater>

                <div class="clear"></div>
                <div class="position-relative table-container border-gamma mt-5">
                  <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                    <i class="far fa-id-badge"></i>
                  </div> <!-- form-title-icon ends -->
                  <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                    <span>authorised person details</span>
                  </div> <!-- form-header-text ends -->
                  <div class="clear"></div>
                  <div class="table-responsive">
                    <table class="table table-bordered weight-medium">
                      <tr>
                        <td class="text-capitalize table-data-label">Is the authorized person and applicant the same?</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackIsAuthorisedSameAsApplicant" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">Authorised Person Name</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackAuthorisedPersonName" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">Designation</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackAuthorisedDesignation" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">Mobile Number</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackAuhthorisedMobile" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">Email Id</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackAuthorisedEmail" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">Is the authorised person address same as the correspondence address?</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackIsAuthorisedAddressSameAsCorres" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">Address</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackAuthorisedAddress" Text =""></asp:Label></td>
                      </tr>
                    </table>
                  </div> <!-- table-responsive ends -->
                </div> <!-- form-container ends -->
                <div class="position-relative table-container border-gamma mt-5">
                  <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                    <i class="fas fa-hands-helping"></i>
                  </div> <!-- form-title-icon ends -->
                  <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                    <span>assistance sought</span>
                  </div>  <!-- form-header-text ends -->
                  <div class="clear"></div>
                  <div class="table-responsive">
                    <table class="table table-bordered weight-medium">
                      <tr>
                        <td class="text-capitalize table-data-label">Assistance will be sought for</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackAssistanceSought" Text =""></asp:Label></td>
                      </tr>
                    </table>
                  </div> <!-- table-responsive ends -->
                </div> <!-- form-container ends -->
                <div class="clear"></div>
                <div class="form-group">
                  <div class="form-header-text bg-delta border-delta weight-semi-bold text-md text-beta text-capitalize">
                    <span>Information for unit type</span>
                  </div> <!-- form-section ends -->
                </div> <!-- col ends -->
                <div class="clear"></div>
                <!-- ---*---*---*--- 01. IT/ITeS Unit ---*---*---*--- -->

    <div id="divAckItItesUnit" runat="server" visible="false" >

                <div class="position-relative table-container border-gamma mt-5">
                  <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                    <i class="fas fa-building"></i>
                  </div> <!-- form-title-icon ends -->
                  <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                    <span>IT/ITeS Unit (New or Expansion / Diversification)</span>
                  </div>  <!-- form-header-text ends -->
                  <div class="clear"></div>
                  <div class="table-responsive">
                    <table class="table table-bordered weight-medium">
                      <tr>
                        <td class="text-capitalize table-data-label">Location</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblAckUnitLocation" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">Tentative area</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblAckUnitArea" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">Tentative Investment</td>
                        <td class="weight-semi-bold"><i class="fas fa-rupee-sign"></i>&nbsp;<span><asp:Label runat ="server" ID="lblackUnitInvestment" Text =""></asp:Label></span></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">Tentative Employment</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackunitEmployment" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">Unit Type</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackUnitType" Text =""></asp:Label></td>
                      </tr>
                    </table>
                  </div> <!-- table-responsive ends -->
                </div> <!-- form-container ends -->
        </div>
                <div class="clear"></div>
                <!-- ---*---*---*--- 02. IT/ITeS Park ---*---*---*--- -->
     <div id="divAckItItesPark" runat="server" visible="false" >
                <div class="position-relative table-container border-gamma mt-5">
                  <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                    <i class="fas fa-building"></i>
                  </div> <!-- form-title-icon ends -->
                  <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                    <span>IT/ITeS Park</span>
                  </div>  <!-- form-header-text ends -->
                  <div class="clear"></div>
                  <div class="table-responsive">
                    <table class="table table-bordered weight-medium">
                      <tr>
                        <td class="text-capitalize table-data-label">Location</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackITParkLoc" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">Park Type</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackITParkType" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">Tentative area of the land where IT/ITeS Park will be set up</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackITTentativeParkArea" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">Total built up area</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblAckITParkBuitupArea" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">Tentative Project Cost, excluding cost of land</td>
                        <td class="weight-semi-bold"><i class="fas fa-rupee-sign"></i>&nbsp;<span><asp:Label runat ="server" ID="lblackITParkProjectCost" Text =""></asp:Label></span></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">brief description of the activities undertaken</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackITParkDesc" Text =""></asp:Label></td>
                      </tr>
                    </table>
                  </div> <!-- table-responsive ends -->
                </div> <!-- form-container ends -->
         </div>
                <div class="clear"></div>
                <!-- ---*---*---*--- 03. Research & Development Institution ---*---*---*--- -->
     <div id="divAckRNDInstitute" runat="server" visible="false" >
                <div class="position-relative table-container border-gamma mt-5">
                  <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                    <i class="fas fa-building"></i>
                  </div> <!-- form-title-icon ends -->
                  <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                    <span>Research & Development Institution</span>
                  </div>  <!-- form-header-text ends -->
                  <div class="clear"></div>
                  <div class="table-responsive">
                    <table class="table table-bordered weight-medium">
                      <tr>
                        <td class="text-capitalize table-data-label">Location</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblAckRNDLoc" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">Tentative area of the land where R&D institute will be set up</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackRNDTentativeArea" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">tentative project cost</td>
                        <td class="weight-semi-bold"><i class="fas fa-rupee-sign"></i>&nbsp;<span><asp:Label runat ="server" ID="lblackRNDProjectCost" Text =""></asp:Label></span></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">brief description of the activities undertaken</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackRNDDesc" Text =""></asp:Label></td>
                      </tr>
                    </table>
                  </div> <!-- table-responsive ends -->
                </div> <!-- form-container ends -->
         </div>
                <div class="clear"></div>
                <!-- ---*---*---*--- 04. Finishing School ---*---*---*--- -->
    <div id="divAckFishingSchool" runat="server" visible="false" >
                <div class="position-relative table-container border-gamma mt-5">
                  <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                    <i class="fas fa-building"></i>
                  </div> <!-- form-title-icon ends -->
                  <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                    <span>Finishing School</span>
                  </div>  <!-- form-header-text ends -->
                  <div class="clear"></div>
                  <div class="table-responsive">
                    <table class="table table-bordered weight-medium">
                      <tr>
                        <td class="text-capitalize table-data-label">Location</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblAckFishingLoc" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">tentative area of the land where finishing school will be set up</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblAckFishingTentativeArea" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">tentative project cost</td>
                        <td class="weight-semi-bold"><i class="fas fa-rupee-sign"></i>&nbsp;<span><asp:Label runat ="server" ID="lblAckFishingTentativeProjectCose" Text =""></asp:Label></span></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">brief description of the activities undertaken</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackFishingDesc" Text =""></asp:Label></td>
                      </tr>
                    </table>
                  </div> <!-- table-responsive ends -->
                </div> <!-- form-container ends -->
        </div>
                <div class="clear"></div>
                <!-- ---*---*---*--- 05. IT/ITeS Industry Association ---*---*---*--- -->
    <div id="divAckItIndustryAssociation" runat="server" visible="false" >
                <div class="position-relative table-container border-gamma mt-5">
                  <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                    <i class="fas fa-building"></i>
                  </div> <!-- form-title-icon ends -->
                  <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                    <span>IT/ITeS Industry Association</span>
                  </div>  <!-- form-header-text ends -->
                  <div class="clear"></div>
                  <div class="table-responsive">
                    <table class="table table-bordered weight-medium">
                      <tr>
                        <td class="text-capitalize table-data-label">exhibition / trade fair name</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblAckIndustryExibitionName" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">date for the exhibition / trade fair</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackIndustryForExibitionDate" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">expenditure planned by association</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackIndustryexpenditurePlanned" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">did you avail this assistance under the current scheme previously?</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackIndustryIsAvailAssistance" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">date of the exhibition / trade fair</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackIndustryOfExibitionDate" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">amount</td>
                        <td class="weight-semi-bold"><i class="fas fa-rupee-sign"></i>&nbsp;<span><asp:Label runat ="server" ID="lblackIndustryAmount" Text =""></asp:Label></span></td>
                      </tr>
                    </table>
                  </div> <!-- table-responsive ends -->
                </div> <!-- form-container ends -->
        </div>
                <div class="clear"></div>
                <!-- ---*---*---*--- 06. Contract / Sponsored Research Work ---*---*---*--- -->
    <div id="divAckContractResearchwork" runat="server" visible="false" >
                <div class="position-relative table-container border-gamma mt-5">
                  <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                    <i class="fas fa-building"></i>
                  </div> <!-- form-title-icon ends -->
                  <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                    <span>Contract / Sponsored Research Work</span>
                  </div>  <!-- form-header-text ends -->
                  <div class="clear"></div>
                  <div class="table-responsive">
                    <table class="table table-bordered weight-medium">
                      <tr>
                        <td class="text-capitalize table-data-label">research topic</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackResearchTopic" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">research assigning organization</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackResearchOrg" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">total duration of research</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackResearchDuration" Text =""></asp:Label></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">total cost for undertaking research</td>
                        <td class="weight-semi-bold"><i class="fas fa-rupee-sign"></i>&nbsp;<span><asp:Label runat ="server" ID="lblackResearchTotalCost" Text =""></asp:Label></span></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">Name of the organization if you received assistance for a similar project</td>
                        <td class="weight-semi-bold"><asp:Label runat ="server" ID="lblackResearchOrgName" Text =""></asp:Label></td>
                      </tr>
                    </table>
                  </div> <!-- table-responsive ends -->
                </div> <!-- form-container ends -->
        </div>
                <div class="clear"></div>
                <div class="position-relative table-container border-gamma mt-5">
                  <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                    <i class="fas fa-rupee-sign"></i>
                  </div> <!-- form-title-icon ends -->
                  <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                    <span>Approximate Amount of Assistance Sought</span>
                  </div>  <!-- form-header-text ends -->
                  <div class="clear"></div>
                  <div class="table-responsive">
                    <table class="table table-bordered weight-medium">

                         <asp:Repeater runat="server" ID="RPTIncentive">
            <HeaderTemplate>
                
                    </HeaderTemplate>
            <ItemTemplate>
                 <tr>
                        <td class="text-capitalize table-data-label"><asp:Label  id="lblIncentiveName" runat="server" Text='<%#Eval("incentive_name") %>'></asp:Label> </td>
                        <td class="weight-semi-bold"><i class="fas fa-rupee-sign"></i>&nbsp;<span><asp:Label  id="lblIncentiveAmt" runat="server" Text='<%#Eval("assistance_amount") %>'></asp:Label> </span></td>
                      </tr>
                 </ItemTemplate>
            <FooterTemplate>
                
                </FooterTemplate>
</asp:Repeater>
                     
                    <%--  <tr>
                        <td class="text-capitalize table-data-label">Reimbursement Of Stamp<br>Duty / Registration Fee</td>
                        <td class="weight-semi-bold"></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">Lease Rental Subsidy</td>
                        <td class="weight-semi-bold"></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">Interest Subsidy</td>
                        <td class="weight-semi-bold"></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label"> Power Tariff & Electricity Duty</td>
                        <td class="weight-semi-bold"></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">VAT/CST/GST Incentive</td>
                        <td class="weight-semi-bold"></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">Employment Generation Grant On EPF</td>
                        <td class="weight-semi-bold"></td>
                      </tr>
                      <tr>
                        <td class="text-capitalize table-data-label">Quality Certification</td>
                        <td class="weight-semi-bold"></td>
                      </tr>--%>
                    </table>
                  </div> <!-- table-responsive ends -->
                </div> <!-- form-container ends -->
                <div class="clear"></div>
                <div class="form-check"> 
                    <asp:CheckBox runat ="server" ID="chkAgreementCheck" Text ="I hereby declare that the information submitted in this application is true and correct to the best of my knowledge." OnCheckedChanged="chkAgreementCheck_CheckedChanged" />
                 <%-- <input class="form-check-input" type="checkbox" value="" id="agreementCheck" required>
                  <label class="form-check-label" for="agreementCheck">
                    I hereby declare that the information submitted in this application is true and correct to the best of my knowledge. 
                  </label>--%>
                </div> <!-- form-check ends -->
                <div class="text-right">
                    <asp:Button runat ="server" CssClass ="btn btn-primary" Text ="Submit Annexure-1"  ID="btnSubmitAnnexure1" OnClick="btnSubmitAnnexure1_Click" />
                  <%--<input type="submit" class="btn btn-primary" value="Submit Annexure-1">--%>
                </div> <!-- text-right ends -->
    </div>



                    <div role="tabpanel" class="tab-pane fade tab-pane fade show active" id="tabDocUpload" aria-labelledby="tabItem6" runat ="server" >
              <!-- -----*----- TAB PANEL CONTENT AREA STARTS -----*----- -->
              <div class="position-relative form-container border-gamma">
                <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                  <i class="far fa-file-alt"></i>
                </div> <!-- form-title-icon ends -->
                <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                  <span>required documents</span>
                </div>  <!-- form-header-text ends -->
                <div class="clear"></div>
                <div class="row">

                  <div class="mb-3 col-lg-12">
                    <div class="custom-form-label">Please upload scanned copy of identity proof<span class="text-danger text-sm m-1">*</span></div>
                    <div class="input-group">
                     <asp:FileUpload ID="fpIdentityProof1" runat="server" />
                            
                           <asp:RequiredFieldValidator ID="reqIdentityProof1"   runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="fpIdentityProof1" ErrorMessage="File Required!" ValidationGroup="docUpload" >
        </asp:RequiredFieldValidator>
                           <asp:button runat="server" id="btnIdentityUpload1" text="Upload"  ValidationGroup="docUpload" OnClick="btnIdentityUpload1_Click"/>
                        <asp:LinkButton runat ="server" Text ="View Doc" ID="lnkviewIDprrof" Visible ="false" OnClick="lnkviewIDprrof_Click"></asp:LinkButton>
                        <asp:HiddenField ID="hdnIDproofFilename" runat="server" />
                    </div> <!-- input group ends -->
                  </div> <!-- col ends -->

                  <div class="mb-3 col-lg-12">
                    <div class="custom-form-label">please attach scanned copy of the PAN card<span class="text-danger text-sm m-1">*</span></div>
                    <div class="input-group">
                      <asp:FileUpload ID="fpPANCard1" runat="server" />
                            
                           <asp:RequiredFieldValidator ID="reqPANCard1"   runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="fpPANCard1" ErrorMessage="File Required!" ValidationGroup="docPAN" >
        </asp:RequiredFieldValidator>
                           <asp:button runat="server" id="btnPANUpload" text="Upload"  ValidationGroup="docPAN" OnClick="btnPANUpload_Click"/>
                         <asp:LinkButton runat ="server" Text ="View Doc" ID="lnkviewPANCard" Visible ="false" OnClick="lnkviewPANCard_Click" ></asp:LinkButton>
                         <asp:HiddenField ID="hdnPANfilename" runat="server" />
                    </div> <!-- input group ends -->
                  </div> <!-- col ends -->

                  <div class="mb-3 col-lg-12">
                    <div class="custom-form-label">please attach certified copy of the partnership deed<span class="text-danger text-sm m-1">*</span></div>
                    <div class="input-group">
                     <asp:FileUpload ID="fpPartnershipdeed1" runat="server" />
                            
                           <asp:RequiredFieldValidator ID="reqPartnershipdeed1"   runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="fpPartnershipdeed1" ErrorMessage="File Required!" ValidationGroup="docpartner" >
        </asp:RequiredFieldValidator>
                           <asp:button runat="server" id="btnuploadPartnershipdeed" text="Upload"  ValidationGroup="docpartner" OnClick="btnuploadPartnershipdeed_Click"/>
                           <asp:LinkButton runat ="server" Text ="View Doc" ID="lnkPartnershipdeed" Visible ="false" OnClick="lnkPartnershipdeed_Click" ></asp:LinkButton>
                         <asp:HiddenField ID="hdnPartnershipfilename" runat="server" />
                    </div> <!-- input group ends -->
                  </div> <!-- col ends -->

                  <div class="mb-3 col-lg-12">
                    <div class="custom-form-label">Please attach certified copy of the memorandum and articles of association or equivalent registration documents<span class="text-danger text-sm m-1">*</span></div>
                    <div class="input-group">
                       <asp:FileUpload ID="fpMemorandum1" runat="server" />
                            
                           <asp:RequiredFieldValidator ID="reqMemorandum"   runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="fpMemorandum1" ErrorMessage="File Required!" ValidationGroup="fpMemorandum" >
        </asp:RequiredFieldValidator>
                           <asp:button runat="server" id="btnuploadMemorandum" text="Upload"  ValidationGroup="fpMemorandum1" OnClick="btnuploadMemorandum_Click"/>
                          <asp:LinkButton runat ="server" Text ="View Doc" ID="lnkMemorandum" Visible ="false" OnClick="lnkMemorandum_Click" ></asp:LinkButton>
                           <asp:HiddenField ID="hdnfpMemorandumfilename" runat="server" />
                    </div> <!-- input group ends -->
                  </div> <!-- col ends -->

                  <div class="mb-3 col-lg-12">
                    <div class="custom-form-label">Please upload scanned copy of registation<span class="text-danger text-sm m-1">*</span></div>
                    <div class="input-group">
                     <asp:FileUpload ID="fpregistration" runat="server" />
                            
                           <asp:RequiredFieldValidator ID="reqregistration"   runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="fpregistration" ErrorMessage="File Required!" ValidationGroup="fpregistration" >
        </asp:RequiredFieldValidator>
                           <asp:button runat="server" id="btnuploadRegistration" text="Upload"  ValidationGroup="fpregistration" OnClick="btnuploadRegistration_Click"/>
                            <asp:LinkButton runat ="server" Text ="View Doc" ID="lnkreg" Visible ="false" OnClick="lnkreg_Click" ></asp:LinkButton>
                          <asp:HiddenField ID="hdnfpregistrationfilename" runat="server" />
                    </div> <!-- input group ends -->
                  </div> <!-- col ends -->

                  <div class="mb-3 col-lg-12">
                    <div class="custom-form-label">Please upload scanned copy of certificate of incorporation<span class="text-danger text-sm m-1">*</span></div>
                    <div class="input-group">
                       <asp:FileUpload ID="fpincorporation" runat="server" />
                            
                           <asp:RequiredFieldValidator ID="reqincorporation"   runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="fpincorporation" ErrorMessage="File Required!" ValidationGroup="fpincorporation" >
        </asp:RequiredFieldValidator>
                           <asp:button runat="server" id="btnuploadincorporation" text="Upload"  ValidationGroup="fpincorporation" OnClick="btnuploadincorporation_Click"/>
                        <asp:LinkButton runat ="server" Text ="View Doc" ID="lnkCorporation" Visible ="false" OnClick="lnkCorporation_Click" ></asp:LinkButton>
                        <asp:HiddenField ID="hdnfpincorporationfilename" runat="server" />
                    </div> <!-- input group ends -->
                  </div> <!-- col ends -->

                  <div class="mb-3 col-lg-12">
                    <div class="custom-form-label">Please upload GST registration certificate<span class="text-danger text-sm m-1">*</span></div>
                    <div class="input-group">
                      <asp:FileUpload ID="fpGST" runat="server" />
                            
                           <asp:RequiredFieldValidator ID="reqGST"   runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="fpGST" ErrorMessage="File Required!" ValidationGroup="fpGST" >
        </asp:RequiredFieldValidator>
                           <asp:button runat="server" id="btnUploadGST" text="Upload"  ValidationGroup="fpGST" OnClick="btnUploadGST_Click"/>
                         <asp:LinkButton runat ="server" Text ="View Doc" ID="lnkGST" Visible ="false" OnClick="lnkGST_Click" ></asp:LinkButton>
                         <asp:HiddenField ID="hdnfpGSTfilename" runat="server" />
                    </div> <!-- input group ends -->
                  </div> <!-- col ends -->

                  <div class="mb-3 col-lg-12">
                    <div class="custom-form-label">Please upload CA certificate showing the shareholding pattern<span class="text-danger text-sm m-1">*</span></div>
                    <div class="input-group">
                      
                       <asp:FileUpload ID="fpCACertificate" runat="server" />
                            
                           <asp:RequiredFieldValidator ID="reqCACertificate"   runat="server" Display="dynamic" forecolor="red"
            ControlToValidate="fpCACertificate" ErrorMessage="File Required!" ValidationGroup="FPCA" >
        </asp:RequiredFieldValidator>
                           <asp:button runat="server" id="btnuploadCACertificate" text="Upload"  ValidationGroup="FPCA"  OnClick="btnuploadCACertificate_Click"/>
                         <asp:LinkButton runat ="server" Text ="View Doc" ID="lnkCACertificate" Visible ="false" OnClick="lnkCACertificate_Click" ></asp:LinkButton>
                           <asp:HiddenField ID="hdnfpCACertificatefilename" runat="server" />
       
                    </div> <!-- input group ends -->
                  </div> <!-- col ends -->

                </div> <!-- row ends -->
              </div> <!-- form-container ends -->
                        <div class="clear"></div>
                <div class="text-right">

                    
                      <asp:button runat="server" id="btnRequiredDoc" text="Continue" cssclass="btn btn-primary" ValidationGroup="DocUpload" OnClick="btnRequiredDoc_Click"   />


                 <%-- <input type="reset" class="btn btn-outline-secondary" value="Reset Form">
                  <input type="submit" class="btn btn-primary" value="Save & Continue">--%>
                </div> <!-- text-right ends -->
              <!-- -----*----- TAB PANEL CONTENT AREA ENDS -----*----- -->
            </div>


              </div>
              
           </div> 
        <script type="text/javascript" src="<%: ResolveUrl("~/Scripts/gijgo.min.js")%>"></script>
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
    $.each(['#txtdateforExhibition', '#txtavailSchemeDate'], function (index, value) {
      $(value).datepicker(datePickerProperties);
    });
            
  </script>
</asp:Content>

