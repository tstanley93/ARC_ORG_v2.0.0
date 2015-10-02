<%@ Page Title="Donation Request Form" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Donation.aspx.cs" Inherits="ARC.Donation" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <script language="javascript" type="text/javascript" src="arc_gh.js">
    </script>


    <div style="margin: 5px">
        <h2>Donation Request Form</h2>
        <br />
        <h3 style="margin-left: 15px">
            Fill out the form below to request a scheduled pick up of your clothing or small household items.
        </h3>
        <br />
        <h3 style=" margin-left:25px;">Before you donate those items, please 
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="yellow-text-underline" NavigateUrl="~/Donation_Items.aspx">Click Here</asp:HyperLink> <span style=" margin-left:5px;"> to check out the types of items that we 
            <span class="blye-text-regular">CAN</span>, and <span class="red-text-regular">CANNOT</span> take!</span>  Thank You!</h3>
        <br />
        <h5 style=" color:Red; text-indent: 15px;">* Means the field is required.</h5>
        <br />
        <table width="100%">
            <tr>
                <td><h3>Your Name:     <span style="color:Red; font-size: smaller;">*</span></h3>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Your Name is Required" ControlToValidate="TextBox1" 
                        SetFocusOnError="True" Display="Dynamic" ValidationGroup="AllValidators" 
                        ViewStateMode="Disabled"></asp:RequiredFieldValidator>
                </td>
                <td style="padding: 5px">
                    <asp:TextBox ID="TextBox1" runat="server" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td width="30%"><h3>Telephone Number:      <span style="color:Red; font-size: smaller;">*</span></h3>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="You must specify a phone number." ControlToValidate="TextBox2" 
                        SetFocusOnError="True" ValidationGroup="AllValidators" 
                        Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
                <td style="padding: 5px">
                    <asp:TextBox ID="TextBox2" runat="server" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td width="30%"><h3>Email Address:</h3></td>
                <td style="padding: 5px">
                    <asp:TextBox ID="Email_Addr" runat="server" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><h3>Address:      <span style="color:Red; font-size: smaller;">*</span></h3>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="You must specify an address." ControlToValidate="TextBox3" 
                        SetFocusOnError="True" ValidationGroup="AllValidators" 
                        Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
                <td style="padding: 5px">
                    <asp:TextBox ID="TextBox3" runat="server" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><h3>Address 2:</h3></td>
                <td style="padding: 5px">
                    <asp:TextBox ID="TextBox8" runat="server" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><h3>City:     <span style="color:Red; font-size: smaller;">*</span></h3>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="You must specify a city." ControlToValidate="TextBox9" 
                        SetFocusOnError="True" ValidationGroup="AllValidators" 
                        Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
                <td style="padding: 5px">
                    <asp:TextBox ID="TextBox9" runat="server" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><h3>State:</h3></td>
                <td style="padding: 5px">
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>AL</asp:ListItem>
                        <asp:ListItem>AK</asp:ListItem>
                        <asp:ListItem>AZ</asp:ListItem>
                        <asp:ListItem>AR</asp:ListItem>
                        <asp:ListItem>CA</asp:ListItem>
                        <asp:ListItem>CO</asp:ListItem>
                        <asp:ListItem>CT</asp:ListItem>
                        <asp:ListItem>DE</asp:ListItem>
                        <asp:ListItem>FL</asp:ListItem>
                        <asp:ListItem>GA</asp:ListItem>
                        <asp:ListItem>HI</asp:ListItem>
                        <asp:ListItem>ID</asp:ListItem>
                        <asp:ListItem>IL</asp:ListItem>
                        <asp:ListItem>IN</asp:ListItem>
                        <asp:ListItem>IA</asp:ListItem>
                        <asp:ListItem>KS</asp:ListItem>
                        <asp:ListItem>KY</asp:ListItem>
                        <asp:ListItem>LA</asp:ListItem>
                        <asp:ListItem>ME</asp:ListItem>
                        <asp:ListItem>MD</asp:ListItem>
                        <asp:ListItem>MA</asp:ListItem>
                        <asp:ListItem>MI</asp:ListItem>
                        <asp:ListItem>MN</asp:ListItem>
                        <asp:ListItem>MS</asp:ListItem>
                        <asp:ListItem>MO</asp:ListItem>
                        <asp:ListItem>MT</asp:ListItem>
                        <asp:ListItem>NE</asp:ListItem>
                        <asp:ListItem>NV</asp:ListItem>
                        <asp:ListItem>NH</asp:ListItem>
                        <asp:ListItem>NJ</asp:ListItem>
                        <asp:ListItem>NM</asp:ListItem>
                        <asp:ListItem>NY</asp:ListItem>
                        <asp:ListItem>NC</asp:ListItem>
                        <asp:ListItem>ND</asp:ListItem>
                        <asp:ListItem>OH</asp:ListItem>
                        <asp:ListItem>OK</asp:ListItem>
                        <asp:ListItem>OR</asp:ListItem>
                        <asp:ListItem>PA</asp:ListItem>
                        <asp:ListItem>RI</asp:ListItem>
                        <asp:ListItem>SC</asp:ListItem>
                        <asp:ListItem>SD</asp:ListItem>
                        <asp:ListItem>TN</asp:ListItem>
                        <asp:ListItem>TX</asp:ListItem>
                        <asp:ListItem>UT</asp:ListItem>
                        <asp:ListItem>VT</asp:ListItem>
                        <asp:ListItem>VA</asp:ListItem>
                        <asp:ListItem Selected="True">WA</asp:ListItem>
                        <asp:ListItem>WV</asp:ListItem>
                        <asp:ListItem>WI</asp:ListItem>
                        <asp:ListItem>WY</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td><h3>Zip Code:     <span style="color:Red; font-size: smaller;">*</span></h3>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ErrorMessage="Please specify a zip code." ControlToValidate="TextBox11" 
                        SetFocusOnError="True" ValidationGroup="AllValidators" 
                        Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
                <td style="padding: 5px">
                    <asp:TextBox ID="TextBox11" runat="server" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><h3>Number of bags, boxes, or items to pickup:</h3></td>
                <td style="padding: 5px">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="FormCheckBox">
                        <asp:ListItem Selected="True">1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td><h3>The 3 best dates and times for pickup:</h3></td>
                <td align="left" style="padding: 5px">
                    <table width="100%">
                        <tr>
                            <td><h3>Preferred: </h3></td>
                            <td style="padding-right: 3px;"><asp:TextBox ID="TextBox4" runat="server" Width="100%">Click to Select</asp:TextBox></td>                            
                            <td><asp:RadioButton ID="RadioButton1" runat="server" Text="9:00am-12:00pm" Font-Size="XX-Small" /></td>
                            <td><asp:RadioButton ID="RadioButton2" runat="server" Text="12:00pm-3:00pm" Font-Size="XX-Small" /></td>                         
                        </tr>
                        <tr>
                            <td><h3>Second: </h3></td>
                            <td style="padding-right: 3px"><asp:TextBox ID="TextBox5" runat="server" Width="100%">Click to Select</asp:TextBox></td>
                            <td><asp:RadioButton ID="RadioButton3" runat="server" Text="9:00am-12:00pm" Font-Size="XX-Small" /></td>
                            <td><asp:RadioButton ID="RadioButton4" runat="server" Text="12:00pm-3:00pm" Font-Size="XX-Small" /></td> 
                        </tr>
                        <tr>
                            <td><h3>Third: </h3></td>
                            <td style="padding-right: 3px"><asp:TextBox ID="TextBox6" runat="server" Width="100%">Click to Select</asp:TextBox></td>
                            <td><asp:RadioButton ID="RadioButton5" runat="server" Text="9:00am-12:00pm" Font-Size="XX-Small" /></td>
                            <td><asp:RadioButton ID="RadioButton6" runat="server" Text="12:00pm-3:00pm" Font-Size="XX-Small" /></td> 
                        </tr>
                    </table>                                        
                </td>
            </tr>
            <tr>
                <td><h3>Comments:</h3></td>
                <td><asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine" Rows="4" Width="100%"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="Pref_Time" runat="server" Visible="False"></asp:TextBox>
                    <asp:TextBox ID="Second_Time" runat="server" Visible="false"></asp:TextBox>
                    <asp:TextBox ID="Third_Time" runat="server" Visible="false"></asp:TextBox>
                    <asp:TextBox ID="Submit_Time" runat="server" Visible="false"></asp:TextBox>
                </td>
                <td><asp:Button ID="Button4" runat="server" Text="Submit" 
                        CssClass="DonationFormSubmitButton" onclick="Button4_Click" 
                        ValidationGroup="AllValidators" /><asp:Button ID="Button5" runat="server" Text="Clear" CssClass="DonationFormCancelButton" onclick="Button5_Click" /></td>                
            </tr>
        </table>
    </div>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ValidationGroup="AllValidators" />
    </asp:Content>

