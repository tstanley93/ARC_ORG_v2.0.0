<%@ Page Title="Volunteer" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="GetInvolvedVolunteer.aspx.cs" Inherits="ARC.Volunteer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
 <div style="padding: 10px;">
      <h2> Volunteer Opportunities</h2>
      <br />
<h3>We encourage all people to volunteer.  The life skills and knowledge you gain by being a volunteer are priceless.  We have many different opportunities, but the current openings are listed below. Volunteers ages 14-17 may help in certain roles, but not in a chaperone capacity. Next to the title is duration of time and a brief job description. Training will be provided for all positions. For those people who volunteer we require that… </h3>
<ol>
<li><h3>Registration and Washington State Patrol Background be completed before participation.</h3></li>
<li><h3>A personal interview with the Volunteer Coordinator to discover your interests and find a place in The ArcGH that works for you.</h3></li>
<li><h3>Attended a half day Volunteer orientation training.  This will take a couple hours of your day, but will go over some vital information.  It will include what is expected out of volunteers, how to work with individual with developmental disabilities,  confidentiality agreements, paperwork that volunteers and participants must fill out, and so on.</h3></li>
</ol>
<h3 style="text-align: center">Thank you for your interest in The Arc of Grays Harbor!</h3>
<br />
<div align="center">
    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="yellow-text-underline" 
          NavigateUrl="~/images/SFForms/Volunteer Opportunities.pdf">IMMEDIATE OPENINGS</asp:HyperLink>
          <br /><br />
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/images/SFForms/Volunteer Registration Form-The Arc.pdf" CssClass="yellow-text-underline">The Arc Volunteer Application</asp:HyperLink>
    <br /><br />
    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/images/SFForms/WSP Background Check.pdf" CssClass="yellow-text-underline">WSP Background Check</asp:HyperLink>
</div>
    <br /><br />
 </div>
</asp:Content>
