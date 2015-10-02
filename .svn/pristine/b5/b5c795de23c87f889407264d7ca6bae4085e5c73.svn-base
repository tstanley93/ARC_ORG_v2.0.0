<%@ Page Title="eNewsletter Modify" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="eNewsletter_Modify.aspx.cs" Inherits="ARC.Admin.eNewsletter_Modify" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <br />
    <br />
    <div>
        <h1><asp:Label ID="Label1" runat="server" Text="eNewsletter Modify Tool"></asp:Label></h1>
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
    <div style="margin-left: 15px; margin-right: 15px;">
        <asp:GridView ID="GridView1" runat="server" 
            AllowPaging="True" 
            AllowSorting="True" 
            AutoGenerateColumns="False" 
            DataKeyNames="ID" 
            DataSourceID="AccessDataSource1" 
            onselectedindexchanged="GridView1_SelectedIndexChanged" 
            Width="100%" 
            CellPadding="5">
            <PagerSettings Mode="NumericFirstLast" />
            <RowStyle Font-Names="Tahoma,Arial" Font-Size="Medium" BackColor="#E4E4E4" 
                ForeColor="#1C4F81" />
            <EmptyDataRowStyle ForeColor="#184B7E" Font-Size="Medium" />
            <Columns>
                <asp:CommandField ButtonType="Button" ShowCancelButton="true" 
                    ShowDeleteButton="True" ShowEditButton="True" />                
                <asp:BoundField DataField="Issue_Date" HeaderText="Issue_Date" 
                    SortExpression="Issue_Date" DataFormatString="{0:d}" ReadOnly="true" >
                <ItemStyle Font-Size="Small" ForeColor="#1C4F81" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="File_Name" HeaderText="File_Name" 
                    SortExpression="File_Name" ReadOnly="true" >
                <ItemStyle Font-Size="Small" ForeColor="#1C4F81" HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Excerpt" HeaderText="Excerpt" 
                    SortExpression="Excerpt" >
                <ItemStyle Font-Size="Small" ForeColor="#1C4F81" HorizontalAlign="Justify" />               
                </asp:BoundField>
            </Columns>
            <PagerStyle HorizontalAlign="Center" ForeColor="Black" BackColor="#317BA4" />
            <HeaderStyle BackColor="#686868" ForeColor="White" />
            <AlternatingRowStyle Font-Names="Tahoma,Arial" 
                Font-Size="Medium" />
        </asp:GridView>
        <br />
        <br />
    </div>
    <br />
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="yellow-text-underline" 
        Font-Size="Small" NavigateUrl="~/Admin/NewsAdmin/eNewletter_Update.aspx">Return to eNewsletter Update Tool</asp:HyperLink>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/ARC_ORG_DB.mdb" 
        
        SelectCommand="SELECT ID, Issue_Date, File_Name, Excerpt FROM eNewLetter ORDER BY Issue_Date DESC" 
        DeleteCommand="DELETE FROM [eNewLetter] WHERE [ID] = ?" 
        InsertCommand="INSERT INTO [eNewLetter] ([ID], [Issue_Date], [File_Name], [Excerpt]) VALUES (?, ?, ?, ?)" 
        
        
        UpdateCommand="UPDATE [eNewLetter] SET [Issue_Date] = ?, [File_Name] = ?, [Excerpt] = ? WHERE [ID] = ?">
        <DeleteParameters>
            <asp:ControlParameter ControlID="GridView1" Name="ID" 
                PropertyName="SelectedDataKey" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:ControlParameter ControlID="GridView1" Name="Issue_Date" 
                PropertyName="SelectedValue" Type="DateTime" />
            <asp:ControlParameter ControlID="GridView1" Name="File_Name" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="GridView1" Name="Excerpt" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="GridView1" Name="ID" 
                PropertyName="SelectedValue" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="Issue_Date" Type="DateTime" />
            <asp:Parameter Name="File_Name" Type="String" />
            <asp:Parameter Name="Excerpt" Type="String" />
        </InsertParameters>
    </asp:AccessDataSource>
</asp:Content>
