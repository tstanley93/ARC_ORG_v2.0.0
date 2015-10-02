<%@ Page Title="eNewsletter Update Tool" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="eNewletter_Update.aspx.cs" Inherits="ARC.Admin.eNewletter_Update" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <br />
    <br />
    <div>
        <h1><asp:Label ID="Label1" runat="server" Text="eNewsletter Update Tool"></asp:Label></h1>
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
    <div>
        <h3 style="margin-left: 15px">To modify or remove an eNewsletter <span>
            <asp:HyperLink ID="HyperLink1" 
                runat="server" CssClass="yellow-text-underline" Font-Bold="True" 
                Font-Size="Small" NavigateUrl="~/Admin/NewsAdmin/eNewsletter_Modify.aspx">click here.</asp:HyperLink></span></h3>
        <br />
        <h3 style="margin-left: 15px">To send an email with the latest eNewsletter <span>
            <asp:HyperLink ID="HyperLink3" runat="server" 
            NavigateUrl="~/Admin/NewsAdmin/eNewsLetter_Email.aspx" 
            CssClass="yellow-text-underline" Font-Size="Small" Font-Bold="true">click here.</asp:HyperLink></span></h3>
        <br />
        <br />
        <div class="bord2" style="padding: 10px; margin-left: 15px; width: 474px; ">
            <h3>Please select the month and any day of that month for the eNewsletter issue you are uploading.</h3>
            <br />
            <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" 
                Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" 
                onselectionchanged="Calendar1_SelectionChanged" Width="330px">
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TodayDayStyle BackColor="#999999" ForeColor="White" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <DayStyle BackColor="#CCCCCC" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                    Height="8pt" />
                <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" 
                    Font-Size="12pt" ForeColor="White" Height="12pt" />
            </asp:Calendar>
            <br />
            <h3>Enter the path of the eNewsletter to upload.</h3>
            <br />
            <asp:FileUpload ID="FileUpload1" runat="server" Width="80%" /> 
            <br />
            <br />
            <h3>Type the Excerpt of the article that you want to show up on the home page.</h3>
            <br />
            <asp:TextBox ID="TextBox2" runat="server" Height="78px" MaxLength="255" 
                TextMode="MultiLine" Width="80%"></asp:TextBox>
        </div>
        <br />
        <div style="margin-left: 15px; text-align: right; width: 474px; padding-right: 5px;">
            <asp:Button ID="Button1" runat="server" Text="Submit" 
                onclick="Button1_Click1" />
        </div>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" Text="Return to Admin Tools." 
            NavigateUrl="~/Admin/tools.aspx" CssClass="yellow-text-underline" 
            Font-Size="Small"></asp:HyperLink>
    </div>    
    <br />
    <br />
</asp:Content>
