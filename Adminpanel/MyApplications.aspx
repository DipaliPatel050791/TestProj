<%@ Page Title="" Language="C#" MasterPageFile="~/Policy.master" AutoEventWireup="true" CodeFile="MyApplications.aspx.cs" Inherits="Adminpanel_MyApplications" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="col-md-9 canvas pt-3">
        <!-- ---*---*--- ADMIN PANEL VIEWPORT AREA STARTS ---*---*--- -->
        <div class="row no-gutters">
          <div class="col-12">
            <div class="table-responsive mb-3">
              <asp:GridView ID="grdApplication" runat="server" CssClass="table table-bordered" DataKeyNames="ApplicationID"   AutoGenerateColumns="False" AllowPaging="True" OnRowCommand="grdApplication_RowCommand">
                                          <Columns>

                            <asp:TemplateField HeaderText="ID" Visible="false">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_ID" runat="server" Text='<%#Eval("ApplicationID") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField HeaderText="Sr" >
                                <ItemTemplate>
                                    <asp:Label ID="lbl_id1" runat="server" Text='<%#Eval("SrNo") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                             <asp:TemplateField HeaderText="Registration Number">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_RegNo" runat="server" Text='<%#Eval("Registration_Number") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Entity PAN" ItemStyle-Width="80px">
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%# Eval("entity_pan") %>' ID="lblEntityPan">
                                    </asp:Label>
                                </ItemTemplate>

<ItemStyle Width="80px"></ItemStyle>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Entity Name" ItemStyle-Width="50px">
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%# Eval("entity_name") %>' ID="lblEntityName">
                                    </asp:Label>
                                </ItemTemplate>

<ItemStyle Width="50px"></ItemStyle>
                            </asp:TemplateField>


                            <asp:TemplateField HeaderText="Entity Type" ItemStyle-Width="50px">
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%# Eval("EntityType") %>' ID="lblEntityType">
                                    </asp:Label>
                                </ItemTemplate>

<ItemStyle Width="50px"></ItemStyle>
                            </asp:TemplateField>
                             <asp:TemplateField HeaderText="Policy Name" ItemStyle-Width="50px">
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%# Eval("PolicyName") %>' ID="lblPolicyName">
                                    </asp:Label>
                                </ItemTemplate>

<ItemStyle Width="50px"></ItemStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Application Date" ItemStyle-Width="50px">
                                <ItemTemplate>
                                    <asp:Label runat="server" Text='<%# Eval("ApplicationDate") %>' ID="lblApplicationDt">
                                    </asp:Label>
                                </ItemTemplate>

<ItemStyle Width="50px"></ItemStyle>
                            </asp:TemplateField>
                             <asp:TemplateField HeaderText="Application Status" >
                                <ItemTemplate>
                                    <asp:Label ID="lblApplStatus" runat="server" Text='<%#Eval("DisplayStatus") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ItemStyle-Width="90px" HeaderText="Action">
                                <ItemTemplate>
                                    <asp:Button ID="btnVerifyAnnexure1" runat="server" CommandArgument='<%# Eval("ApplicationID") %>'  Text ="Verify Annexure-1"
                                        CommandName="verifyannexure1" CssClass="btn btn-outline-success btn-action btn-130" Visible ='<%# Convert.ToBoolean(Eval("VerifyAnnexure1")) %>' />
                                   <asp:Button ID="btnSubmitAnnexure2" runat="server" CommandArgument='<%# Eval("ApplicationID") %>'  Text ="Submit Annexure-2"
                                        CommandName="submitAnnexure2" CssClass="btn btn-outline-primary btn-action btn-130" Visible ='<%# Convert.ToBoolean(Eval("SubmitAnnexure2")) %>' OnClick="btnSubmitAnnexure2_Click"/>
                                     <asp:Button ID="btnVerifyAnnexure3" runat="server" CommandArgument='<%# Eval("ApplicationID") %>'  Text ="Verify Annexure-3"
                                        CommandName="verifyannexure3" CssClass="btn btn-outline-success btn-action btn-130" Visible ='<%# Convert.ToBoolean(Eval("VerifyAnnexure3")) %>'/>
                                     <asp:Button ID="btnsubmitannexure4" runat="server" CommandArgument='<%# Eval("ApplicationID") %>'  Text ="Submit Annexure-4"
                                        CommandName="process" CssClass="btn btn-outline-primary btn-action btn-130" Visible ='<%# Convert.ToBoolean(Eval("SubmitAnnexure4")) %>'/>
                                     <asp:Button ID="btnsubmitannexure5" runat="server" CommandArgument='<%# Eval("ApplicationID") %>'  Text ="Submit Annexure-5"
                                        CommandName="process" CssClass="btn btn-outline-primary btn-action btn-130" Visible ='<%# Convert.ToBoolean(Eval("SubmitAnnexure5")) %>'/>
                                     <asp:Button ID="btnRaiseQuery" runat="server" CommandArgument='<%# Eval("ApplicationID") %>'  Text ="Raise Query"
                                        CommandName="process" CssClass="btn btn-outline-danger btn-action btn-130" Visible ="false"/>
                                </ItemTemplate>


<ItemStyle Width="90px"></ItemStyle>


                            </asp:TemplateField>

                           
                        </Columns>
                        <RowStyle CssClass="cursor-pointer" />

              </asp:GridView>
            </div> <!-- table-responsive ends -->
          </div> <!-- col ends -->
         <%-- <div class="col-12 ml-2 pr-2">
            <div class="position-relative zero-app-container border-dim-gray">
              <div class="position-absolute zero-app-icon border-dim-gray bg-white text-muted">
                <i class="far fa-frown"></i>
              </div> <!-- form-title-icon ends -->
              <div class="clear"></div>
              <div class="weight-semi-bold text-md text-muted">There is no any application in your bucket.</div>
            </div> <!-- form-container ends -->
          </div> <!-- col ends -->--%>
        </div> <!-- row ends -->
        <!-- ---*---*--- ADMIN PANEL VIEWPORT AREA ENDS ---*---*--- -->
      </div>
</asp:Content>

