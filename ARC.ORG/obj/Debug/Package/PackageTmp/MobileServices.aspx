<%@ Page Title="Services Mobile Links" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="MobileServices.aspx.cs" Inherits="ARC.MobileServices" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div>
        <br />
        <br />
        <ul>
            <li><asp:HyperLink CssClass="yellow-text-underline" Font-Bold="True" runat="server" NavigateUrl="~/ServicesInformation.aspx">Information, Resources, and Referrals</asp:HyperLink></li>
            <li><asp:HyperLink ID="HyperLink1" CssClass="yellow-text-underline" Font-Bold="True" runat="server" NavigateUrl="~/ServicesParenttoParent.aspx">Parent-to-Parent</asp:HyperLink></li>
            <li><asp:HyperLink ID="HyperLink2" CssClass="yellow-text-underline" Font-Bold="True" runat="server" NavigateUrl="~/MobileSportsandFitness.aspx">Sports and Fitness</asp:HyperLink></li>
            <li><asp:HyperLink ID="HyperLink3" CssClass="yellow-text-underline" Font-Bold="True" runat="server" NavigateUrl="~/ServicesArcinRoundtheCommunity.aspx">Arcin Round The Community</asp:HyperLink></li>
            <li><asp:HyperLink ID="HyperLink4" CssClass="yellow-text-underline" Font-Bold="True" runat="server" NavigateUrl="~/ServicesInformation.aspx">Employment and Benefit Analysis</asp:HyperLink>
                <ul>
                    <li><asp:HyperLink ID="HyperLink5" CssClass="yellow-text-underline" Font-Bold="True" runat="server" NavigateUrl="~/Services.empbendescription.aspx">Description</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink6" CssClass="yellow-text-underline" Font-Bold="True" runat="server" NavigateUrl="~/Servicesemploymentanalysis.aspx">Employment Consulting</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink7" CssClass="yellow-text-underline" Font-Bold="True" runat="server" NavigateUrl="~/ServicesBenefitAnalysis.aspx">Benefit Consulting</asp:HyperLink></li>
                </ul>
            </li>
        </ul>
    </div>
</asp:Content>
