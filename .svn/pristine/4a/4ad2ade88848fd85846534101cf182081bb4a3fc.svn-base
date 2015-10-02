<%@ Page Title="Staff Update Tool" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Staff_Update_Tool.aspx.cs" Inherits="ARC.Admin.UserAdmin.Staff_Update_Tool" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div align="center">
        <asp:Label ID="Label1" runat="server" Text="Staff Update Tool" Font-Size="X-Large" 
            Font-Bold="True"></asp:Label>
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
    <div align="center">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" 
            DataKeyNames="ID" DataSourceID="AccessDataSource1" ShowHeader="False" 
            UseAccessibleHeader="False" PageSize="3" OnRowUpdating="GridView1_OnRowUpdating"
            OnRowEditing="GridView1_OnRowEditing">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" />
                <asp:TemplateField AccessibleHeaderText="Photo">
                    <ItemTemplate>
                        <br />
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("MemberPhotoPath") %>' />
                        <br /><br />
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("MemberName") %>' CssClass="staff"></asp:Label>
                        <br /><br />                        
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval ("MemberTitle") %>' CssClass="staff"></asp:Label>
                        <br /><br />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <table style="width: 100%;">
                            <tr>
                                <td align="right" nowrap="nowrap">
                                    <asp:Label ID="Label10" runat="server" 
                                    Text="&lt;h3&gt;New Photo Path:  &lt;/h3&gt;"></asp:Label>
                                </td>
                                <td style="padding-left: 10px">
                                    <asp:FileUpload ID="FileUpload2" runat="server" Width="200px" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right" nowrap="nowrap">
                                    <asp:Label ID="Label11" runat="server" Text="&lt;h3&gt;Member Name:  &lt;/h3&gt;"></asp:Label>
                                </td>
                                <td style="padding-left: 10px">
                                    <asp:TextBox ID="TextBox6" runat="server" Width="200px" Text='<%# Eval("MemberName") %>'></asp:TextBox>
                                </td>                               
                            </tr>
                            <tr>
                                <td align="right" nowrap="nowrap">
                                    <asp:Label ID="Label12" runat="server" Text="&lt;h3&gt;Member Title:  &lt;/h3&gt;"></asp:Label>
                                </td>
                                <td style="padding-left: 10px">
                                    <asp:TextBox ID="TextBox7" runat="server" Width="200px" Text='<%# Eval ("MemberTitle") %>'></asp:TextBox>
                                </td>                                
                            </tr>
                            <tr>
                                <td align="right" nowrap="nowrap">
                                    <asp:Label ID="Label9" runat="server" Text="&lt;h3&gt;Order of Appearance: &lt;/h3&gt; "></asp:Label>
                                </td>
                                <td align="left" style="padding-left: 10px">
                                    <asp:TextBox ID="TextBox8" runat="server" Width="10%" Text='<%# Eval ("Order") %>'></asp:TextBox>
                                </td>
                            </tr>
                        </table>                       
                    </EditItemTemplate>
                </asp:TemplateField>
                <%--<asp:BoundField DataField="MemberDescription" ItemStyle-CssClass="staff" />--%>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval ("MemberDescription") %>' CssClass="staff"></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Label ID="Label13" runat="server" Text="<h3>Description:  </h3>"></asp:Label><br />
                        <asp:TextBox ID="TextBox5" runat="server" Height="200px" TextMode="MultiLine" 
                            Width="350px" Text='<%# Eval ("MemberDescription") %>'></asp:TextBox>
                    </EditItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
    <br />
    <br />
    <div align="center">
        <h3>Fill out the form below to add a new staff member.</h3>
        <br />
        <br />
        <table style="width: 75%;">
            <tr>
                <td align="right" width="25%" style="padding-right: 10px">
                    <asp:Label ID="Label3" runat="server" Text="<h3>Member Name</h3>"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="100%" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" style="padding-right: 10px">
                    <asp:Label ID="Label4" runat="server" Text="<h3>Member Title</h3>"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="100%" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" style="padding-right: 10px">
                    <asp:Label ID="Label6" runat="server" Text="<h3>Member Description</h3>"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="100%" Height="170px" 
                        TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" style="padding-right: 10px">
                    <asp:Label ID="Label7" runat="server" Text="<h3>Order of Appearance</h3>"></asp:Label>
                </td>
                <td align="left">
                    <asp:TextBox ID="TextBox4" runat="server" Width="10%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" style="padding-right: 10px">
                    <asp:Label ID="Label5" runat="server" Text="<h3>Photo</h3>"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="100%" />
                </td>
            </tr>
            <tr>
                <td></td>
                <td align="left" style="padding: 5px">
                    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
                </td>
            </tr>
        </table>
    </div>
    <br />
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/tools.aspx" CssClass="yellow-text-underline">Back to the Tools Page.</asp:HyperLink>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
    DataFile="~/App_Data/ARC_ORG_DB.mdb" 
    DeleteCommand="DELETE FROM [Staff] WHERE [ID] = ?" 
    InsertCommand="INSERT INTO [Staff] ([MemberName], [MemberDescription], [Order], [MemberTitle], [MemberPhotoPath]) VALUES (?, ?, ?, ?, ?)" 
    SelectCommand="SELECT ID, MemberName, MemberPhotoPath, MemberDescription, [Order], MemberTitle FROM Staff ORDER BY [Order]"                         
    UpdateCommand="UPDATE [Staff] SET [MemberName] = ?, [MemberDescription] = ?, [Order] = ?, [MemberTitle] = ?,  [MemberPhotoPath] = ? WHERE [ID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="MemberName" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox3" Name="MemberDescription" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox4" Name="Order" PropertyName="Text" Type="Int32" />
            <asp:ControlParameter ControlID="TextBox2" Name="MemberTitle" PropertyName="Text" Type="String" />
        </InsertParameters>
    </asp:AccessDataSource>
</asp:Content>
