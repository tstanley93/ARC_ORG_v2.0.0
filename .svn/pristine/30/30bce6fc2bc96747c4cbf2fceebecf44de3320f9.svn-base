<%@ Page Title="Donation Email Tool" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Donation_Email_Tool.aspx.cs" Inherits="ARC.Admin.UserAdmin.Donation_Email_Tool" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <script language="javascript" type="text/javascript" src="../../arc_gh.js">
    </script>
    <br />
    <br />
    <div style=" margin-left: 40px;">
        <h2>Donation Email Admin Tool</h2>
        <br />
        <h3>Below are the email addresses that are configured to recieve email when a Donation is requested.  To Remove an email address
        click the delete button next to the email address you want to remove.  Click the "Add" button below to add an email address.</h3>
        <br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="ID" DataSourceID="AccessDataSource1">
            <Columns>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                <asp:BoundField DataField="User Name" HeaderText="User Name" 
                    SortExpression="User Name" />
                <asp:BoundField DataField="Email_Address" HeaderText="Email_Address" 
                    SortExpression="Email_Address" />
            </Columns>
        </asp:GridView>
        <br />
        <h3 style=" margin-left:100px;"><asp:LinkButton ID="LinkButton1" runat="server" 
                CssClass="yellow-text-underline" onclick="LinkButton1_Click">Click to add a new email.</asp:LinkButton></h3>
    </div>
    <br />
    <br />
    <asp:Panel ID="Panel1" runat="server">
        <div style=" margin-left: 40px;">
            <h2>Add a new email reciepient.</h2>
            <br />
            <table>
                <tr>
                    <td><h3>Name:</h3></td>
                    <td><asp:TextBox ID="TextBox1" runat="server" Width="160px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style=" padding-right: 10px;"><h3>Email Address:</h3></td>
                    <td style=" padding-right: 10px;"><asp:TextBox ID="TextBox2" runat="server" Width="160px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server" Text="Cancel" 
                            CssClass="DonationFormCancelButton" onclick="Button2_Click" /></td>
                </tr>
            </table>
        </div>
    </asp:Panel>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/ARC_ORG_DB.mdb" 
        DeleteCommand="DELETE FROM [Donor_Email] WHERE [ID] = ?" 
        InsertCommand="INSERT INTO [Donor_Email] ([User Name], [Email_Address]) VALUES (?, ?)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [Donor_Email]" 
        
        
        
        
        UpdateCommand="UPDATE [Donor_Email] SET [User Name] = ?, [Email_Address] = ? WHERE [ID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>           
            <asp:ControlParameter ControlID="TextBox1" Name="User_Name" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="TextBox2" Name="Email_Address" 
                PropertyName="Text" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="User_Name" Type="String" />
            <asp:Parameter Name="Email_Address" Type="String" />
            <asp:Parameter Name="original_ID" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>
</asp:Content>
