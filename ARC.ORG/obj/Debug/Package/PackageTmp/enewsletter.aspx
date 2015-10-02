<%@ Page Title="Monthly eNewsLetter" Language="C#" MasterPageFile="~/Second.Master" AutoEventWireup="true" CodeBehind="enewsletter.aspx.cs" Inherits="ARC.enewsletter" %>
<%@ Register assembly="PdfViewer" namespace="PdfViewer" tagprefix="cc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <br />
    <br />
    <div style="text-align: center">
        <h1><asp:Label ID="Label1" runat="server" Text="Our Monthly eNewsletter"></asp:Label></h1>
    </div>
    <br />
    <br />
    <div style="margin-left: 15px">
        <h3 class="yellow-text-regular">To view past issues of our eNewsletter
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="yellow-text-underline" 
                Font-Bold="True" Font-Size="Small" 
                NavigateUrl="~/past_eNewsletter_issues.aspx">click here.</asp:HyperLink></h3>
    </div>
    <br />
    <br />
    <div style="margin-right: 10px; margin-left: 10px">
        <hr class="yellow-text-regular" />
    </div>
    <br />
    <cc1:ShowPdf ID="ShowPdf1" runat="server" Height="600px" Width="100%" />
    
</asp:Content>
