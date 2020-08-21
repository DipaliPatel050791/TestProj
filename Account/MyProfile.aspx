<%@ Page Title="" Language="C#" MasterPageFile="~/Policy.master" AutoEventWireup="true" CodeFile="MyProfile.aspx.cs" Inherits="Account_MyProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="col-md-9">
        <section>
             <div class="row align-items-center">
                 <asp:Label ID="lblMSG"  runat="server" ForeColor="Red" class="control-label"></asp:Label>
                 </div>
            <div class="row align-items-center">
                <div class="form-group col-lg-6">
                    <asp:Label ID="lblFirstName" runat="server" Text="<%$Resources:Resource1, FirstName %>"></asp:Label>
                    <asp:TextBox runat="server" ID="txtFirstName" TabIndex="1" class="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvtxtFirstName" class="form-text text-muted" runat="server" Display="dynamic" ControlToValidate="txtFirstName"
                        ForeColor="Red" ValidationGroup="Save" ErrorMessage="Please enter First Name."></asp:RequiredFieldValidator>
                    <%--<input type="text" class="form-control" name="txtFirstName" id="lblFirstName" value="Lorem" runat="server">--%>
                    <!-- <small id="" class="form-text text-danger">Error Message.</small> -->
                </div>
                <!-- form-group / col ends -->
                <div class="form-group col-lg-6">
                    <asp:Label ID="lblLastName" runat="server" Text="<%$Resources:Resource1, LastName %>"></asp:Label>
                    <asp:TextBox runat="server" ID="txtLastName" TabIndex="2" class="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvtxtLastName" class="form-text text-muted" runat="server" Display="dynamic" ControlToValidate="txtLastName"
                        ForeColor="Red" ValidationGroup="Save" ErrorMessage="Please enter Last Name."></asp:RequiredFieldValidator>

                </div>
                <!-- form-group / col ends -->
                <div class="form-group col-lg-6">
                    <asp:Label ID="lblMobileNumber" runat="server" Text="<%$Resources:Resource1, MobileNumber %>"></asp:Label>


                    <asp:TextBox runat="server" ID="txtMobileNumber" TabIndex="3" class="form-control" MaxLength="10"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvtxtMobileNumber" class="form-text text-muted" runat="server" Display="dynamic" ControlToValidate="txtMobileNumber"
                        ForeColor="Red" ValidationGroup="Save" ErrorMessage="Please enter Mobile Number."></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revtxtMobileNumber" class="form-text text-muted" runat="server" ControlToValidate="txtMobileNumber"
                        Display="Dynamic" ForeColor="Red" ErrorMessage="InValid Mobile Number." ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>

                </div>
                <!-- form-group / col ends -->
                <div class="form-group col-lg-6">
                    <asp:Label ID="lblTelephoneNumber" runat="server" Text="<%$Resources:Resource1, TelephoneNumber %>"></asp:Label>
                    <asp:TextBox runat="server" ID="txtTelephoneNumber" TabIndex="4" class="form-control" MaxLength="10"></asp:TextBox>
                    <%-- <asp:RequiredFieldValidator ID="rfvtxtTelephoneNumber" class="form-text text-muted" runat="server" Display="dynamic" ControlToValidate="txtTelephoneNumber" 
                                    ForeColor="Red" ValidationGroup="Save" ErrorMessage="Please enter Telephone Number."></asp:RequiredFieldValidator>--%>
                    <asp:RegularExpressionValidator ID="revtxtTelephoneNumber" class="form-text text-muted" runat="server" ControlToValidate="txtTelephoneNumber"
                        Display="Dynamic" ForeColor="Red" ErrorMessage="InValid Telephone Number." ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$"></asp:RegularExpressionValidator>
                </div>
                <!-- form-group / col ends -->
                <div class="form-group col-lg-6">
                    <asp:Label ID="lblEmailId" runat="server" Text="<%$Resources:Resource1, EmailId %>"></asp:Label>

                    <asp:TextBox runat="server" ID="txtEmailId" TabIndex="5" class="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvtxtEmailId" class="form-text text-muted" runat="server" Display="dynamic" ControlToValidate="txtEmailId"
                        ForeColor="Red" ValidationGroup="Save" ErrorMessage="Please enter Email Id."></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revtxtEmailId" class="form-text text-muted" runat="server" ControlToValidate="txtEmailId"
                        Display="Dynamic" ForeColor="Red" ErrorMessage="InValid Email Id." ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"></asp:RegularExpressionValidator>

                </div>
                <!-- form-group / col ends -->
                <div class="form-group col-lg-6">
                    <%--<label for="lblPostalCode"><span>Postal Code</span><span class="text-danger text-sm m-1">*</span></label>
                    <asp:TextBox type="text" class="form-control" name="txtPostalCode" ID="lblPostalCode" MaxLength="6" runat="server"></asp:TextBox>--%>
                    <asp:Label ID="lblPostalCode" runat="server" Text="<%$Resources:Resource1, PostCode %>"></asp:Label>

                    <asp:TextBox runat="server" ID="txtPostalCode" TabIndex="6" class="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvtxtPostalCode" class="form-text text-muted" runat="server" Display="dynamic" ControlToValidate="txtPostalCode"
                        ForeColor="Red" ValidationGroup="Save" ErrorMessage="Please enter PostCode."></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revtxtPostalCode" class="form-text text-muted" runat="server" ControlToValidate="txtPostalCode"
                        Display="Dynamic" ForeColor="Red" ErrorMessage="InValid PostCode." ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
                </div>
                <!-- form-group / col ends -->
                <div class="form-group col-lg-6">
                   <%-- <label for="lblAddressLine1"><span>Address Line 1</span><span class="text-danger text-sm m-1">*</span></label>
                    <asp:TextBox type="text" class="form-control" name="txtAddressLine1" ID="lblAddressLine1" runat="server"></asp:TextBox>--%>
                <asp:Label ID="lblAddressLine1" runat="server" Text="<%$Resources:Resource1, Address1 %>"></asp:Label>
                <asp:TextBox runat="server" ID="txtAddressLine1" TabIndex="7" class="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvtxtAddressLine1" class="form-text text-muted" runat="server" Display="dynamic" ControlToValidate="txtAddressLine1"
                        ForeColor="Red" ValidationGroup="Save" ErrorMessage="Please enter AddressLine1."></asp:RequiredFieldValidator>
                    
                
                </div>
                <!-- form-group / col ends -->
                <div class="form-group col-lg-6">
                    <%--<label for="lblAddressLine2"><span>Address Line 2</span></label>
                    <asp:TextBox type="text" class="form-control" name="txtAddressLine1" ID="lblAddressLine2" runat="server"></asp:TextBox>--%>
                     <asp:Label ID="lblAddressLine2" runat="server" Text="<%$Resources:Resource1, Address1 %>"></asp:Label>
                <asp:TextBox runat="server" ID="txtAddressLine2" TabIndex="8" class="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvtxtAddressLine2" class="form-text text-muted" runat="server" Display="dynamic" ControlToValidate="txtAddressLine2"
                        ForeColor="Red" ValidationGroup="Save" ErrorMessage="Please enter AddressLine2."></asp:RequiredFieldValidator>
                  
                </div>
                <!-- form-group / col ends -->
                <div class="mb-3 col-lg-6">
                    <%--<label for="lblState"><span>State</span><span class="text-danger text-sm m-1">*</span></label>--%>
                    <asp:Label ID="lblState" runat="server" Text="<%$Resources:Resource1, State %>"></asp:Label>
                    <div class="input-group">
                      
                         <asp:DropDownList ID="ddlState" runat="server" TabIndex="9" class="custom-select"  AutoPostBack="true" OnSelectedIndexChanged="ddlState_SelectedIndexChanged">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfvddlState" runat="server" Display="dynamic" ControlToValidate="ddlState" InitialValue="0" ValidationGroup="Save" ErrorMessage="Select State"></asp:RequiredFieldValidator>
                            

                    </div>
                    <!-- input group ends -->
                </div>
                <!-- col ends -->
                <div class="form-group col-lg-6">
                    <%--<label for="lblDistrict"><span>District</span><span class="text-danger text-sm m-1">*</span></label>--%>
                    <asp:Label ID="lblDistrict" runat="server" Text="<%$Resources:Resource1, District %>"></asp:Label>                    
                    <asp:TextBox type="text" class="form-control" ID="txtDistrict" TabIndex="10" runat="server" MaxLength="20"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvtxtDistrict" class="form-text text-muted" runat="server" Display="dynamic" ControlToValidate="txtDistrict"
                        ForeColor="Red" ValidationGroup="Save" ErrorMessage="Please enter District."></asp:RequiredFieldValidator>
                  
                </div>
                <!-- form-group / col ends -->
                <div class="form-group col-lg-6">
                    <%--<label for="lblCityVillage"><span>City / Village</span><span class="text-danger text-sm m-1">*</span></label>--%>
                     <asp:Label ID="lblCityVillage" runat="server" Text="<%$Resources:Resource1, City %>"></asp:Label>                    
                    <asp:TextBox type="text" class="form-control"  ID="txtCityVillage" TabIndex="11" runat="server" MaxLength="20"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvtxtCityVillage" class="form-text text-muted" runat="server" Display="dynamic" ControlToValidate="txtCityVillage"
                        ForeColor="Red" ValidationGroup="Save" ErrorMessage="Please enter City/Village."></asp:RequiredFieldValidator>
                  
                </div>
                <!-- form-group / col ends -->
                <div class="form-group col-lg-6">
                    <%--<label for="lblAadhaarNo"><span>aadhaar number</span><span class="text-danger text-sm m-1">*</span></label>--%>
                    <asp:Label ID="lblAadhaarNo" runat="server" Text="<%$Resources:Resource1, Aadhar %>"></asp:Label>                    
                    <asp:TextBox type="text" class="form-control"  ID="txtAadhaarNo" TabIndex="12" runat="server" MaxLength="12"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="rfvtxtAadhaarNo" class="form-text text-muted" runat="server" Display="dynamic" ControlToValidate="txtAadhaarNo"
                        ForeColor="Red" ValidationGroup="Save" ErrorMessage="Please enter Aadhar Number."></asp:RequiredFieldValidator>
                  
                </div>
                <!-- form-group / col ends -->
                <div class="form-group col-lg-6 text-left">
                    <a href="ForgetPassword.aspx">Change Password?</a>
                </div>
                <div class="form-group col-lg-6 text-right">
                    <%--<asp:Button type="submit" class="btn btn-primary" Text="Save Profile" runat="server" />--%>
                     <asp:Button runat="server" ID="btnsubmit" Text="Save Profile" TabIndex="13" class="btn btn-primary" OnClick="btnsubmit_Click" ValidationGroup="Save" />
                        
                </div>
            </div>

        </section>
    </div>
    <!-- col ends -->
</asp:Content>

