<%@ Page Title="Sports and Fitness Mobile Links" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="MobileSportsandFitness.aspx.cs" Inherits="ARC.MobileSportsandFitness" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div>
        <br />
        <br />
        <ul>
            <li><asp:HyperLink ID="HyperLink1" CssClass="yellow-text-underline" Font-Bold="True" runat="server" NavigateUrl="~/SportsandFitness/SportsandFitness.aspx">Mission</asp:HyperLink></li>
            <li><asp:Label CssClass="yellow-text-regular" Font-Bold="True" runat="server">Sports Teams</asp:Label>
                <ul>
                    <li><asp:HyperLink ID="HyperLink3" CssClass="yellow-text-underline" Font-Bold="True" runat="server" NavigateUrl="~/SportsandFitness/oursports.aspx">Teams</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink2" CssClass="yellow-text-underline" Font-Bold="True" runat="server" NavigateUrl="~/SportsandFitness/Winter_Sports.aspx">Winter Sports</asp:HyperLink></li>
                    <li><asp:Label CssClass="yellow-text-regular" Font-Bold="True" runat="server">Spring Sports</asp:Label>
                        <ul>
                            <li><asp:HyperLink ID="HyperLink4" CssClass="yellow-text-underline" Font-Bold="True" runat="server" NavigateUrl="~/SportsandFitness/TrackandField.aspx">Track and Field</asp:HyperLink></li>
                            <li><asp:HyperLink ID="HyperLink5" CssClass="yellow-text-underline" Font-Bold="True" runat="server" NavigateUrl="~/SportsandFitness/powerlifting.aspx">Power Lifting</asp:HyperLink></li>
                            <li><asp:HyperLink ID="HyperLink6" CssClass="yellow-text-underline" Font-Bold="True" runat="server" NavigateUrl="~/SportsandFitness/soccer.aspx">Soccer</asp:HyperLink></li>
                            <li><asp:HyperLink ID="HyperLink7" CssClass="yellow-text-underline" Font-Bold="True" runat="server" NavigateUrl="~/SportsandFitness/cycling.aspx">Cycling</asp:HyperLink></li>
                            <li><asp:HyperLink ID="HyperLink8" CssClass="yellow-text-underline" Font-Bold="True" runat="server" NavigateUrl="~/SportsandFitness/aquatics.aspx">Aquatics</asp:HyperLink></li>
                        </ul>
                    </li>
                    <li><asp:HyperLink ID="HyperLink9" CssClass="yellow-text-underline" Font-Bold="True" runat="server" NavigateUrl="~/SportsandFitness/Summer_Sports.aspx">Summer Sports</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink10" CssClass="yellow-text-underline" Font-Bold="True" runat="server" NavigateUrl="~/SportsandFitness/Fall_Sports.aspx">Fall Sports</asp:HyperLink></li>
                </ul>
            </li>
            <li><asp:HyperLink ID="HyperLink11" CssClass="yellow-text-underline" Font-Bold="True" runat="server" NavigateUrl="~/SportsandFitness/Forms.aspx">Forms</asp:HyperLink></li>
        </ul>
    </div>
</asp:Content>
