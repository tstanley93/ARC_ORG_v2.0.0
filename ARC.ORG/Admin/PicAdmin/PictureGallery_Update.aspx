<%@ Page Title="Picture Gallery Update Tool" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="PictureGallery_Update.aspx.cs" Inherits="ARC.Admin.PictureGallery_Update" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <br />
    <br />
    <div>
        <h1><asp:Label ID="Label1" runat="server" Text="Picture Gallery Update Tool"></asp:Label></h1>
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
       <h3 style="margin-left: 50px">To modify or delete a picture from the Picture Gallery <span>
            <asp:HyperLink ID="HyperLink1" 
                runat="server" 
                CssClass="yellow-text-underline" 
                Font-Bold="True" 
                Font-Size="Small" 
                NavigateUrl="~/Admin/PicAdmin/PictureGallery_Modify.aspx">click here.
            </asp:HyperLink></span>
       </h3> 
       <br />
       <br />
       <div class="bord2" style="padding: 10px; width: 475px; margin-left: auto; margin-right: auto;">
            <h3>To upload a new <span class="blue-text-regular">Calendar Icon</span>, browse to the image file, and click the Upload Icon button.</h3>
            <br />
            <asp:FileUpload ID="FileUpload1" runat="server" Width="100%" />
            <br />
            <br />
            <h3>Please type the name of the Icon File.</h3>
            <br />
           <asp:TextBox ID="TextBox1" runat="server" Width="50%"></asp:TextBox>
           <br />
           <br />
            <div style="text-align: center">
                <asp:Button ID="Button1" runat="server" Text="Upload Icon" 
                    onclick="Button1_Click" />
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>    
            </div>
            <br />
       </div> 
       <br />
       <div class="bord2" style="padding: 10px; width: 475px; margin-left: auto; margin-right: auto;">
            <h3>To upload a new <span class="blue-text-regular">Home Page Picture</span>, browse to the picture file, and click the Upload Home Picture button.</h3>
            <br />
            <asp:FileUpload ID="FileUpload2" runat="server" Width="100%" />
            <br />
            <br />
            <div style="text-align: center">
                <asp:Button ID="Button2" runat="server" Text="Upload Home Picture" 
                    onclick="Button2_Click" />
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>    
                <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>    
            </div>
            <br />
       </div>
       <br />
       <div class="bord2" style="padding: 10px; width: 475px; margin-left: auto; margin-right: auto;">
            <h3>To upload a new <span class="blue-text-regular">Recent Pictures Picture</span>, browse to the picture file, and click the Upload Recent Picture button.</h3>
            <br />
            <asp:FileUpload ID="FileUpload3" runat="server" Width="100%" />
            <br />
            <br />
            <h3>Please select the category that this picture will be assigned to.</h3>
            <br />
            <table>
                <tr>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                            DataSourceID="" DataTextField="Category" 
                            DataValueField="Category">                          
                        </asp:DropDownList>
                    </td>
                    <td align="center">
                        <asp:TextBox ID="TextBox2" runat="server" Width="70%"></asp:TextBox>
                        <asp:Button ID="Button4"
                            runat="server" Text="Create" onclick="Button4_Click" />                        
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <br />
                        <h3>To create a new category, type its name in the box and click create.</h3>
                    </td>
                </tr>
            </table>           
           <br />
           <br />
            <div style="text-align: center">
                <asp:Button ID="Button3" runat="server" Text="Upload Recent Picture" 
                    onclick="Button3_Click" />
                <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label> 
                <asp:Label ID="Label6" runat="server" Text="Label" Visible="False"></asp:Label>   
            </div>
            <br />
       </div>        
    </div>
    <br />
    <br />
    <div style=" margin-left: 50px;">
        <asp:HyperLink ID="HyperLink2" runat="server" Text="Return to Admin Tools." NavigateUrl="~/Admin/tools.aspx"
            CssClass="yellow-text-underline" Font-Size="Small"></asp:HyperLink></div style=" margin-left: 50px;">
    <br />
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ErrorMessage="Please rename this file, and remove all spaces.  You can use underscores, or dashes if you would like." 
        Display="None" 
        ValidationGroup="AllValidators" 
        ControlToValidate="FileUpload1" 
        Text="Spaces found in the filename!">Spaces found in the filename!</asp:RegularExpressionValidator>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
        ShowMessageBox="True" ShowSummary="False" ValidationGroup="AllValidators" />
    </asp:Content>
