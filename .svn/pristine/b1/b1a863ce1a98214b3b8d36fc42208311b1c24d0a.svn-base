<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Recurring_Dates.ascx.cs" Inherits="ARC.Controls.Recurring_Dates" %>

<script language="javascript" type="text/javascript" src="../arc_gh.js">
</script>
<div style="width: 500px; padding: 15px;">
    <div style=" background-color:ButtonFace; padding: 5px;">
        <h3>Choose how the dates should recur.</h3>
        <asp:DropDownList ID="DropDownList1" runat="server" 
            onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
            AutoPostBack="True">
            <asp:ListItem Selected="True">Daily</asp:ListItem>
            <asp:ListItem>Weekly</asp:ListItem>
            <asp:ListItem>Monthly</asp:ListItem>
            <asp:ListItem>Yearly</asp:ListItem>
        </asp:DropDownList>
        <br />
        <hr style=" color: Black; height: 1px; width:95%;" />
        <div>
            <asp:Panel ID="Daily_Panel" runat="server" Visible="true">
                <table border="0" cellpadding="0" cellspacing="3" style="margin-left: 15px;">
                    <tr>
                        <td><asp:RadioButton ID="RadioButton3" runat="server" Text="Every" 
                                AutoPostBack="True" oncheckedchanged="RadioButton3_CheckedChanged" /></td>
                        <td><asp:TextBox ID="TextBox4" runat="server" Width="30px">1</asp:TextBox></td>
                        <td>day(s)</td>
                    </tr>
                    <tr>
                        <td colspan="3"><asp:RadioButton ID="RadioButton4" runat="server" 
                                Text="Every Weekday" AutoPostBack="True" 
                                oncheckedchanged="RadioButton4_CheckedChanged" /></td>
                        <td></td>
                        <td></td>
                    </tr>
                </table>
            </asp:Panel>
            <asp:Panel ID="Weekly_Panel" runat="server" Visible="false">
                <table border="0" cellpadding="0" cellspacing="3" style="margin-left: 15px;">
                    <tr>
                        <td>Recur every</td>
                        <td><asp:TextBox ID="TextBox5" runat="server" Width="30px">1</asp:TextBox></td>
                        <td>week(s) on:</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><asp:CheckBox ID="Sunday" runat="server" Text="Sunday" ForeColor="Red" /></td>
                        <td><asp:CheckBox ID="Monday" runat="server" Text="Monday" /></td>
                        <td><asp:CheckBox ID="Tuesday" runat="server" Text="Tuesday" /></td>
                        <td><asp:CheckBox ID="Wednesday" runat="server" Text="Wednesday" /></td>
                    </tr>
                    <tr>
                        <td><asp:CheckBox ID="Thursday" runat="server" Text="Thursday" /></td>
                        <td><asp:CheckBox ID="Friday" runat="server" Text="Friday" /></td>
                        <td><asp:CheckBox ID="Saturday" runat="server" Text="Saturday" ForeColor="Red" /></td>
                        <td></td>
                    </tr>
                </table>
            </asp:Panel>
            <asp:Panel ID="Monthly_Panel" runat="server" Visible="false">
                <table border="0" cellpadding="0" cellspacing="3"  style="margin-left: 15px;">
                    <tr>
                        <td><asp:RadioButton ID="RadioButton5" runat="server" Text="Day" 
                                oncheckedchanged="RadioButton5_CheckedChanged" AutoPostBack="True" /></td>
                        <td><asp:TextBox ID="TextBox6" runat="server" Width="30px"></asp:TextBox></td>
                        <td>of every</td>
                        <td><asp:TextBox ID="TextBox7" runat="server" Width="30px">1</asp:TextBox></td>
                        <td>month(s)</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><asp:RadioButton ID="RadioButton6" runat="server" Text="The" 
                                oncheckedchanged="RadioButton6_CheckedChanged" AutoPostBack="True" /></td>
                        <td>
                            <asp:DropDownList ID="DropDownList2" runat="server">
                                <asp:ListItem Selected="True">First</asp:ListItem>
                                <asp:ListItem>Second</asp:ListItem>
                                <asp:ListItem>Third</asp:ListItem>
                                <asp:ListItem>Fourth</asp:ListItem>
                                <asp:ListItem>Last</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList3" runat="server">
                                <asp:ListItem Selected="True">day</asp:ListItem>
                                <asp:ListItem>weekday</asp:ListItem>
                                <asp:ListItem>weekend day</asp:ListItem>
                                <asp:ListItem>Sunday</asp:ListItem>
                                <asp:ListItem>Monday</asp:ListItem>
                                <asp:ListItem>Tuesday</asp:ListItem>
                                <asp:ListItem>Wednesday</asp:ListItem>
                                <asp:ListItem>Thursday</asp:ListItem>
                                <asp:ListItem>Friday</asp:ListItem>
                                <asp:ListItem>Saturday</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>of every</td>
                        <td><asp:TextBox ID="TextBox8" runat="server" Width="30px">1</asp:TextBox></td>
                        <td>month(s)</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td>Plus/Minus</td>
                        <td><asp:TextBox ID="TextBox9" runat="server" Width="30px">0</asp:TextBox></td>
                        <td>Days</td>
                        <td></td>
                    </tr>
                </table>
            </asp:Panel>
            <asp:Panel ID="Yearly_Panel" runat="server" Visible="false">
                <table border="0" cellpadding="0" cellspacing="3" style="margin-left: 15px;">
                    <tr>
                        <td><asp:RadioButton ID="RadioButton7" runat="server" Text="Every" /></td>
                        <td>
                            <asp:DropDownList ID="DropDownList4" runat="server">
                                <asp:ListItem>January</asp:ListItem>
                                <asp:ListItem>February</asp:ListItem>
                                <asp:ListItem>March</asp:ListItem>
                                <asp:ListItem>April</asp:ListItem>
                                <asp:ListItem>May</asp:ListItem>
                                <asp:ListItem>June</asp:ListItem>
                                <asp:ListItem>July</asp:ListItem>
                                <asp:ListItem>August</asp:ListItem>
                                <asp:ListItem>September</asp:ListItem>
                                <asp:ListItem>October</asp:ListItem>
                                <asp:ListItem>November</asp:ListItem>
                                <asp:ListItem>December</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td><asp:TextBox ID="TextBox10" runat="server" Width="30px"></asp:TextBox></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td><asp:RadioButton ID="RadioButton8" runat="server" Text="The" /></td>
                        <td>
                            <asp:DropDownList ID="DropDownList5" runat="server">
                                <asp:ListItem Selected="True">First</asp:ListItem>
                                <asp:ListItem>Second</asp:ListItem>
                                <asp:ListItem>Third</asp:ListItem>
                                <asp:ListItem>Fourth</asp:ListItem>
                                <asp:ListItem>Last</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList6" runat="server">
                                <asp:ListItem Selected="True">day</asp:ListItem>
                                <asp:ListItem>weekday</asp:ListItem>
                                <asp:ListItem>weekend day</asp:ListItem>
                                <asp:ListItem>Sunday</asp:ListItem>
                                <asp:ListItem>Monday</asp:ListItem>
                                <asp:ListItem>Tuesday</asp:ListItem>
                                <asp:ListItem>Wednesday</asp:ListItem>
                                <asp:ListItem>Thursday</asp:ListItem>
                                <asp:ListItem>Friday</asp:ListItem>
                                <asp:ListItem>Saturday</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>of</td>
                        <td>
                            <asp:DropDownList ID="DropDownList7" runat="server">
                                <asp:ListItem>January</asp:ListItem>
                                <asp:ListItem>February</asp:ListItem>
                                <asp:ListItem>March</asp:ListItem>
                                <asp:ListItem>April</asp:ListItem>
                                <asp:ListItem>May</asp:ListItem>
                                <asp:ListItem>June</asp:ListItem>
                                <asp:ListItem>July</asp:ListItem>
                                <asp:ListItem>August</asp:ListItem>
                                <asp:ListItem>September</asp:ListItem>
                                <asp:ListItem>October</asp:ListItem>
                                <asp:ListItem>November</asp:ListItem>
                                <asp:ListItem>December</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td>Plus/Minus</td>
                        <td><asp:TextBox ID="TextBox11" runat="server" Width="30px">0</asp:TextBox></td>
                        <td>Days</td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
        <hr style=" color: Black; height: 1px; width:95%;" />
        <div>
            <table cellpadding="0" cellspacing="0" style=" width: 100%;">
                <tr>
                    <td>Start Date:</td>
                    <td>
                        <table border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td><asp:TextBox ID="TextBox1" runat="server" Width="80px">mm/dd/yyyy</asp:TextBox></td>
                                <td><img alt="" src="../images/down_arrow.jpg" width="22px" height="22px" onclick="Calendar_Date_Picker('Recurring_Dates1_TextBox1');" /></td>
                            </tr>
                        </table>
                    </td>
                    <td></td>
                    <td><asp:RadioButton ID="RadioButton1" runat="server" Text="End After:" 
                            AutoPostBack="True" oncheckedchanged="RadioButton1_CheckedChanged" /></td>
                    <td><asp:TextBox ID="TextBox2" runat="server" Width="35px">10</asp:TextBox></td>
                    <td>Occurrences</td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td><asp:RadioButton ID="RadioButton2" runat="server" Text="End By:" 
                            AutoPostBack="True" oncheckedchanged="RadioButton2_CheckedChanged" /></td>
                    <td colspan="2">
                        <table border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td><asp:TextBox ID="TextBox3" runat="server" Width="80px">mm/dd/yyyy</asp:TextBox></td>
                                <td><img alt="" src="../images/down_arrow.jpg" width="22px" height="22px" onclick="Calendar_Date_Picker('Recurring_Dates1_TextBox3');" /></td>
                            </tr>
                        </table>
                    </td>                    
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td colspan="2"><asp:Button ID="Button1" runat="server" Text="Submit" 
                            onclick="Button1_Click" /></td>                    
                </tr>
            </table>
        </div>
        <asp:TextBox ID="TextBox12" runat="server" Visible="false" TextMode="MultiLine"></asp:TextBox>
    </div>
</div>