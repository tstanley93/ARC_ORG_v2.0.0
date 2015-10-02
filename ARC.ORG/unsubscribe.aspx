<%@ Page Title="Un-Subscribe" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="unsubscribe.aspx.cs" Inherits="ARC.unsubscribe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <br />
    <br />
    <div style="text-align: center">
        <h1><asp:Label ID="Label1" runat="server" Text="Un-Subscribe"></asp:Label></h1>
    </div>
    <br />
    <br />
    <div style="margin-left: 15px">
        <h3 style="margin-left: 15px">To un-subscribe from the ARC of Grays Harbor monthly eNewsletter.  Type your email address in the 
        box below, and click the "Un-Subscribe" button.</h3>
        <br />
        <br />
        <div style="text-align: center">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <span style="margin-left: 10px"><asp:Button ID="Button1" runat="server" 
                Text="Un-Subscribe" Height="22px" onclick="Button1_Click" /></span>
        </div>
        <br />
        <br />
        <br />
        <br />
    </div>
</asp:Content>
