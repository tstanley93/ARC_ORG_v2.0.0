<%@ Page Title="Event Calendar Modify Tool" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Calendar_Modify.aspx.cs" Inherits="ARC.Admin.Calendar_Modify" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div style="text-align: center" id="TitleDiv">
        <asp:Label ID="Label1" runat="server" Text="Change or Delete Events" Font-Size="X-Large"></asp:Label>
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
    <div style="margin-left: 15px">
        <asp:Label ID="Label2" runat="server" Text="Please select the Month and Year of the Events to change or delete." Font-Size="Medium"></asp:Label> 
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="1">January</asp:ListItem>
            <asp:ListItem Value="2">February</asp:ListItem>
            <asp:ListItem Value="3">March</asp:ListItem>
            <asp:ListItem Value="4">April</asp:ListItem>
            <asp:ListItem Value="5">May</asp:ListItem>
            <asp:ListItem Value="6">June</asp:ListItem>
            <asp:ListItem Value="7">July</asp:ListItem>
            <asp:ListItem Value="8">August</asp:ListItem>
            <asp:ListItem Value="9">September</asp:ListItem>
            <asp:ListItem Value="10">October</asp:ListItem>
            <asp:ListItem Value="11">November</asp:ListItem>
            <asp:ListItem Value="12">December</asp:ListItem>            
        </asp:DropDownList>    
        <span style="margin-left: 5px"><asp:Label ID="Label3" runat="server" Text="Month" Font-Size="Medium"></asp:Label></span>
        <span style="margin-left: 30px">
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>2009</asp:ListItem>
                <asp:ListItem>2010</asp:ListItem>
                <asp:ListItem>2011</asp:ListItem>
                <asp:ListItem Selected="True">Year</asp:ListItem>
            </asp:DropDownList>
        </span>
        <span style="margin-left: 15px"><asp:Label ID="Label4" runat="server" Text="Year" Font-Size="Medium"></asp:Label></span>
        <span style="margin-left: 20px"><asp:Button ID="Button1" runat="server" Text="OK" Height="22px" onclick="Button1_Click" /></span>
        <br />
        <br />
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" BackColor="White" 
            BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            DataKeyField="ID" DataSourceID="" GridLines="Horizontal" 
            Height="16px" onselectedindexchanged="DataList1_SelectedIndexChanged" 
            UseAccessibleHeader="True" Width="950px">
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <AlternatingItemStyle BackColor="#F7F7F7" />
            <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <ItemTemplate>
                ID:
                <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                <br />
                Event_Date:
                <asp:Label ID="Event_DateLabel" runat="server" 
                    Text='<%# Eval("Event_Date") %>' />
                <br />
                Event_Name:
                <asp:Label ID="Event_NameLabel" runat="server" 
                    Text='<%# Eval("Event_Name") %>' />
                <br />
                Additional_Info:
                <asp:Label ID="Additional_InfoLabel" runat="server" 
                    Text='<%# Eval("Additional_Info") %>' />
                <br />
                <asp:Button ID="Button2" runat="server" CommandName="select" 
                    Font-Size="X-Small" Height="21px" Text="Modify" />                
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            <div style="padding: 5px; margin-left: 40px">
                <asp:Label ID="Label7" runat="server" Text="Please enter the date of the new event." Font-Size="Medium"></asp:Label>
                <br />
                <br />
                <asp:TextBox ID="TextBox_EventDate" runat="server">mm/dd/yyyy</asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label8" runat="server" Text="Please enter a short description for this event." Font-Size="Medium"></asp:Label>
                <br />
                <asp:Label ID="Label9" runat="server" Text="This description will be the one that shows on the Calendar."></asp:Label>
                <br />
                <br />
                <asp:TextBox ID="TextBox_EventName" runat="server" TextMode="MultiLine" 
                    Width="537px"></asp:TextBox>        
                <br />
                <br />
                <asp:Label ID="Labe20" runat="server" Text="Please choose an Icon." Font-Size="Medium"></asp:Label>
                <br />
                <asp:Label ID="Label21" runat="server" Text="This Icon will appear in the calendar next to the this event."></asp:Label>
                <br />
                <br />
                <asp:DropDownList ID="DropDownList3" runat="server" 
                    DataSourceID="" DataTextField="Icon_Name" 
                    DataValueField="Path" 
                    onselectedindexchanged="DropDownList3_SelectedIndexChanged" 
                    OnTextChanged="DropDownList3_OnTextChanged" AutoPostBack="True">
                    <asp:ListItem>Select_Icon</asp:ListItem>
                </asp:DropDownList>
                <span style="margin-left: 15px">
                    <asp:Image ID="Image1" runat="server" /></span>
                <br />
                <br />
                <asp:Label ID="Label23" runat="server" Text="In the box below, enter all additional information associated with this new Event." Font-Size="Medium"></asp:Label>
                <br />
                <br />
                <asp:TextBox ID="TextBoxEventInfo" runat="server" Height="151px" Width="537px" 
                    TextMode="MultiLine"></asp:TextBox>
                <br />
                <br />
                <div style="width: 537px; text-align: right; padding-right: 10px; word-spacing: 5px;">
                    <span style="margin-right: 3px"><asp:Button ID="Button5" runat="server" 
                        Text="Delete" onclick="Button5_Click" /></span>
                    <span style="margin-right: 3px"><asp:Button ID="Button3" runat="server" Text="Submit" onclick="Button3_Click" /></span>
                    <asp:Button ID="Button4" runat="server" Text="Clear" onclick="Button4_Click" />
                </div>
                <br />
                <br />
            </div>
        </asp:Panel>
        <br />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/tools.aspx" CssClass="yellow-text-underline">Back to Admin Tools Page</asp:HyperLink>
    </div>
</asp:Content>
