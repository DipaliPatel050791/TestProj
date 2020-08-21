<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PolicyManagement._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <section>
    <div class="container">
      <div class="row">
        <div class="col-sm-8 offset-sm-2 col-md-6 offset-md-0 col-lg-5 offset-lg-1 col-xl-5 offset-xl-1">
          <div class="card mb-4">
            <img src="images/it.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title text-lg">IT/ITeS Policy (2016-21)</h5>
              <a href="PolicyDetails/IT_Policy_Detail.aspx" class="card-link">Read Policy</a>
              <a href="/Account/Register.aspx" class="card-link">Apply Now</a>
            </div> <!-- card-body ends -->
          </div> <!-- card ends -->
        </div> <!-- col ends -->
        <div class="col-sm-8 offset-sm-2 col-md-6 offset-md-0 col-lg-5 offset-lg-0 col-xl-5 offset-xl-0">
          <div class="card mb-4">
            <img src="images/ec.jpg" class="card-img-top" alt="Electronics Policy (2016-21)">
            <div class="card-body">
              <h5 class="card-title text-lg">Electronics Policy (2016-21)</h5>
              <a href="PolicyDetails/Electronics_Policy_Detail.aspx" class="card-link">Read Policy</a>
              <a href="/Account/Register.aspx" class="card-link">Apply Now</a>
            </div> <!-- card-body ends -->
          </div> <!-- card ends -->
        </div> <!-- col ends -->
        <div class="col-sm-8 offset-sm-2 col-md-6 offset-md-0 col-lg-5 offset-lg-1 col-xl-5 offset-xl-1">
          <div class="card mb-4">
            <img src="images/startup.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title text-lg">New Startup/Innovation Policy (2016-21)</h5>
              <a href="PolicyDetails/StartUp_Policy_Detail.aspx" class="card-link">Read Policy</a>
              <a href="/Account/Register.aspx" class="card-link">Apply Now</a>
            </div> <!-- card-body ends -->
          </div> <!-- card ends -->
        </div> <!-- col ends -->
        <div class="col-sm-8 offset-sm-2 col-md-6 offset-md-0 col-lg-5 offset-lg-0 col-xl-5 offset-xl-0">
          <div class="card mb-4">
            <img src="images/bt.jpg" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title text-lg">Biotechnology Policy (2016-21)</h5>
              <a href="PolicyDetails/BioTechnology_Policy_Detail.aspx" class="card-link">Read Policy</a>
              <a href="/Account/Register.aspx" class="card-link">Apply Now</a>
            </div> <!-- card-body ends -->
          </div> <!-- card ends -->
        </div> <!-- col ends -->
      </div> <!-- row ends -->
    </div> <!-- container ends -->
  </section>
   
</asp:Content>
