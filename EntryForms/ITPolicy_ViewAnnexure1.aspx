<%@ Page Language="C#" MasterPageFile="~/Policy.master" AutoEventWireup="true" CodeFile="ITPolicy_ViewAnnexure1.aspx.cs" Inherits="EntryForms_ITPolicy_ViewAnnexure1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
 <div class="col-md-9">
        <section>
          <div class="row no-gutters">
            <div class="col-12">
              <section>
                <div class="row no-gutters">
                  <div class="form-group col-12">
                    <div id="divRegistration" runat="server" class="form-header-text bg-delta border-delta weight-semi-bold text-md text-beta">
                        <%--<span class="text-capitalize">registration number:</span>&nbsp;--%>
                        <asp:Label ID="lblRegistrationNo" class="text-capitalize" runat="server" Text="<%$Resources:Resource1, RegistrationNo %>"></asp:Label>
                        <%-- <span class="text-uppercase">xx00yy11zz22</span>--%>
                        <asp:Label ID="lblRegistrationNoValue" class="text-uppercase" runat="server" ></asp:Label>                     
                    </div> <!-- form-section ends -->
                  </div> <!-- col ends -->
                  <div class="col-12">
                    <!-- Below code is same as acknowledgement form of 
                    * new-application.php 
                    * id="tabItem5" aria-labelledby=tabItem5" -->
                    <div class="position-relative table-container border-gamma">
                      <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                        <i class="fas fa-user-tie"></i>
                      </div> <!-- form-title-icon ends -->
                      <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                        <span>Applicant's Details</span>
                      </div>  <!-- form-header-text ends -->
                      <div class="clear"></div>
                      <div class="table-responsive">
                        <table class="table table-bordered weight-medium">
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblFirstName"  runat="server" Text="<%$Resources:Resource1, ITPolicyViewFirstName %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">                               
                                <asp:Label ID="lblFirstNameValue"  runat="server" ></asp:Label>                     
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblLastName"  runat="server" Text="<%$Resources:Resource1, ITPolicyViewLastName %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblLastNameValue"  runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                              
                                <asp:Label ID="lblMobileNo"  runat="server" Text="<%$Resources:Resource1, ITPolicyViewMobileNo %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">                                
                                 <asp:Label ID="lblMobileNoValue"  runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                               
                                <asp:Label ID="lblEmailID" runat="server" Text="<%$Resources:Resource1, ITPolicyViewEmailID %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblEmailIDValue" runat="server" ></asp:Label>
                            </td>
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
                        <span>Correspondence Address</span>
                      </div>  <!-- form-header-text ends -->
                      <div class="clear"></div>
                      <div class="table-responsive">
                        <table class="table table-bordered weight-medium">
                          <tr>
                            <td class="text-capitalize table-data-label">                               
                                <asp:Label ID="lblCorresPostalCode" runat="server" Text="<%$Resources:Resource1, ITPolicyViewCorresPostalCode %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">                              
                                <asp:Label ID="lblCorresPostalCodeValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblCorresAddressLine1" runat="server" Text="<%$Resources:Resource1, ITPolicyViewCorresAddressLine1 %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblCorresAddressLine1Value" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblCorresAddressLine2" runat="server" Text="<%$Resources:Resource1, ITPolicyViewCorresAddressLine2 %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblCorresAddressLine2Value" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblCorresCityVillage" runat="server" Text="<%$Resources:Resource1, ITPolicyViewCorresCityVillage %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                               <asp:Label ID="lblCorresCityVillageValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                               
                                <asp:Label ID="lblCorresState" runat="server" Text="<%$Resources:Resource1, ITPolicyViewCorresState %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                               <asp:Label ID="lblCorresStateValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblCorresTelephoneNo" runat="server" Text="<%$Resources:Resource1, ITPolicyViewCorresTelephoneNo %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                               <asp:Label ID="lblCorresTelephoneNoValue" runat="server" ></asp:Label>
                            </td>
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
                        <span>Identity Proof</span>
                      </div>  <!-- form-header-text ends -->
                      <div class="clear"></div>
                      <div class="table-responsive">
                        <table class="table table-bordered weight-medium">
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblIDProof" runat="server" Text="<%$Resources:Resource1, ITPolicyViewIDProof %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">                                
                                <asp:Label ID="lblIDProofValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                               
                                <asp:Label ID="lblIDNumber" runat="server" Text="<%$Resources:Resource1, ITPolicyViewIDNumber %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">                              
                                <asp:Label ID="lblIDNumberValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblScannedIDDocUploaded" runat="server" Text="<%$Resources:Resource1, ITPolicyViewScannedIDDocUploaded %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                               <asp:Label ID="lblScannedIDDocUploadedValue" runat="server" ></asp:Label>
                            </td>
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
                        <span>Entity Details</span>
                      </div>  <!-- form-header-text ends -->
                      <div class="clear"></div>
                      <div class="table-responsive">
                        <table class="table table-bordered weight-medium">
                          <tr>
                            <td class="text-capitalize table-data-label text-md">                                
                                <asp:Label ID="lblEntityPAN" runat="server" Text="<%$Resources:Resource1, ITPolicyViewEntityPAN %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold text-uppercase text-md">                                
                                <asp:Label ID="lblEntityPANValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                                       
                                <asp:Label ID="lblScannedPANDocUploaded" runat="server" Text="<%$Resources:Resource1, ITPolicyViewScannedPANDocUploaded %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold text-uppercase">                               
                                <asp:Label ID="lblScannedPANDocUploadedValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label text-md">                                
                                <asp:Label ID="lblEntityName" runat="server" Text="<%$Resources:Resource1, ITPolicyViewEntityName %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold text-md">
                               <asp:Label ID="lblEntityNameValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblTypeOfEntity" runat="server" Text="<%$Resources:Resource1, ITPolicyViewTypeOfEntity %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">                               
                                <asp:Label ID="lblTypeOfEntityValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                               
                                <asp:Label ID="lblPartnershipDeedDocs" runat="server" Text="<%$Resources:Resource1, ITPolicyViewPartnershipDeedDocs %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold text-uppercase">                             
                                <asp:Label ID="lblPartnershipDeedDocsValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblCertifiedMemorendumDocs" runat="server" Text="<%$Resources:Resource1, ITPolicyViewCertifiedMemorendumDocs %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblCertifiedMemorendumDocsValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                            
                                <asp:Label ID="lblEntityMobileNo" runat="server" Text="<%$Resources:Resource1, ITPolicyViewEntityMobileNo %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">                            
                                <asp:Label ID="lblEntityMobileNoValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                               
                                <asp:Label ID="lblEntityTelephoneNo" runat="server" Text="<%$Resources:Resource1, ITPolicyViewEntityTelephoneNo %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblEntityTelephoneNoValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">
                               
                                <asp:Label ID="lblFaxNo" runat="server" Text="<%$Resources:Resource1, ITPolicyViewEntityFaxNo %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblFaxNoValue" runat="server" ></asp:Label>

                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                              
                                <asp:Label ID="lblEntityEmailID" runat="server" Text="<%$Resources:Resource1, ITPolicyViewEntityEmailID %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                 <asp:Label ID="lblEntityEmailIDValue" runat="server" ></asp:Label>
                            </td>
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
                        <span>Office Address</span>
                      </div>  <!-- form-header-text ends -->
                      <div class="clear"></div>
                      <div class="table-responsive">
                        <table class="table table-bordered weight-medium">
                          <tr>
                            <td class="text-capitalize table-data-label">                               
                                <asp:Label ID="lblIsOfficeAddressSameAsCorres" runat="server" Text="<%$Resources:Resource1, ITPolicyViewIsOfficeAddressSameAsCorres %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">                               
                                <asp:Label ID="lblIsOfficeAddressSameAsCorresValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblOfficePostalCode" runat="server" Text="<%$Resources:Resource1, ITPolicyViewOfficePostalCode %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblOfficePostalCodeValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblOfficeAddress1" runat="server" Text="<%$Resources:Resource1, ITPolicyViewOfficeAddress1 %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblOfficeAddress1Value" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                               
                                <asp:Label ID="lblOfficeAddress2" runat="server" Text="<%$Resources:Resource1, ITPolicyViewOfficeAddress2 %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblOfficeAddress2Value" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                               
                                <asp:Label ID="lblOfficeCityVillage" runat="server" Text="<%$Resources:Resource1, ITPolicyViewOfficeCityVillage %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblOfficeCityVillageValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblOfficeState" runat="server" Text="<%$Resources:Resource1, ITPolicyViewOfficeState %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">                                
                                <asp:Label ID="lblOfficeStateValue" runat="server" ></asp:Label>
                            </td>
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
                        <span>Factory Address</span>
                      </div>  <!-- form-header-text ends -->
                      <div class="clear"></div>
                      <div class="table-responsive">
                        <table class="table table-bordered weight-medium">
                          <tr>
                            <td class="text-capitalize table-data-label">                               
                                <asp:Label ID="lblIsFactoryAddressSameAsCorres" runat="server" Text="<%$Resources:Resource1, ITPolicyViewIsFactoryAddressSameAsCorres %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">                               
                                <asp:Label ID="lblIsFactoryAddressSameAsCorresValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblFactoryPostalCode" runat="server" Text="<%$Resources:Resource1, ITPolicyViewFactoryPostalCode %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblFactoryPostalCodeValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblFactoryAddress1" runat="server" Text="<%$Resources:Resource1, ITPolicyViewFactoryAddress1 %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblFactoryAddress1Value" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                               
                                <asp:Label ID="lblFactoryAddress2" runat="server" Text="<%$Resources:Resource1, ITPolicyViewFactoryAddress2 %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblFactoryAddress2Value" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                               
                                <asp:Label ID="lblFactoryCityVillage" runat="server" Text="<%$Resources:Resource1, ITPolicyViewFactoryCityVillage %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblFactoryCityVillageValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblFactoryState" runat="server" Text="<%$Resources:Resource1, ITPolicyViewFactoryState %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">                                
                                <asp:Label ID="lblFactoryStateValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                        </table>
                      </div> <!-- table-responsive ends -->
                    </div> <!-- form-container ends -->
                    <div class="clear"></div>
                    <div class="position-relative table-container border-gamma mt-5">
                      <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                        <i class="far fa-file-alt"></i>
                      </div> <!-- form-title-icon ends -->
                      <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                        <span>Required Documents</span>
                      </div>  <!-- form-header-text ends -->
                      <div class="clear"></div>
                      <div class="table-responsive">
                        <table class="table table-bordered weight-medium">
                          <tr>
                            <td class="text-capitalize table-data-label">                               
                                <asp:Label ID="lblRequiredDocRegistrationNo" runat="server" Text="<%$Resources:Resource1, ITPolicyViewRequiredDocRegistrationNo %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblRequiredDocRegistrationNoValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblIsRegistrationDocUploaded" runat="server" Text="<%$Resources:Resource1, ITPolicyViewIsRegistrationDocUploaded %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold text-uppercase">
                                <asp:Label ID="lblIsRegistrationDocUploadedValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                               
                                <asp:Label ID="lblCertOfIncorp" runat="server" Text="<%$Resources:Resource1, ITPolicyViewCertOfIncorp %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">                                
                                <asp:Label ID="lblCertOfIncorpValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">
                               <asp:Label ID="lblUploadDocCertOfIncorp" runat="server" Text="<%$Resources:Resource1, ITPolicyViewUploadDocCertOfIncorp %>"></asp:Label>

                            </td>
                            <td class="weight-semi-bold">
                               <asp:Label ID="lblUploadDocCertOfIncorpValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblGSTIN" runat="server" Text="<%$Resources:Resource1, ITPolicyViewGSTIN %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold text-uppercase">
                                <asp:Label ID="lblGSTINValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">
                                <asp:Label ID="lblIsGSTRegCertiUploaded" runat="server" Text="<%$Resources:Resource1, ITPolicyViewIsGSTRegCertiUploaded %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold text-uppercase">
                               <asp:Label ID="lblIsGSTRegCertiUploadedValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                               
                                <asp:Label ID="lblIsCACertiShareHolding" runat="server" Text="<%$Resources:Resource1, ITPolicyViewIsCACertiShareHolding %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold text-uppercase">
                               <asp:Label ID="lblIsCACertiShareHoldingValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                        </table>
                      </div> <!-- table-responsive ends -->
                    </div> <!-- form-container ends -->
                    <div class="clear"></div>
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
                            <td class="text-capitalize table-data-label">
                               <asp:Label ID="lblDirectorPromoterName" runat="server" Text="<%$Resources:Resource1, ITPolicyViewDirectorPromoterName %>"></asp:Label>

                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblDirectorPromoterNameValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">
                                <asp:Label ID="lblDirectorPromoterMobileNo" runat="server" Text="<%$Resources:Resource1, ITPolicyViewDirectorPromoterMobileNo %>"></asp:Label>

                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblDirectorPromoterMobileNoValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">
                                <asp:Label ID="lblDirectorPromoterEmailID" runat="server" Text="<%$Resources:Resource1, ITPolicyViewDirectorPromoterEmailID %>"></asp:Label>

                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblDirectorPromoterEmailIDValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">
                                <asp:Label ID="lblDirectorPromoterPANNo" runat="server" Text="<%$Resources:Resource1, ITPolicyViewDirectorPromoterPANNo %>"></asp:Label>

                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblDirectorPromoterPANNoValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblIsDirectorPromoterAddressSameAsCorres" runat="server" Text="<%$Resources:Resource1, ITPolicyViewIsDirectorPromoterAddressSameAsCorres %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblIsDirectorPromoterAddressSameAsCorresValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblDirectorPromoterAddress" runat="server" Text="<%$Resources:Resource1, ITPolicyViewDirectorPromoterAddress %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblDirectorPromoterAddressValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                        </table>
                      </div> <!-- table-responsive ends -->
                    </div> <!-- form-container ends -->
                    <div class="clear"></div>
                    <div class="position-relative table-container border-gamma mt-5">
                      <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                        <i class="far fa-id-badge"></i>
                      </div> <!-- form-title-icon ends -->
                      <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                        <span>Authorised Person Details</span>
                      </div> <!-- form-header-text ends -->
                      <div class="clear"></div>
                      <div class="table-responsive">
                        <table class="table table-bordered weight-medium">
                          <tr>
                            <td class="text-capitalize table-data-label">                               
                                <asp:Label ID="lblIsAuthorizeandApplicantSame" runat="server" Text="<%$Resources:Resource1, ITPolicyViewIsAuthorizeandApplicantSame %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblIsAuthorizeandApplicantSameValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblAuthorizePersonName" runat="server" Text="<%$Resources:Resource1, ITPolicyViewAuthorizePersonName %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblAuthorizePersonNameValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                          
                                <asp:Label ID="lblAuthorizePersonDesignation" runat="server" Text="<%$Resources:Resource1, ITPolicyViewAuthorizePersonDesignation %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblAuthorizePersonDesignationValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblAuthorizePersonMobileNo" runat="server" Text="<%$Resources:Resource1, ITPolicyViewAuthorizePersonMobileNo %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblAuthorizePersonMobileNoValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblAuthorizePersonEmailID" runat="server" Text="<%$Resources:Resource1, ITPolicyViewAuthorizePersonEmailID %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblAuthorizePersonEmailIDValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblIsAuthorizePersonPersonAddressSameCorresAddr" runat="server" Text="<%$Resources:Resource1, ITPolicyViewIsAuthorizePersonPersonAddressSameCorresAddr %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblIsAuthorizePersonPersonAddressSameCorresAddrValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblAuthorizePersonAddress" runat="server" Text="<%$Resources:Resource1, ITPolicyViewAuthorizePersonAddress %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblAuthorizePersonAddressValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                        </table>
                      </div> <!-- table-responsive ends -->
                    </div> <!-- form-container ends -->
                    <div class="position-relative table-container border-gamma mt-5">
                      <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                        <i class="fas fa-hands-helping"></i>
                      </div> <!-- form-title-icon ends -->
                      <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                        <span>Assistance Sought</span>
                      </div>  <!-- form-header-text ends -->
                      <div class="clear"></div>
                      <div class="table-responsive">
                        <table class="table table-bordered weight-medium">
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblAssistanceSoughtFor" runat="server" Text="<%$Resources:Resource1, ITPolicyViewAssistanceSoughtFor %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblAssistanceSoughtForValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                        </table>
                      </div> <!-- table-responsive ends -->
                    </div> <!-- form-container ends -->
                    <div class="clear"></div>
                    <div class="form-group">
                      <div class="form-header-text bg-delta border-delta weight-semi-bold text-md text-beta text-capitalize">
                        <span>Information For Unit Type</span>
                      </div> <!-- form-section ends -->
                    </div> <!-- col ends -->
                    <div class="clear"></div>
                    <!-- ---*---*---*--- 01. IT/ITeS Unit ---*---*---*--- -->
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
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblITeSUnitLocation" runat="server" Text="<%$Resources:Resource1, ITPolicyViewITeSUnitLocation %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblITeSUnitLocationValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblITeSUnitTentativeArea" runat="server" Text="<%$Resources:Resource1, ITPolicyViewITeSUnitTentativeArea %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblITeSUnitTentativeAreaValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                               
                                <asp:Label ID="lblITeSUnitTentativeInvestment" runat="server" Text="<%$Resources:Resource1, ITPolicyViewITeSUnitTentativeInvestment %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold"><i class="fas fa-rupee-sign"></i>&nbsp;
                                <span>0000</span>
                                <asp:Label ID="lblITeSUnitTentativeInvestmentValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblITeSUnitTentativeEmployment" runat="server" Text="<%$Resources:Resource1, ITPolicyViewITeSUnitTentativeEmployment %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblITeSUnitTentativeEmploymentValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">
                                
                                <asp:Label ID="lblITeSUnitType" runat="server" Text="<%$Resources:Resource1, ITPolicyViewITeSUnitType %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblITeSUnitTypeValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                        </table>
                      </div> <!-- table-responsive ends -->
                    </div> <!-- form-container ends -->
                    <div class="clear"></div>
                    <!-- ---*---*---*--- 02. IT/ITeS Park ---*---*---*--- -->
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
                            <td class="text-capitalize table-data-label">                               
                                <asp:Label ID="lblITeSParkLocation" runat="server" Text="<%$Resources:Resource1, ITPolicyViewITeSParkLocation %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblITeSParkLocationValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblITeSParkType" runat="server" Text="<%$Resources:Resource1, ITPolicyViewITeSParkType %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblITeSParkTypeValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblITeSParkArea" runat="server" Text="<%$Resources:Resource1, ITPolicyViewITeSParkArea %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblITeSParkAreaValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblITeSParkBuiltUpArea" runat="server" Text="<%$Resources:Resource1, ITPolicyViewITeSParkBuiltUpArea %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblITeSParkBuiltUpAreaValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblITeSParkProjectCost" runat="server" Text="<%$Resources:Resource1, ITPolicyViewITeSParkProjectCost %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold"><i class="fas fa-rupee-sign"></i>&nbsp;                               
                                <asp:Label ID="lblITeSParkProjectCostValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblITeSParkActivities" runat="server" Text="<%$Resources:Resource1, ITPolicyViewITeSParkActivities %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblITeSParkActivitiesValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                        </table>
                      </div> <!-- table-responsive ends -->
                    </div> <!-- form-container ends -->
                    <div class="clear"></div>
                    <!-- ---*---*---*--- 03. Research & Development Institution ---*---*---*--- -->
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
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblRnDLocation" runat="server" Text="<%$Resources:Resource1, ITPolicyViewRnDLocation %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblRnDLocationValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblRnDArea" runat="server" Text="<%$Resources:Resource1, ITPolicyViewRnDArea %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblRnDAreaValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblRnDProjectCost" runat="server" Text="<%$Resources:Resource1, ITPolicyViewRnDProjectCost %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold"><i class="fas fa-rupee-sign"></i>&nbsp;                                
                                <asp:Label ID="lblRnDProjectCostValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                               
                                <asp:Label ID="lblRnDActivities" runat="server" Text="<%$Resources:Resource1, ITPolicyViewRnDActivities %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblRnDActivitiesValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                        </table>
                      </div> <!-- table-responsive ends -->
                    </div> <!-- form-container ends -->
                    <div class="clear"></div>
                    <!-- ---*---*---*--- 04. Finishing School ---*---*---*--- -->
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
                            <td class="text-capitalize table-data-label">                               
                                <asp:Label ID="lblFSLocation" runat="server" Text="<%$Resources:Resource1, ITPolicyViewFSLocation %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblFSLocationValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblFSArea" runat="server" Text="<%$Resources:Resource1, ITPolicyViewFSArea %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblFSAreaValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblFSProjectCost" runat="server" Text="<%$Resources:Resource1, ITPolicyViewFSProjectCost %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold"><i class="fas fa-rupee-sign"></i>&nbsp;                                
                                <asp:Label ID="lblFSProjectCostValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblFSActivities" runat="server" Text="<%$Resources:Resource1, ITPolicyViewFSActivities %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblFSActivitiesValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                        </table>
                      </div> <!-- table-responsive ends -->
                    </div> <!-- form-container ends -->
                    <div class="clear"></div>
                    <!-- ---*---*---*--- 05. IT/ITeS Industry Association ---*---*---*--- -->
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
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblITIndusName" runat="server" Text="<%$Resources:Resource1, ITPolicyViewITIndusName %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblITIndusNameValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblITIndusDate" runat="server" Text="<%$Resources:Resource1, ITPolicyViewITIndusDate %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblITIndusDateValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                               
                                <asp:Label ID="lblITIndusExpenditure" runat="server" Text="<%$Resources:Resource1, ITPolicyViewITIndusExpenditure %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblITIndusExpenditureValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblITIndusAssistanceAvail" runat="server" Text="<%$Resources:Resource1, ITPolicyViewITIndusAssistanceAvail %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblITIndusAssistanceAvailValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblITIndusExhibitionDate" runat="server" Text="<%$Resources:Resource1, ITPolicyViewITIndusExhibitionDate %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblITIndusExhibitionDateValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblITIndusAmount" runat="server" Text="<%$Resources:Resource1, ITPolicyViewITIndusAmount %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold"><i class="fas fa-rupee-sign"></i>&nbsp;                                
                                <asp:Label ID="lblITIndusAmountValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                        </table>
                      </div> <!-- table-responsive ends -->
                    </div> <!-- form-container ends -->
                    <div class="clear"></div>
                    <!-- ---*---*---*--- 06. Contract / Sponsored Research Work ---*---*---*--- -->
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
                            <td class="text-capitalize table-data-label">                               
                                <asp:Label ID="lblSponsTopic" runat="server" Text="<%$Resources:Resource1, ITPolicyViewSponsTopic %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblSponsTopicValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblSponsOrg" runat="server" Text="<%$Resources:Resource1, ITPolicyViewSponsOrg %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblSponsOrgValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblSponsResearchDuration" runat="server" Text="<%$Resources:Resource1, ITPolicyViewSponsResearchDuration %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblSponsResearchDurationValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                               
                                <asp:Label ID="lblSponsResearchCost" runat="server" Text="<%$Resources:Resource1, ITPolicyViewSponsResearchCost %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold"><i class="fas fa-rupee-sign"></i>&nbsp;                                
                                <asp:Label ID="lblSponsResearchCostValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblSponsOrgNameAssist" runat="server" Text="<%$Resources:Resource1, ITPolicyViewSponsOrgNameAssist %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblSponsOrgNameAssistValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                        </table>
                      </div> <!-- table-responsive ends -->
                    </div> <!-- form-container ends -->
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
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblAssistAmountCapSub" runat="server" Text="<%$Resources:Resource1, ITPolicyViewAssistAmountCapSub %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold"><i class="fas fa-rupee-sign"></i>&nbsp;                                
                                <asp:Label ID="lblAssistAmountCapSubValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblAssistAmountStampDuty" runat="server" Text="<%$Resources:Resource1, ITPolicyViewAssistAmountStampDuty %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblAssistAmountStampDutyValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblAssistAmountLeaseRental" runat="server" Text="<%$Resources:Resource1, ITPolicyViewAssistAmountLeaseRental %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblAssistAmountLeaseRentalValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblAssistAmountIntSubsidy" runat="server" Text="<%$Resources:Resource1, ITPolicyViewAssistAmountIntSubsidy %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblAssistAmountIntSubsidyValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                 
                                <asp:Label ID="lblAssistAmountPowerTariff" runat="server" Text="<%$Resources:Resource1, ITPolicyViewAssistAmountPowerTariff %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblAssistAmountPowerTariffValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                               
                                <asp:Label ID="lblAssistAmountGST" runat="server" Text="<%$Resources:Resource1, ITPolicyViewAssistAmountGST %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblAssistAmountGSTValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                                
                                <asp:Label ID="lblAssistAmountEPF" runat="server" Text="<%$Resources:Resource1, ITPolicyViewAssistAmountEPF %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblAssistAmountEPFValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                          <tr>
                            <td class="text-capitalize table-data-label">                               
                                <asp:Label ID="lblAssistAmountQC" runat="server" Text="<%$Resources:Resource1, ITPolicyViewAssistAmountQC %>"></asp:Label>
                            </td>
                            <td class="weight-semi-bold">
                                <asp:Label ID="lblAssistAmountQCValue" runat="server" ></asp:Label>
                            </td>
                          </tr>
                        </table>
                      </div> <!-- table-responsive ends -->
                    </div> <!-- form-container ends -->
                    <div class="clear"></div>
                    <!-- ends -->
                  </div> <!-- col ends -->
                </div> <!-- row ends -->
              </section>
            </div> <!-- col ends -->
          </div> <!-- row ends -->
        </section>
      </div> <!-- col ends -->
    </asp:Content>