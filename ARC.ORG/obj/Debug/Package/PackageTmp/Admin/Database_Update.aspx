<%@ Page Title="Datbase Update Tool" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Database_Update.aspx.cs" Inherits="ARC.Admin.Database_Update" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div>
        <h3>This tool is specifically for make large changes to the database by the website admin.  If you are not the 
            the website admin.  Leave this page!</h3>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Go!" onclick="Button1_Click" />
        <br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    </div>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/ARC_ORG_DB.mdb" 
        DeleteCommand="DELETE FROM [Event_Calendar] WHERE [ID] = ?" 
        InsertCommand="INSERT INTO Event_Calendar(Real_Date) VALUES (?)" 
        SelectCommand="SELECT * FROM [Event_Calendar]" 
        UpdateCommand="UPDATE [Event_Calendar] SET [Real_Date] = ? WHERE [ID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="TextBox1" DbType="DateTime" Name="Real_Date" PropertyName="Text"/>
        </InsertParameters>
        <UpdateParameters>
            <asp:ControlParameter ControlID="TextBox1" DbType="DateTime" Name="Real_Date" 
                PropertyName="Text" />
            <asp:ControlParameter ControlID="TextBox2" Name="ID" PropertyName="Text" 
                Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>

</asp:Content>
