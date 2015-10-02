<%@ Page Title="Arc Blog User Admin" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Blog_User_Admin.aspx.cs" Inherits="ARC.Admin.UserAdmin.Blog_User_Admin" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
        <br />
        <br />
        <h1 style="margin-left: 100px;">Blog Author Admin Tool</h1>
        <br />
        <h3 style="margin-left: 125px;">Below are the configured Authors of articles of the Blog.</h3>
        <br />
        <br />
        <br />
        <div style="margin-left: 150px;">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID"
                DataSourceID="AccessDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ButtonType="Button" />
                    <asp:BoundField DataField="username" HeaderText="User Name" SortExpression="username" />
                    <asp:BoundField DataField="names" HeaderText="Author Name" SortExpression="names" />
                </Columns>
            </asp:GridView>
        </div>
        <br />
        <br />
    <div style="margin-left: 100px;">
        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="yellow-text-underline" OnClick="LinkButton1_Click">Click Here, to Add a new Author.</asp:LinkButton>
    </div>
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server" Visible="false">
            <h1 style="margin-left: 100px;">Add a new author.</h1>
            <br />
            <div style="margin-left: 150px;">
                <table>
                    <tr>
                        <td style="text-align: left;">
                            <h3>
                                User Name:</h3>
                        </td>
                        <td style="margin-right: 10px; text-align: left;">
                            <asp:TextBox ID="TextBox1" runat="server" Width="160px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-right: 10px;">
                            <h3>
                                Author Name:</h3>
                        </td>
                        <td style="padding-right: 10px;">
                            <asp:TextBox ID="TextBox2" runat="server" Width="160px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding-right: 10px;">
                            <h3>
                                Author's Password:</h3>
                        </td>
                        <td style="padding-right: 10px;">
                            <asp:TextBox ID="TextBox3" runat="server" Width="160px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                            <asp:Button ID="Button2" runat="server" Text="Cancel" CssClass="DonationFormCancelButton"
                                OnClick="Button2_Click" />
                        </td>
                    </tr>
                </table>
            </div>
        </asp:Panel>
    <asp:Literal ID="Literal1" runat="server" Visible="false"></asp:Literal>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/Arc_Blog/App_Data/TihBlogData.mdb" 
        DeleteCommand="DELETE FROM [Authors] WHERE [ID] = ?" 
        InsertCommand="INSERT INTO [Authors] ([username], [password], [names]) VALUES (?, ?, ?)" 
        SelectCommand="SELECT * FROM [Authors]"         
        UpdateCommand="UPDATE [Authors] SET [username] = ?, [password] = ?, [names] = ?, [resume] = ?, [pictureURL] = ? WHERE [ID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="username" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="TextBox3" Name="password" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="TextBox2" Name="names" PropertyName="Text" 
                Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="names" Type="String" />
            <asp:Parameter Name="resume" Type="String" />
            <asp:Parameter Name="pictureURL" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>
</asp:Content>
