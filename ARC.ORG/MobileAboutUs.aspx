<%@ Page Title="About Us Mobile Links" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="MobileAboutUs.aspx.cs" Inherits="ARC.MobileAboutUs" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div>
        <br />
        <br />
        <ul>
            <li><asp:HyperLink NavigateUrl="~/AboutusMission.aspx" runat="server" CssClass="yellow-text-underline" Font-Bold="True">Mission</asp:HyperLink></li>
            <li><asp:HyperLink runat="server" NavigateUrl="~/AboutUsHistory.aspx" CssClass="yellow-text-underline" Font-Bold="True">History</asp:HyperLink></li>
            <li><asp:HyperLink runat="server" NavigateUrl="~/Aboutusvision.aspx" CssClass="yellow-text-underline" Font-Bold="True">Vision</asp:HyperLink></li>
            <li><asp:HyperLink runat="server" NavigateUrl="~/AboutusCorevalues.aspx" CssClass="yellow-text-underline" Font-Bold="True">Core Values</asp:HyperLink></li>
            <li><asp:HyperLink runat="server" NavigateUrl="~/AboutusBoard.aspx" CssClass="yellow-text-underline" Font-Bold="True">Meet Our Board</asp:HyperLink></li>
            <li><asp:HyperLink runat="server" NavigateUrl="~/AboutUsStaff.aspx" CssClass="yellow-text-underline" Font-Bold="True">Meet Our Staf</asp:HyperLink></li>
        </ul>                
    </div>
</asp:Content>
