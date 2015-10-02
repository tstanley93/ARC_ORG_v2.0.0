<%@ Page Title="ARC Services" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="ARC.Services" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div style="text-align: center">
        <h1><asp:Label ID="Label1" runat="server" Text="Welcome to Our Services"></asp:Label></h1>
    </div>
    <br />
    <br />
    <div style="margin-left: 15px">
        <h3><asp:Label ID="Label2" runat="server" Text="Please click on a link below to learn more about the services that we provide."></asp:Label></h3>
        <br />
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" 
            Font-Size="Large" 
            CssClass="yellow-text-underline" 
            PostBackUrl="~/ServicesInformation.aspx">Information:</asp:LinkButton>
        <br />
        <br />
        <asp:LinkButton ID="LinkButton2" runat="server" 
            Font-Size="Large" 
            CssClass="yellow-text-underline" 
            PostBackUrl="~/ServicesResources.aspx">Resources:</asp:LinkButton>
        <br />
        <br />
        <asp:LinkButton ID="LinkButton3" runat="server" 
            Font-Size="Large" 
            CssClass="yellow-text-underline" 
            PostBackUrl="~/ServicesReferrals.aspx">Referrals:</asp:LinkButton>
        <br />
        <br />
        <asp:LinkButton ID="LinkButton4" runat="server" 
            Font-Size="Large" 
            CssClass="yellow-text-underline" 
            PostBackUrl="~/ServicesParenttoParent.aspx">Parent-to-Parent:</asp:LinkButton>
        <br />
        <br />
        <asp:LinkButton ID="LinkButton5" runat="server" 
            Font-Size="Large" 
            PostBackUrl="~/SportsandFitness/SportsandFitness.aspx" 
            CssClass="yellow-text-underline">Sports & Fitness:</asp:LinkButton>
        <br />
        <br />
        <asp:LinkButton ID="LinkButton6" runat="server" 
            Font-Size="Large" 
            CssClass="yellow-text-underline" 
            PostBackUrl="~/ServicesArcin'RoundtheCommunity.aspx">Arcin' Round the Community:</asp:LinkButton>
        <br />
        <br />
    </div>
</asp:Content>
