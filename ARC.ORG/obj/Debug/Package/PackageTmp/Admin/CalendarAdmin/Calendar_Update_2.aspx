<%@ Page Title="Event Calendar Update Tool" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Calendar_Update_2.aspx.cs" Inherits="ARC.Admin.Calendar_Update_2" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <script language="javascript" type="text/javascript" src="../../arc_gh.js">
    </script>
    <br />
    <br />
    <div style="padding: 5px; margin-left: 40px">
        <asp:Label ID="Label1" runat="server" Text="Calendar Update Tool" Font-Size="X-Large" Font-Bold="True"></asp:Label>
        <div>
            <table width="100%" border="0" cellpadding="0" cellspacing="0">
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
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Text="To Change or Delete an existing Event; " Font-Size="Medium"></asp:Label>
        <asp:LinkButton ID="LinkButton1" runat="server" 
            PostBackUrl="~/Admin/CalendarAdmin/Calendar_Modify.aspx" ForeColor="#FFCC00">Click Here</asp:LinkButton>
        <br />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Please enter the date of the new event." Font-Size="Medium"></asp:Label>
        <br />
        <br />
        <div>
            <table border="0" cellpadding="0" cellspacing="15">
                <tr>
                    <td>
                        <table border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td><asp:TextBox ID="TextBox_EventDate" runat="server" Width="80px">mm/dd/yyyy</asp:TextBox></td>
                                <td><img src="../../images/down_arrow.jpg" alt='""' 
                                        onclick="Calendar_Date_Picker('ctl00_ContentPlaceHolder3_TextBox_EventDate');" 
                                        height="22px" /></td>
                            </tr>
                        </table>                        
                    </td>
                    <td>
                        <asp:Button ID="Button3" runat="server" Text="Recurring?" 
                            CausesValidation="False" onclick="Button3_Click" />
                    </td>
                    <td><asp:Image ID="Image2" runat="server" Visible="false" ImageUrl="~/images/checked-box.gif" Height="22px" /></td>
                    <td><asp:TextBox ID="tbDateList" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                </tr>
            </table>
        </div>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Please enter a short description for this event." Font-Size="Medium"></asp:Label>
        <br />
        <asp:Label ID="Label4" runat="server" Text="This description will be the one that shows on the Calendar."></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextBox_EventName" runat="server" TextMode="MultiLine" 
            Width="537px"></asp:TextBox>     
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Please choose an Icon." Font-Size="Medium"></asp:Label>
        <br />
        <asp:Label ID="Label7" runat="server" Text="This Icon will appear in the calendar next to the event."></asp:Label>
        <br />
        <br />
        <table border="0" cellpadding="0" cellspacing="15">
            <tr>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID=""
                        DataTextField="Icon_Name" DataValueField="Path" AppendDataBoundItems="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1"
                        AutoPostBack="True">
            <asp:ListItem Selected="True">Select_Icon</asp:ListItem>
        </asp:DropDownList>
                </td>
                <td><asp:Image ID="Image1" runat="server" Visible="False" /></td>
            </tr>
        </table>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="In the box below, enter all additional information associated with this new Event." Font-Size="Medium"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextBoxEventInfo" runat="server" Height="151px" Width="537px" 
            TextMode="MultiLine"></asp:TextBox>
        <br />
        <br />
        <div style="width: 537px; text-align: right; padding-right: 10px; word-spacing: 5px;">
            <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Clear" onclick="Button2_Click" />
        </div>
        <br />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="yellow-text-underline" NavigateUrl="~/Admin/tools.aspx">Back to Admin Tools Page</asp:HyperLink>
    </div>
</asp:Content>
