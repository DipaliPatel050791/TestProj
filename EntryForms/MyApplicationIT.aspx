<%@ Page Language="C#" MasterPageFile="~/Policy.master" AutoEventWireup="true" CodeFile="MyApplicationIT.aspx.cs" Inherits="EntryForms_MyApplicationIT" %>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
     <div class="col-md-9 canvas">
        <section class="mt-3 ml-2">
             <asp:Repeater runat="server" ID="RepterDetails">
            <HeaderTemplate>
                
                    </HeaderTemplate>
            <ItemTemplate>
          <div class="row no-gutters">
            <div class="col-12">
              <div class="position-relative myapps-container border-gamma">
                <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                 <%-- <span>1</span>--%>
                    <%--<asp:Label ID="lblSrNoValue" runat="server" ></asp:Label>--%>
                    <asp:Label ID="lblSrNoValue" runat="server"  class="text-alpha text-uppercase" Text='<%#Eval("SrNo") %>' />  
                </div> <!-- form-title-icon ends -->
                <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                  <%--<span>registration number:</span>&nbsp;--%>
                    <asp:Label ID="lblRegistrationNo" runat="server" Text="Registration Number:"></asp:Label>
                    <%--<span class="text-alpha text-uppercase">xx00yy11zz22</span>--%>
                    <%--<asp:Label ID="lblRegistrationNoValue" runat="server" class="text-alpha text-uppercase"></asp:Label>--%>
                    <asp:Label ID="lblRegistrationNoValue" runat="server"  class="text-alpha text-uppercase" Text='<%#Eval("registration_number") %>' />  
                </div>
                <div class="clear"></div>
                  <asp:HiddenField ID="hdnAnexureID" value='<%#Eval("AnnexureID") %>'  runat ="server"/>
                  <asp:HiddenField ID="hdnAnnexure3Id" value='<%#Eval("Annexure3Id") %>'  runat ="server"/>
                  <asp:HiddenField  ID="hdnApplicationID" value='<%#Eval("ApplicationID") %>' runat ="server"/>
                <div class="table-responsive">
                   
                  <table class="table table-borderless text-sm">
                      <tr id="trApplicantId" runat="server" visible="false">
                          <td>
                              <asp:Label ID="lblApplicantID" runat="server"></asp:Label>
                          </td>
                          <td>
                             <%-- <asp:Label ID="lblApplicantIDValue" runat="server"></asp:Label>--%>
                               <asp:Label ID="lblApplicantIDValue" runat="server"  class="border-b-grey" Text='<%#Eval("ApplicantID") %>' />  
                          </td>
                      </tr>
                    <tr>
                      <td class="weight-medium">
                          <%--Entity PAN:--%>
                          <asp:Label ID="lblEntityPAN" runat="server" Text="Entity PAN:"></asp:Label>
                      </td>
                      <td class="weight-semi-bold text-uppercase">
                        <%--<span class="border-b-grey"> lorem1234i </span>--%>
                          <%--<asp:Label ID="lblEntityPANValue" runat="server" class="border-b-grey" ></asp:Label>--%>
                          <asp:Label ID="lblEntityPANValue" runat="server"  class="border-b-grey" Text='<%#Eval("entity_pan") %>' />  
                      </td>
                    </tr>
                    <tr>
                      <td class="weight-medium">
                          <%--Entity Name:--%>
                          <asp:Label ID="lblEntityName" runat="server" Text="Entity Name:"></asp:Label>
                      </td>
                      <td class="weight-semi-bold">
                       <%-- <span class="border-b-grey text-uppercase">Company Name Pvt. Ltd.</span>--%>
                          <%--<asp:Label ID="lblEntityNameValue" runat="server" class="border-b-grey text-uppercase" ></asp:Label>--%>
                            <asp:Label ID="lblEntityNameValue" runat="server"  class="border-b-grey text-uppercase" Text='<%#Eval("entity_name") %>' />  
                      </td>
                    </tr>
                    <tr>
                      <td class="weight-medium">
                         <%-- Entity Type:--%>
                          <asp:Label ID="lblEntityType" runat="server" Text="Entity Type:"></asp:Label>
                      </td>
                      <td class="weight-semi-bold text-uppercase">
                        <%--<span class="border-b-grey">partnership firm</span>--%>
                         <%-- <asp:Label ID="lblEntityTypeValue" runat="server" class="border-b-grey" ></asp:Label>--%>
                          <asp:Label ID="lblEntityTypeValue" runat="server"  class="border-b-grey" Text='<%#Eval("EntityType") %>' />  
                      </td>
                    </tr>
                    <tr>
                      <td class="weight-medium">
                         <%-- Application Status:--%>
                          <asp:Label ID="lblApplicationStatus" runat="server" Text="Application Status:"></asp:Label>
                      </td>
                      <td class="weight-semi-bold text-capitalize">
                       <%-- <span class="badge badge-pill badge-success text-uppercase">completed</span>--%>
                          <%--<asp:Label ID="lblApplicationStatusValue" runat="server" class="badge badge-pill badge-success text-uppercase" ></asp:Label>--%>
                          <asp:Label ID="lblApplicationStatusValue" runat="server"  class="badge badge-pill badge-success text-uppercase" Text='<%#Eval("Status") %>' />  
                      </td>
                    </tr>
                     </table>
                </div> <!-- table-responsive ends -->
                <div class="clear mb-3"></div>
                <div class="text-left">

                    <asp:LinkButton runat="server" ID="btnViewApplication" class="btn btn-primary" Visible='<%# Convert.ToBoolean(Eval("VisibleView")) %>'>
  <i class="far fa-eye"></i>  View Application
                    </asp:LinkButton>



                 <%--   <button runat="server" id="btnView" class="btn btn-primary" title="View Application" Visible='<%#Eval("VisibleView") %>>'>
    <i class="far fa-eye"></i> View Application
</button>--%>

                  <%--<a href="view-application.html" type="button" class="btn btn-primary"><i class="far fa-eye"></i> <span>View Annexure-1</span></a>--%>
                   <%-- <i class="far fa-eye"></i>
                    <asp:Button runat="server" ID="btnView" Text="<i class='far fa-eye'></i> View Appliaction" TabIndex="13" class="btn btn-primary" />--%>
                     
                  <%--<button type="button" class="btn btn-secondary"><i class="far fa-edit"></i> <span>Edit Application</span></button> --%>


                    <asp:LinkButton runat="server" ID="btnEditApplication" class="btn btn-secondary" OnClick="btnEditApplication_Click" Visible='<%#  Convert.ToBoolean(Eval("VisibleEdit")) %>'>
  <i class="far fa-edit" aria-hidden="true"></i>  Edit Annexure-1 
</asp:LinkButton>

                    <asp:LinkButton runat="server" ID="btnEditAnnexure3" class="btn btn-secondary" OnClick="btnEditAnnexure3_Click"  Visible='<%#  Convert.ToBoolean(Eval("VisibleEditAnnexure3")) %>'>
  <i class="far fa-edit" aria-hidden="true"></i>  Edit Annexure-3 
</asp:LinkButton>

                    <%--<button runat="server" id="btnEditApplication" class="btn btn-secondary" title="Edit Application" OnClick="btnEditApplication_Click">
    <i class="far fa-edit"></i>Edit Application
</button>--%>


                   <%-- <i class="far fa-edit"></i>
                    <asp:Button runat="server" ID="btnEditApplication" Text="Edit Application" TabIndex="13" class="btn btn-secondary" OnClick="btnEditApplication_Click" ValidationGroup="Save" />
                    --%>
                </div>
              </div> <!-- form-container ends -->
            </div> <!-- col ends -->
           <%-- <div class="col-12">
              <div class="position-relative myapps-container border-gamma">
                <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                  <span>2</span>
                </div> <!-- form-title-icon ends -->
                <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                  <span>registration number:</span>&nbsp;<span class="text-alpha text-uppercase">a</span>
                </div>
                <div class="clear"></div>
                Lorem Ipsum
              </div> <!-- form-container ends -->
            </div> <!-- col ends -->--%>
          </div> <!-- row ends -->
         </ItemTemplate>
            <FooterTemplate>
                
                </FooterTemplate>
</asp:Repeater>
       
        </section>
      </div> <!-- col ends -->
</asp:Content>