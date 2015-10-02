<%@ Page Title="You Can Help Mobile Links" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="MobileYouCanHelp.aspx.cs" Inherits="ARC.MobileYouCanHelp" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div>
        <br />
        <br />
        <ul>
            <li><asp:HyperLink CssClass="yellow-text-underline" NavigateUrl="~/GetinvolvedPartnerships.aspx" runat="server" Font-Bold="True">Give A Gift</asp:HyperLink></li>
            <li><asp:HyperLink CssClass="yellow-text-underline" NavigateUrl="~/GetInvolvedVolunteer.aspx" runat="server" Font-Bold="True">Volunteer</asp:HyperLink></li>
        </ul>
    </div>
</asp:Content>
