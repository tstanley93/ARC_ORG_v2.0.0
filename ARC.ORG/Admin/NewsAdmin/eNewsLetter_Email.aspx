<%@ Page Title="EnewsLetter Email Tool" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="eNewsLetter_Email.aspx.cs" Inherits="ARC.Admin.NewsAdmin.eNewsLetter_Email" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <br />
    <br />
    <div>
        <h1><asp:Label ID="Label1" runat="server" Text="eNewsletter Email Tool"></asp:Label></h1>
    </div>
    <div>
        <table width="100%">
            <tr>
                <td>
                </td>
                <td align="right">
                    <h3 class="span_font_h3" style="font-weight: normal">Welcome </h3>
                </td>
                <td align="right" width="5%">
                    <asp:LoginName ID="LoginName1" runat="server" CssClass="span_font_h3" />
                </td>
                <td style="padding-left: 15px" width="20%">
                    <asp:LoginStatus ID="LoginStatus1" runat="server" 
                        LogoutPageUrl="~/Default.aspx" CssClass="span_font_h3" 
                        LogoutAction="Redirect" />
                </td>
            </tr>
        </table>
    </div>
    <br />
    <br />
    <div style="margin-left: 75px;">
        <h3>Please fill out the form below and click send.  
        This will send an email to everyone who has signed up for the
        for the eNewsLetter.</h3>
        
        
    </div>
    <br />
    <br />
    <table style="width: 75%; margin-left: auto; margin-right: auto">
        <tr>
            <td width="20%">
                <asp:Label ID="Label2" runat="server" Text="<h3>Subject:</h3>"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="23px" Width="100%" 
                    TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp; 
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td valign="top">
                <asp:Label ID="Label3" runat="server" Text="<h3>Body:</h3>"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="182px" Width="100%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp; 
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="<h3>eNewsLetter File: </h3>"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="100%" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td></td>
            <td align="center">
                <asp:Button ID="Button1" runat="server" Text="Send" onclick="Button1_Click" 
                    Width="10%" />
            </td>            
        </tr>
    </table> 
    <br />
    <br />
    <div style="margin-left: 75px;">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/tools.aspx" CssClass="yellow-text-underline">Back to the Tools Page.</asp:HyperLink>
    </div>
    <br />
    <br />
    </asp:Content>
