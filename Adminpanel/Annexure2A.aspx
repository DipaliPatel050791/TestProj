<%@ Page Title="" Language="C#" MasterPageFile="~/Policy.master" AutoEventWireup="true" CodeFile="Annexure2A.aspx.cs" Inherits="Adminpanel_Annexure2A" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="col-md-9 canvas pt-3 pr-4 pb-4 pl-4">
        <!-- ---*---*--- ADMIN PANEL VIEWPORT AREA STARTS ---*---*--- -->

        <div class="position-relative table-container border-gamma">
            <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                <i class="far fa-file-alt"></i>

            </div>
            <!-- form-title-icon ends -->
            <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                <span>application details</span>
            </div>
            <!-- form-header-text ends -->
            <div class="clear"></div>
            <div class="table-responsive">
                <table class="table table-bordered weight-medium">
                    <tr>
                        <td class="text-capitalize table-data-label">Registration Number</td>
                        <td class="weight-semi-bold text-uppercase">
                            <asp:Label runat="server" ID="lblRegNo"></asp:Label></td>
                    </tr>
                    <tr>
                        <td class="text-capitalize table-data-label">Entity PAN</td>
                        <td class="weight-semi-bold text-uppercase">
                            <asp:Label runat="server" ID="lblEntityPAN"></asp:Label></td>
                    </tr>
                    <tr>
                        <td class="text-capitalize table-data-label">Entity Name</td>
                        <td class="weight-semi-bold text-uppercase">
                            <asp:Label runat="server" ID="lblEntityName"></asp:Label></td>
                    </tr>
                    <tr>
                        <td class="text-capitalize table-data-label">Entity Type</td>
                        <td class="weight-semi-bold text-uppercase">
                            <asp:Label runat="server" ID="lblEntityType"></asp:Label></td>
                    </tr>
                </table>
            </div>
            <!-- table-responsive ends -->
        </div>
        <!-- form-container ends -->
        <div class="clear"></div>
        <div class="position-relative table-container border-gamma mt-5">
            <div class="position-absolute form-title-icon border-gamma bg-white weight-semi-bold text-beta">
                <i class="fas fa-user-edit"></i>
            </div>
            <!-- form-title-icon ends -->
            <div class="position-absolute form-header-text bg-white border-gamma weight-semi-bold text-md text-beta text-capitalize">
                <span>scrutiny details</span>
            </div>
            <!-- form-header-text ends -->
            <div class="clear"></div>
            <div class="table-responsive mb-2">
                <table class="table table-bordered weight-medium">
                    <tr>
                        <td class="text-capitalize table-data-label">Recommendation For</td>
                        <td class="weight-semi-bold text-uppercase">
                            <div class="form-check form-check-inline">

                                <asp:RadioButtonList ID="rdRecommend" runat="server" class="form-check-input" Font-Bold="True" RepeatDirection="Horizontal" AutoPostBack="true" OnSelectedIndexChanged="rdRecommend_SelectedIndexChanged">
                                    <asp:ListItem Text="approval" Value="a" Selected="True"></asp:ListItem>
                                    <asp:ListItem Text="refusal" Value="r"></asp:ListItem>
                                </asp:RadioButtonList>

                                <%--  <input class="form-check-input" type="radio" name="recommendations" id="approval" value="approval" checked>
                      <label class="form-check-label text-md weight-semi-bold text-uppercase text-success" for="approval">approval</label>--%>
                            </div>
                            <!-- form-check ends -->

                        </td>
                    </tr>
                </table>
            </div>
            <!-- table-responsive ends -->
            <!-- below section will be hidden in case of refusal -->
            <div class="clear"></div>

            <div runat="server" id="divAssistance">

                <div class="row no-gutters mb-2">
                    <div runat="server" id="div">
                        <div class="col-12 weight-medium text-sm">
                            <table class="table table-bordered table-striped annex-2-draft-table">
                                <tr>
                                    <th>Sr.</th>
                                    <th>Assistance Details</th>
                                </tr>

                                <asp:Repeater runat="server" ID="RepterDetails">
                                    <HeaderTemplate>
                                    </HeaderTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lblIncentiveID" runat="server" Text='<%#Eval("incentive_id") %>' Visible="false"></asp:Label>

                                        <tr>
                                            <td>
                                                <asp:Label ID="lblSrNo" runat="server" Text='<%#Eval("srNo") %>'></asp:Label></td>
                                            <td>

                                                <div class="row">
                                                    <div class="col-lg-6">
                                                        <div class="text-xs text-beta">Assistance Type:</div>
                                                        <div class="text-md weight-bold">
                                                            <asp:Label ID="lblAssistanceName" runat="server" Text='<%#Eval("incentive_name") %>'></asp:Label></div>
                                                    </div>
                                                    <!-- col ends -->
                                                    <div class="col-lg-6">
                                                        <hr class="hr-one mt-2 d-lg-none">
                                                        <!-- 576 768 -->
                                                        <div class="text-xs text-beta">Assistance Sought by Applicant:</div>
                                                        <div class="text-md weight-bold">
                                                            <asp:Label ID="lblAssistanceByApplicant" runat="server" Text='<%#Eval("AssistanceAmount") %>'></asp:Label></div>
                                                    </div>
                                                    <!-- col ends -->
                                                    <div class="col-lg-6">
                                                        <hr class="hr-one">
                                                        <div class="text-xs text-beta">Indicative Eligible Amount Of Assistance:</div>
                                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                            <ContentTemplate>
                                                                <asp:TextBox ID="txtCapitalByExe" runat="server" class="form-control mt-1 mr-3" TextMode="MultiLine" Text='<%#Eval("CapitalByExe") %>'></asp:TextBox>
                                                            </ContentTemplate>
                                                            <Triggers>
                                                                <asp:AsyncPostBackTrigger ControlID="rdlCapitalConsidered" EventName="SelectedIndexChanged" />
                                                            </Triggers>
                                                        </asp:UpdatePanel>
                                                        <%--   <textarea class="form-control mt-1 mr-3" rows="4"></textarea> --%>
                                                        <%-- <small id="" class="text-danger weight-semi-bold">Error message</small>--%>
                                                    </div>
                                                    <!-- col ends -->
                                                    <div class="col-lg-6">
                                                        <hr class="hr-one">
                                                        <div class="text-xs text-beta">Executive Remarks:</div>

                                                        <asp:TextBox ID="txtCapitalRemarks" runat="server" class="form-control mt-1 mr-3" TextMode="MultiLine" placeholder="Remarks" Text='<%#Eval("CapitalRemarks") %>'></asp:TextBox>
                                                        <%-- <textarea class="form-control mt-1 mb-1" rows="4" placeholder="Remarks"></textarea>--%>
                                                    </div>
                                                    <!-- col ends -->
                                                    <div class="col-lg-12 text-right">
                                                        <hr class="hr-one">
                                                        <div class="form-check form-check-inline">
                                                            <asp:UpdatePanel ID="upradio" runat="server">
                                                                <ContentTemplate>
                                                                    <asp:RadioButtonList ID="rdlCapitalConsidered" runat="server" class="form-check-input" Font-Bold="True" RepeatDirection="Horizontal" AutoPostBack="true">
                                                                        <asp:ListItem Text="considered" Value="c"></asp:ListItem>
                                                                        <asp:ListItem Text="not considered" Value="n" Selected="True"></asp:ListItem>
                                                                    </asp:RadioButtonList>
                                                                </ContentTemplate>
                                                            </asp:UpdatePanel>

                                                            <%-- <input class="form-check-input" type="radio" name="consideration1" id="considered1" value="considered" checked>
                            <label class="form-check-label text-sm weight-semi-bold text-capitalize text-success" for="considered1">considered</label>--%>
                                                        </div>
                                                        <!-- form-check ends -->
                                                        <%-- <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="consideration1" id="not-considered1" value="not-considered">
                            <label class="form-check-label text-sm weight-semi-bold text-capitalize text-danger" for="not-considered1">not considered</label>
                          </div> <!-- form-check ends -->--%>
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



                                <%--  <tr>
                    <td>02</td>
                    <td>
                      <div class="row">
                        <div class="col-lg-6">
                          <div class="text-xs text-beta">Assistance Type:</div>
                          <div class="text-md weight-bold">Reimbursement of Stamp Duty/ Registration Fee</div>
                        </div> <!-- col ends -->
                        <div class="col-lg-6">
                          <hr class="hr-one mt-2 d-lg-none"> <!-- 576 768 -->
                          <div class="text-xs text-beta">Assistance Sought by Applicant:</div>
                          <div class="text-md weight-bold">000000</div>
                        </div> <!-- col ends -->
                        <div class="col-lg-6">
                          <hr class="hr-one">
                          <div class="text-xs text-beta">Indicative Eligible Amount Of Assistance:</div>
                          <textarea class="form-control mt-1 mr-3" rows="4"></textarea> 
                          <small id="" class="text-danger weight-semi-bold">Error message</small>
                        </div> <!-- col ends -->
                        <div class="col-lg-6">
                          <hr class="hr-one">
                          <div class="text-xs text-beta">Executive Remarks:</div>
                          <textarea class="form-control mt-1 mb-1" rows="4" placeholder="Remarks"></textarea>
                        </div> <!-- col ends -->
                        <div class="col-lg-12 text-right">
                          <hr class="hr-one">
                          <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="consideration2" id="considered2" value="considered" checked>
                            <label class="form-check-label text-sm weight-semi-bold text-capitalize text-success" for="considered2">considered</label>
                          </div> <!-- form-check ends -->
                          <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="consideration2" id="not-considered2" value="not-considered">
                            <label class="form-check-label text-sm weight-semi-bold text-capitalize text-danger" for="not-considered2">not considered</label>
                          </div> <!-- form-check ends -->
                        </div> <!-- col ends -->
                      </div> <!-- row ends -->
                    </td>
                  </tr>
                  <tr>
                    <td>03</td>
                    <td>
                      <div class="row">
                        <div class="col-lg-6">
                          <div class="text-xs text-beta">Assistance Type:</div>
                          <div class="text-md weight-bold">Lease Rental Subsidy</div>
                        </div> <!-- col ends -->
                        <div class="col-lg-6">
                          <hr class="hr-one mt-2 d-lg-none"> <!-- 576 768 -->
                          <div class="text-xs text-beta">Assistance Sought by Applicant:</div>
                          <div class="text-md weight-bold">000000</div>
                        </div> <!-- col ends -->
                        <div class="col-lg-6">
                          <hr class="hr-one">
                          <div class="text-xs text-beta">Indicative Eligible Amount Of Assistance:</div>
                          <textarea class="form-control mt-1 mr-3" rows="4"></textarea> 
                          <small id="" class="text-danger weight-semi-bold">Error message</small>
                        </div> <!-- col ends -->
                        <div class="col-lg-6">
                          <hr class="hr-one">
                          <div class="text-xs text-beta">Executive Remarks:</div>
                          <textarea class="form-control mt-1 mb-1" rows="4" placeholder="Remarks"></textarea>
                        </div> <!-- col ends -->
                        <div class="col-lg-12 text-right">
                          <hr class="hr-one">
                          <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="consideration3" id="considered3" value="considered" checked>
                            <label class="form-check-label text-sm weight-semi-bold text-capitalize text-success" for="considered3">considered</label>
                          </div> <!-- form-check ends -->
                          <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="consideration3" id="not-considered3" value="not-considered">
                            <label class="form-check-label text-sm weight-semi-bold text-capitalize text-danger" for="not-considered3">not considered</label>
                          </div> <!-- form-check ends -->
                        </div> <!-- col ends -->
                      </div> <!-- row ends -->
                    </td>
                  </tr>
                  <tr>
                    <td>04</td>
                    <td>
                      <div class="row">
                        <div class="col-lg-6">
                          <div class="text-xs text-beta">Assistance Type:</div>
                          <div class="text-md weight-bold">Power Tariff and Electricity Duty</div>
                        </div> <!-- col ends -->
                        <div class="col-lg-6">
                          <hr class="hr-one mt-2 d-lg-none"> <!-- 576 768 -->
                          <div class="text-xs text-beta">Assistance Sought by Applicant:</div>
                          <div class="text-md weight-bold">000000</div>
                        </div> <!-- col ends -->
                        <div class="col-lg-6">
                          <hr class="hr-one">
                          <div class="text-xs text-beta">Indicative Eligible Amount Of Assistance:</div>
                          <textarea class="form-control mt-1 mr-3" rows="4"></textarea> 
                          <small id="" class="text-danger weight-semi-bold">Error message</small>
                        </div> <!-- col ends -->
                        <div class="col-lg-6">
                          <hr class="hr-one">
                          <div class="text-xs text-beta">Executive Remarks:</div>
                          <textarea class="form-control mt-1 mb-1" rows="4" placeholder="Remarks"></textarea>
                        </div> <!-- col ends -->
                        <div class="col-lg-12 text-right">
                          <hr class="hr-one">
                          <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="consideration4" id="considered4" value="considered" checked>
                            <label class="form-check-label text-sm weight-semi-bold text-capitalize text-success" for="considered4">considered</label>
                          </div> <!-- form-check ends -->
                          <div class="form-check form-check-inline">
                            <input class="form-check-input" type="radio" name="consideration4" id="not-considered4" value="not-considered">
                            <label class="form-check-label text-sm weight-semi-bold text-capitalize text-danger" for="not-considered4">not considered</label>
                          </div> <!-- form-check ends -->
                        </div> <!-- col ends -->
                      </div> <!-- row ends -->
                    </td>
                  </tr>--%>
                            </table>
                        </div>
                        <!-- col ends -->
                    </div>
                </div>
                <!-- row ends -->
                <!-- above section will be hidden in case of refusal -->
                <div class="clear"></div>
            </div>

            <div class="row no-gutters">
                <div class="col-12">
                    <div class="weight-medium">Approval / Refusal Remarks:</div>
                    <asp:TextBox runat="server" ID="txtFinalRemarks" placeholder="Remarks" TextMode="MultiLine" CssClass="form-control mt-2"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="reqFinalRemarks" ControlToValidate="txtFinalRemarks" ValidationGroup="Annexure2A" ErrorMessage="Enter Remarks" Display="Dynamic"></asp:RequiredFieldValidator>
                    <%-- <textarea class="form-control mt-2" rows="3" placeholder="Remarks"></textarea>--%>
                    <small id="" class="text-danger weight-semi-bold">Required</small>
                </div>
                <!-- col ends -->
            </div>
            <!-- row ends -->
        </div>
        <!-- table-container ends -->
        <div class="clear"></div>
        <div id="divDirectorRemarks" runat="server" visible="false">

            <div class="row no-gutters">
                <div class="col-12">
                    <h5 class="text-capitalize"><span class="text-md">Remarks By Director Sir</span> &bull; 
                <span class="text-beta">Reviewed On: </span>
                        <span class="text-beta">01-01-2020</span>
                    </h5>
                    <p class="text-justify">Praesent accumsan in metus non vehicula. Curabitur sit amet urna urna. In vel lectus magna. Nulla cursus consectetur purus, et viverra massa sollicitudin quis. Donec non orci tincidunt, pulvinar dolor quis, lacinia ante. Duis id scelerisque ligula. Vestibulum convallis urna in neque laoreet, non aliquam erat volutpat. Ut rutrum justo vitae lobortis gravida.</p>
                </div>
                <!-- col ends -->
            </div>
            <!-- row ends -->

        </div>
        <div class="row" id="divMsg" runat="server" visible="false">
            <div class="col-12 col-md-10 offset-md-1 col-lg-10 offset-lg-1 col-xl-8 offset-xl-2">
                <div class="alert alert-success" role="alert">
                    <h4 class="alert-heading">Well done!</h4>
                    <div>The data on this page submitted successfully.</div>
                </div>
                <!-- alert alert-success ends -->
            </div>
            <!-- col ends -->
        </div>
        <!-- row ends -->

        <div class="text-right">
            <input type="reset" class="btn btn-outline-secondary" value="Reset Form">
            <asp:Button runat="server" ID="btnSave" Text="Submit To Director" CssClass="btn btn-secondary" OnClick="btnSave_Click" ValidationGroup="Annexure2A" />
            <%--  <input type="button" class="btn btn-secondary" value="Save As Draft">--%>

            <asp:Button runat="server" ID="btnSubmit" Text="Submit To Director" CssClass="btn btn-primary" Visible="false" />

            <%-- <input type="button" class="btn btn-primary" value="Submit To Director" data-toggle="modal" data-target="#confirmActionPopup">--%>
        </div>
        <!-- text-right ends -->


        <!-- ---*---*--- ADMIN PANEL VIEWPORT AREA ENDS ---*---*--- -->
    </div>
    <!-- col ends -->
</asp:Content>

