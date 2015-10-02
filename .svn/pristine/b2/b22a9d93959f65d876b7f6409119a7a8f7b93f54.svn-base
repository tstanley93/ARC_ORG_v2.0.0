<%@ Page Title="Picture Gallery Modify Tool" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="PictureGallery_Modify.aspx.cs" Inherits="ARC.Admin.PictureGallery_Modify" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <br />
    <br />
    <div>
        <h1><asp:Label ID="Label1" runat="server" Text="Picture Gallery Modify Tool"></asp:Label></h1>
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
    <asp:Panel ID="Panel1" runat="server">
        <h3>Please select which type of picture you would like to modify.</h3>
        <br />
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click"><h3 class="yellow-text-underline">Calendar Icons</h3></asp:LinkButton>
        <br />
        <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click"><h3 class="yellow-text-underline">Home Page Pictures</h3></asp:LinkButton>
        <br />
        <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click"><h3 class="yellow-text-underline">Recent Pictures</h3></asp:LinkButton>
        <br />
        <br />
        <table>
            <tr>
                <td>
                    <h3>To delete a picture category, </h3>
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton10" runat="server" onclick="LinkButton10_Click1"><h3 class="yellow-text-underline">Click Here.</h3></asp:LinkButton>
                </td>
            </tr>
        </table>        
    </asp:Panel>
    <br />
    <br />
    <asp:Panel ID="Panel_Icon" runat="server" Visible="False" Width="75%">
        <h3>Find the picture you are looking for, and click on the Delete button, to remove the picture from the website.</h3>
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" BorderColor="White" 
            BorderWidth="2px" DataKeyField="ID" DataSourceID="AccessDataSource1" 
            GridLines="Both" RepeatDirection="Horizontal" 
            onselectedindexchanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Path") %>' />
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Height="21px" Text="Delete" 
                    Width="50px" CommandName="select" />
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <br />
        <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click"><h5 class="yellow-text-underline">Return to Picture Gallery Modify Tool.</h5></asp:LinkButton>
        <br />
        <asp:LinkButton ID="LinkButton5" runat="server" onclick="LinkButton5_Click" 
            PostBackUrl="~/Admin/PicAdmin/PictureGallery_Update.aspx"><h5 class="yellow-text-underline">Return to Picture Gallery Update Tool.</h5></asp:LinkButton>
    </asp:Panel>
    <asp:Panel ID="Panel_HomePic" runat="server" Visible="False" Width="75%">
        <h3>Find the picture you are looking for, and click on the Delete button, to remove the picture from the website.</h3>
        <br />
        <br />
        <asp:DataList ID="DataList2" runat="server" BorderColor="White" 
            BorderWidth="2px" DataKeyField="ID" DataSourceID="AccessDataSource2" 
            GridLines="Both" RepeatDirection="Horizontal" RepeatColumns="6" 
            onselectedindexchanged="DataList2_SelectedIndexChanged">
            <ItemTemplate>
                <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("FilePath") %>' />
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" Height="20px"  CommandName="select" 
                    Text="Delete" Width="47px" />
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <br />
        <asp:LinkButton ID="LinkButton6" runat="server" onclick="LinkButton6_Click"><h5 class="yellow-text-underline">Return to Picture Gallery Modify Tool.</h5></asp:LinkButton>
        <br />
        <asp:LinkButton ID="LinkButton7" runat="server" onclick="LinkButton7_Click" 
            PostBackUrl="~/Admin/PicAdmin/PictureGallery_Update.aspx"><h5 class="yellow-text-underline">Return to Picture Gallery Update Tool.</h5></asp:LinkButton>
    </asp:Panel>
    <asp:Panel ID="Panel_RecentPic" runat="server" Visible="False" Width="75%">
        <h3>Find the picture you are looking for, and click on the Delete button, to remove the picture from the website.</h3>
        <br />
        <br />
        <asp:DataList ID="DataList3" runat="server" BorderColor="White" 
            BorderWidth="2px" DataKeyField="ID" DataSourceID="AccessDataSource3" 
            GridLines="Both" RepeatDirection="Horizontal" 
            onselectedindexchanged="DataList3_SelectedIndexChanged" RepeatColumns="4">
            <ItemTemplate>
                <asp:Image ID="Image3" runat="server" ImageUrl='<%# Eval("Image_Path") %>' />
                <br />
                <br />
                <asp:Button ID="Button3" runat="server" Height="19px" CommandName="select" 
                    Text="Delete" Width="44px" />
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <br />
        <asp:LinkButton ID="LinkButton8" runat="server" onclick="LinkButton8_Click"><h5 class="yellow-text-underline">Return to Picture Gallery Modify Tool.</h5></asp:LinkButton>
        <br />
        <asp:LinkButton ID="LinkButton9" runat="server" onclick="LinkButton9_Click" 
            PostBackUrl="~/Admin/PicAdmin/PictureGallery_Update.aspx"><h5 class="yellow-text-underline">Return to Picture Gallery Update Tool.</h5></asp:LinkButton>
    </asp:Panel>
    <asp:Panel ID="Panel_Pic_Category" runat="server" Visible="False" 
    Width="75%">
        <table>
            <tr>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        DataSourceID="AccessDataSource4" DataTextField="Category" DataValueField="ID">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" />
                </td>
            </tr>
        </table>  
        <br />
        <br />
        <asp:LinkButton ID="LinkButton11" runat="server"><h5 class="yellow-text-underline">Return to Picture Gallery Modify Tool.</h5></asp:LinkButton>
        <br />
        <asp:LinkButton ID="LinkButton12" runat="server" PostBackUrl="~/Admin/PicAdmin/PictureGallery_Update.aspx"><h5 class="yellow-text-underline">Return to Picture Gallery Update Tool.</h5></asp:LinkButton>
    </asp:Panel>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/ARC_ORG_DB.mdb" 
        DeleteCommand="DELETE FROM Icons WHERE (Path = ?)" 
        InsertCommand="INSERT INTO [Icons] ([ID], [Icon_Name], [Path]) VALUES (?, ?, ?)" 
        SelectCommand="SELECT * FROM [Icons]" 
        
        UpdateCommand="UPDATE [Icons] SET [Icon_Name] = ?, [Path] = ? WHERE [ID] = ?">
        <UpdateParameters>
            <asp:Parameter Name="Icon_Name" Type="String" />
            <asp:Parameter Name="Path" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="Icon_Name" Type="String" />
            <asp:Parameter Name="Path" Type="String" />
        </InsertParameters>
    </asp:AccessDataSource>
    <asp:AccessDataSource ID="AccessDataSource2" runat="server" 
        DataFile="~/App_Data/ARC_ORG_DB.mdb" 
        DeleteCommand="DELETE FROM [Home_Picture] WHERE [FilePath] = ?" 
        InsertCommand="INSERT INTO [Home_Picture] ([ID], [FileName], [FilePath]) VALUES (?, ?, ?)" 
        SelectCommand="SELECT * FROM [Home_Picture]" 
        
        UpdateCommand="UPDATE [Home_Picture] SET [FileName] = ?, [FilePath] = ? WHERE [ID] = ?">
        <UpdateParameters>
            <asp:Parameter Name="FileName" Type="String" />
            <asp:Parameter Name="FilePath" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="FileName" Type="String" />
            <asp:Parameter Name="FilePath" Type="String" />
        </InsertParameters>
    </asp:AccessDataSource>
    <asp:AccessDataSource ID="AccessDataSource3" runat="server" 
    DataFile="~/App_Data/ARC_ORG_DB.mdb" 
    DeleteCommand="DELETE FROM [Recent_Pictures] WHERE [Image_Path] = ?" 
    InsertCommand="INSERT INTO [Recent_Pictures] ([ID], [Image_Name], [Image_Path]) VALUES (?, ?, ?)" 
    SelectCommand="SELECT * FROM [Recent_Pictures]" 
    
        UpdateCommand="UPDATE [Recent_Pictures] SET [Image_Name] = ?, [Image_Path] = ? WHERE [ID] = ?">
        <UpdateParameters>
            <asp:Parameter Name="Image_Name" Type="String" />
            <asp:Parameter Name="Image_Path" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="Image_Name" Type="String" />
            <asp:Parameter Name="Image_Path" Type="String" />
        </InsertParameters>
</asp:AccessDataSource>
    <asp:AccessDataSource ID="AccessDataSource4" runat="server" 
    DataFile="~/App_Data/ARC_ORG_DB.mdb" 
    DeleteCommand="DELETE FROM [Picture_Categories] WHERE [ID] = ?" 
    InsertCommand="INSERT INTO [Picture_Categories] ([ID], [Category]) VALUES (?, ?)" 
    SelectCommand="SELECT * FROM [Picture_Categories]" 
    UpdateCommand="UPDATE [Picture_Categories] SET [Category] = ? WHERE [ID] = ?">
        <DeleteParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="ID" 
                PropertyName="SelectedValue" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="Category" Type="String" />
        </InsertParameters>
</asp:AccessDataSource>
</asp:Content>
