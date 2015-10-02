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
    <asp:Panel ID="Panel1" runat="server" Width="75%" CssClass="">
        <div style="margin-left: 25%;">
            <h3>
                Please select which type of picture you would like to modify.</h3>
            <ol>
                <li><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"><h3 class="yellow-text-underline">Calendar Icons</h3></asp:LinkButton></li>
                <li><asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click"><h3 class="yellow-text-underline">Home Page Pictures</h3></asp:LinkButton></li>
                <li><asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click"><h3 class="yellow-text-underline">Recent Pictures</h3></asp:LinkButton></li>
            </ol>
            <table>
                <tr>
                    <td>
                        <h3>
                            To delete a picture category,
                        </h3>
                    </td>
                    <td>
                        <asp:LinkButton ID="LinkButton10" runat="server" OnClick="LinkButton10_Click1"><h3 class="yellow-text-underline">Click Here.</h3></asp:LinkButton>
                    </td>
                </tr>
            </table>
        </div>
    </asp:Panel>
    <br />
    <br />
    <asp:Panel ID="Panel_Icon" runat="server" Visible="False" Width="75%">
        <h3 style="margin-left: 75px;">Find the picture you are looking for, and click on the Delete button, to remove the picture from the website.</h3>
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" BorderColor="White" 
            BorderWidth="2px" DataKeyField="ID" DataSourceID="" 
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
        <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click"><h3 class="yellow-text-underline">Return to Picture Gallery Modify Tool.</h3></asp:LinkButton>
        <br />
        <asp:LinkButton ID="LinkButton5" runat="server" onclick="LinkButton5_Click" 
            PostBackUrl="~/Admin/PicAdmin/PictureGallery_Update.aspx"><h3 class="yellow-text-underline">Return to Picture Gallery Update Tool.</h3></asp:LinkButton>
    </asp:Panel>
    <asp:Panel ID="Panel_HomePic" runat="server" Visible="False" Width="75%">
        <h3 style="margin-left: 75px;">Find the picture you are looking for, and click on the Delete button, to remove the picture from the website.</h3>
        <br />
        <br />
        <asp:DataList ID="DataList2" runat="server" BorderColor="White" 
            BorderWidth="2px" DataKeyField="ID" DataSourceID="" 
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
        <asp:LinkButton ID="LinkButton6" runat="server" onclick="LinkButton6_Click"><h3 class="yellow-text-underline">Return to Picture Gallery Modify Tool.</h3></asp:LinkButton>
        <br />
        <asp:LinkButton ID="LinkButton7" runat="server" onclick="LinkButton7_Click" 
            PostBackUrl="~/Admin/PicAdmin/PictureGallery_Update.aspx"><h3 class="yellow-text-underline">Return to Picture Gallery Update Tool.</h3></asp:LinkButton>
    </asp:Panel>
    <asp:Panel ID="Panel_RecentPic" runat="server" Visible="False" Width="75%">
        <h3 style="margin-left: 75px;">Find the picture you are looking for, and click on the Delete button, to remove the picture from the website.</h3>
        <br />
        <br />
        <asp:DataList ID="DataList3" runat="server" BorderColor="White" 
            BorderWidth="2px" DataKeyField="ID" DataSourceID="" 
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
        <asp:LinkButton ID="LinkButton8" runat="server" onclick="LinkButton8_Click"><h3 class="yellow-text-underline">Return to Picture Gallery Modify Tool.</h3></asp:LinkButton>
        <br />
        <asp:LinkButton ID="LinkButton9" runat="server" onclick="LinkButton9_Click" 
            PostBackUrl="~/Admin/PicAdmin/PictureGallery_Update.aspx"><h3 class="yellow-text-underline">Return to Picture Gallery Update Tool.</h3></asp:LinkButton>
    </asp:Panel>
    <asp:Panel ID="Panel_Pic_Category" runat="server" Visible="False" 
    Width="75%">
        <table>
            <tr>
                <td>                    
                    <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="Category" DataValueField="ID">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" />
                </td>
            </tr>
        </table>  
        <br />
        <br />
        <asp:LinkButton ID="LinkButton11" runat="server"><h3 class="yellow-text-underline">Return to Picture Gallery Modify Tool.</h3></asp:LinkButton>
        <br />
        <asp:LinkButton ID="LinkButton12" runat="server" PostBackUrl="~/Admin/PicAdmin/PictureGallery_Update.aspx"><h3 class="yellow-text-underline">Return to Picture Gallery Update Tool.</h3></asp:LinkButton>
    </asp:Panel>
    <br />
    <br />
    </asp:Content>
