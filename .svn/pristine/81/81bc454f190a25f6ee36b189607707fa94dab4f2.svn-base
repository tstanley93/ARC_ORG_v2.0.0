<%@ Page Title="Picture Gallery Update Tool" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="PictureGallery_Update.aspx.cs" Inherits="ARC.Admin.PictureGallery_Update" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <br />
    <br />
    <div>
        <h1>Ima<asp:Label ID="Label1" runat="server" Text="Picture Gallery Update Tool"></asp:Label></h1>
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
       <h3 style="margin-left: 15px">To modify or delete a picture from the Picture Gallery <span>
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
       <div class="bord2" style="padding: 10px; width: 475px">
            <h3>To upload a new <span class="orange-text-regular">Calendar Icon</span>, browse to the image file, and click the Upload Icon button.</h3>
            <br />
            <asp:FileUpload ID="FileUpload1" runat="server" Width="100%" />
            <br />
            <h3>Please type the name of the Icon File.</h3>
            <br />
           <asp:TextBox ID="TextBox1" runat="server" Width="50%"></asp:TextBox>
           <br />
            <div style="text-align: center">
                <asp:Button ID="Button1" runat="server" Text="Upload Icon" 
                    onclick="Button1_Click" />
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>    
            </div>
            <br />
       </div> 
       <br />
       <div class="bord2" style="padding: 10px; width: 475px">
            <h3>To upload a new <span class="orange-text-regular">Home Page Picture</span>, browse to the picture file, and click the Upload Home Picture button.</h3>
            <br />
            <asp:FileUpload ID="FileUpload2" runat="server" Width="100%" />
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
       <div class="bord2" style="padding: 10px; width: 475px">
            <h3>To upload a new <span class="orange-text-regular">Recent Pictures Picture</span>, browse to the picture file, and click the Upload Recent Picture button.</h3>
            <br />
            <asp:FileUpload ID="FileUpload3" runat="server" Width="100%" />
            <br />
            <h3>Please select the category that this picture will be assigned to.</h3>
            <br />
            <table>
                <tr>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                            DataSourceID="AccessDataSource4" DataTextField="Category" 
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
                        <h5>To create a new category, type its name in the box and click create.</h5>
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
    <asp:HyperLink ID="HyperLink2" runat="server" Text="Return to Admin Tools." 
            NavigateUrl="~/Admin/tools.aspx" CssClass="yellow-text-underline" 
            Font-Size="Small"></asp:HyperLink>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
    DataFile="~/App_Data/ARC_ORG_DB.mdb" 
    DeleteCommand="DELETE FROM [Icons] WHERE [ID] = ?" 
    InsertCommand="INSERT INTO [Icons] ([Icon_Name], [Path]) VALUES (?, ?)" 
    SelectCommand="SELECT * FROM [Icons]" 
    UpdateCommand="UPDATE [Icons] SET [Icon_Name] = ?, [Path] = ? WHERE [ID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="Icon_Name" Type="String" />
            <asp:Parameter Name="Path" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="Icon_Name" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="Label2" Name="Path" PropertyName="Text" 
                Type="String" />
        </InsertParameters>
    </asp:AccessDataSource>
    <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
        DataFile="~/App_Data/ARC_ORG_DB.mdb" 
        DeleteCommand="DELETE FROM [Home_Picture] WHERE [ID] = ?" 
        InsertCommand="INSERT INTO [Home_Picture] ([FileName], [FilePath]) VALUES (?, ?)" 
        SelectCommand="SELECT * FROM [Home_Picture]" 
        UpdateCommand="UPDATE [Home_Picture] SET [FileName] = ?, [FilePath] = ? WHERE [ID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="FileName" Type="String" />
            <asp:Parameter Name="FilePath" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="Label5" Name="FileName" 
                PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Label3" Name="FilePath" PropertyName="Text" 
                Type="String" />
        </InsertParameters>
    </asp:AccessDataSource>
    <asp:AccessDataSource ID="AccessDataSource3" runat="server" 
        DataFile="~/App_Data/ARC_ORG_DB.mdb" 
        DeleteCommand="DELETE FROM [Recent_Pictures] WHERE [ID] = ?" 
        InsertCommand="INSERT INTO [Recent_Pictures] ([Image_Name], [Image_Path], [Category]) VALUES (?, ?, ?)" 
        SelectCommand="SELECT * FROM [Recent_Pictures]" 
        UpdateCommand="UPDATE [Recent_Pictures] SET [Image_Name] = ?, [Image_Path] = ? WHERE [ID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="Image_Name" Type="String" />
            <asp:Parameter Name="Image_Path" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="Label6" Name="Image_Name" 
                PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Label4" Name="Image_Path" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="DropDownList1" Name="Category" 
                PropertyName="SelectedValue" />
        </InsertParameters>
    </asp:AccessDataSource>
    <asp:AccessDataSource ID="AccessDataSource4" runat="server" 
    DataFile="~/App_Data/ARC_ORG_DB.mdb" 
    DeleteCommand="DELETE FROM [Picture_Categories] WHERE [ID] = ?" 
    InsertCommand="INSERT INTO [Picture_Categories] ([Category]) VALUES (?)" 
    SelectCommand="SELECT * FROM [Picture_Categories]" 
    UpdateCommand="UPDATE [Picture_Categories] SET [Category] = ? WHERE [ID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="TextBox2" Name="Category" PropertyName="Text" 
                Type="String" />
        </InsertParameters>
</asp:AccessDataSource>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ErrorMessage="Please rename this file, and remove all spaces.  You can use underscores, or dashes if you would like." 
        Display="None" 
        ValidationGroup="AllValidators" 
        ControlToValidate="FileUpload1" 
        Text="Spaces found in the filename!">Spaces found in the filename!</asp:RegularExpressionValidator>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
        ShowMessageBox="True" ShowSummary="False" ValidationGroup="AllValidators" />
    </asp:Content>
