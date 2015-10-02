<%@ Page Title="Sports & Fitness Forms Update Tool" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="SportsandFitness_Forms_Update_Tool.aspx.cs" Inherits="ARC.Admin.UserAdmin.SportsandFitness_Forms_Update_Tool" ValidateRequest="false" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div align="center">
        <asp:Label ID="Label1" runat="server" Text="Sports & Fitness Forms Update Tool" Font-Size="X-Large" 
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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="ID" DataSourceID="AccessDataSource1" ShowHeader="false" GridLines="Both" OnRowEditing="GridView1_OnRowEditing"
             OnRowUpdating="GridView1_OnRowUpdating">
            <Columns>
                <asp:CommandField ButtonType="Button" ShowEditButton="true" ShowDeleteButton="true" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <div align="center" style="padding: 10px">
                            <%--<asp:Label ID="Label2" runat="server" Text='<%# Eval("FormName") %>' CssClass="staff"></asp:Label>--%>
                            <h3><%# Eval("FormName") %></h3>
                        </div>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <div align="center" style="padding: 10px">
                            <asp:TextBox  ID="TextBox1" runat="server" Text='<%# Eval("FormName") %>'></asp:TextBox>
                        </div>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <div align="center" style="padding: 10px" >
                            <asp:HyperLink ID="HyperLink2" runat="server" 
                                NavigateUrl='<%# Eval("FormPath") %>' 
                                Text="View Form" CssClass="staff_link"></asp:HyperLink>
                        </div>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <div align="center" style="padding: 10px">
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </div>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <div style="padding: 10px; width: 300px;">
                            <%--<asp:Label ID="Label3" runat="server" Text='<%# Eval("FormDescription") %>' 
                                CssClass="staff"></asp:Label>--%>
                            <h3><%# Eval("FormDescription") %></h3>
                        </div>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <div align="center" style="padding: 10px">
                            <asp:TextBox  ID="TextBox2" runat="server" Width="300px" TextMode="MultiLine" Text='<%# Eval("FormDescription") %>'></asp:TextBox>
                        </div>
                    </EditItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
    <br />
    <br />
    <table>
        <tr>
            <td>
                <h3>To add new Forms </h3>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click"><h3 class="yellow-text-underline">Click Here!</h3></asp:LinkButton>
            </td>
        </tr>
    </table>  
    <br />
    <br />
    <asp:Panel ID="Panel1" runat="server" Visible="false" HorizontalAlign="Center">
        <table style="width: 75%;">
            <tr>
                <td align="right" width="25%" style="padding-right: 10px">
                    <asp:Label ID="Label3" runat="server" Text="<h3>Form Name: </h3>"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="100%" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" style="padding-right: 10px">
                    <asp:Label ID="Label6" runat="server" Text="<h3>Form Description: </h3>"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="100%" Height="170px" 
                        TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" style="padding-right: 10px">
                    <asp:Label ID="Label5" runat="server" Text="<h3>Form File: </h3>"></asp:Label>
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
    </asp:Panel>    
    <br />
    <br />
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/tools.aspx" CssClass="yellow-text-underline">Back to the Tools Page.</asp:HyperLink>  
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/ARC_ORG_DB.mdb" 
        DeleteCommand="DELETE FROM [SF_Forms] WHERE [ID] = ?" 
        InsertCommand="INSERT INTO [SF_Forms] ([FormName], [FormDescription], [FormPath]) VALUES (?, ?, ?)" 
        SelectCommand="SELECT * FROM [SF_Forms]" 
        
    UpdateCommand="UPDATE [SF_Forms] SET [FormName] = ?, [FormPath] = ?, [FormDescription] = ? WHERE [ID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="FormName" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="TextBox3" Name="FormDescription" 
                PropertyName="Text" Type="String" />
        </InsertParameters>
    </asp:AccessDataSource>
</asp:Content>
