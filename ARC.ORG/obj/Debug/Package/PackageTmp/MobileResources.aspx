<%@ Page Title="Resources Mobile Links" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="MobileResources.aspx.cs" Inherits="ARC.MobileResources" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div>
        <br />
        <br />
        <ul>
            <li><asp:HyperLink ID="HyperLink3" CssClass="yellow-text-underline" Font-Bold="True" runat="server" NavigateUrl="~/ResourcesArcChapters.aspx">Arc Chapters</asp:HyperLink></li>
            <li><asp:HyperLink ID="HyperLink1" CssClass="yellow-text-underline" Font-Bold="True" runat="server" NavigateUrl="~/ResourcesLocalOrganizations.aspx">Local Resources</asp:HyperLink></li>
            <li><asp:HyperLink ID="HyperLink2" CssClass="yellow-text-underline" Font-Bold="True" runat="server" NavigateUrl="~/ResourcesGreatInformation.aspx">Other Information</asp:HyperLink></li>
        </ul>
    </div>
</asp:Content>
