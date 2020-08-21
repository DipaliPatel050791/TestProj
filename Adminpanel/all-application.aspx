<%@ Page Title="" Language="C#" MasterPageFile="~/Policy.master" AutoEventWireup="true" CodeFile="all-application.aspx.cs" Inherits="Adminpanel_all_application" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="container">
    <div class="row">
      <div class="col-12">
        <div class="page-header bg-delta border-delta position-relative">
          <div class="page-header-icon bg-gamma border-gamma position-absolute"><i class="fas fa-file-alt text-delta"></i></div>
          <div class="page-header-text weight-semi-bold text-beta text-lg text-capitalize">all applications</div>
        </div> <!-- page-header ends -->
      </div> <!-- col ends -->
    </div> <!-- row ends -->
     <div class="row row-offcanvas row-offcanvas-left">
      <div class="col-md-3 sidebar-offcanvas">
        <section>
         <div class="list-group">
                  <a href="dashboard-admin.html" class="list-group-item list-group-item-action text-sm">Dashboard</a>
            <a href="<%: ResolveUrl("~/Adminpanel/all-application.aspx")%>"  class="list-group-item list-group-item-action text-sm active">All Applications</a>
            <a href="<%: ResolveUrl("~/Adminpanel/MyApplications.aspx")%>" class="list-group-item list-group-item-action text-sm">My Applications</a>
            <a href="#" class="list-group-item list-group-item-action text-sm">Reports</a>
            <a href="user-management-admin.html" class="list-group-item list-group-item-action text-sm">User Management</a>
            <a href="#" class="list-group-item list-group-item-action text-sm">Empowered Committee</a>
            <a href="annexure-2a-admin.html" class="list-group-item list-group-item-action text-sm">Annexure-2A</a>
            <a href="annexure-4-admin.html" class="list-group-item list-group-item-action text-sm">Annexure-4</a>
            <a href="#" class="list-group-item list-group-item-action text-sm">Logout</a>
                     </div> <!-- list-group ends -->
         </section>
      </div> <!-- col ends -->
    <div class="col-md-9 canvas pt-3">
        <section>
            <div class="row no-gutters">
                <div class="col-12">
                    <div class="table-responsive">
                        <asp:GridView runat="server" AllowSorting="true"
                            CssClass="table table-bordered" ID="allApplicationsDataTable" AutoGenerateColumns="false">
                            <Columns>
                                <asp:TemplateField>
                                    <HeaderTemplate>
                                        sr
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <%# Container.DataItemIndex + 1 %>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                
                                <asp:BoundField DataField="RegNumber" HeaderText="Registration Number" />
                                <asp:BoundField DataField="EntityPan" HeaderText="Entity PAN" />
                                <asp:BoundField DataField="EntityName" HeaderText="Entity Name" />
                                <asp:BoundField DataField="EntityType" HeaderText="Entity Type" />
                                <asp:BoundField DataField="PolicyName" HeaderText="Policy name" />
                                
                                <asp:BoundField DataField="AppStatus" HeaderText="Application Status" />
                                <asp:BoundField DataField="ApplicationDate" HeaderText="Application Date" />
                                <asp:TemplateField>
                                    <HeaderTemplate>
                                        Action
                                    </HeaderTemplate>

                                    <ItemTemplate>
                                       <asp:LinkButton  runat="server"  CssClass="btn btn-outline-info btn-action" CommandArgument='<%# Eval("RegNumber") %>' OnCommand="LinkButton_Click" Text="<i class='fas fa-eye'></i><span>View</span>" > </asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>

                        <table class="table table-bordered" id="allApplicationsDataTable1" runat="server" visible="false">
                            <thead>
                                <tr>
                                    <th>Sr</th>
                                    <th>Registration Number</th>
                                    <th>Entity PAN</th>
                                    <th>Entity Name</th>
                                    <th>Entity Type</th>
                                    <th>Assistance Sought</th>
                                    <th>Application Status</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td class="text-uppercase">xx00yy11zz22</td>
                                    <td class="text-uppercase">lorem1234i</td>
                                    <td>Company Name Pvt. Ltd.</td>
                                    <td>partnership firm</td>
                                    <td>IT/ITeS Unit (New or Expansion / Diversification)</td>
                                    <td>completed</td>
                                    <td>
                                        <a href="#" type="button" class="btn btn-outline-info btn-action">
                                            <i class="fas fa-eye"></i><span>View</span>
                                        </a>
                                        <button type="button" class="btn btn-outline-success btn-action">
                                            <i class="fas fa-check"></i><span>Approve</span>
                                        </button>
                                        <button type="button" class="btn btn-outline-danger btn-action">
                                            <i class="fas fa-times"></i><span>Reject</span>
                                        </button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td class="text-uppercase">aa99bb88cc77</td>
                                    <td class="text-uppercase">ipsum5678l</td>
                                    <td>Business Name LLP</td>
                                    <td>LLP</td>
                                    <td>Research & Development Institution</td>
                                    <td>incomplete</td>
                                    <td>
                                        <a href="#" type="button" class="btn btn-outline-info btn-action">
                                            <i class="fas fa-eye"></i><span>View</span>
                                        </a>
                                        <button type="button" class="btn btn-outline-success btn-action">
                                            <i class="fas fa-check"></i><span>Approve</span>
                                        </button>
                                        <button type="button" class="btn btn-outline-danger btn-action">
                                            <i class="fas fa-times"></i><span>Reject</span>
                                        </button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <!-- table-responsive ends -->
                </div>
                <!-- col ends -->
            </div>
            <!-- row ends -->
        </section>
    </div>
    </div> <!-- row ends -->
  </div> <!-- container ends -->
</asp:Content>

