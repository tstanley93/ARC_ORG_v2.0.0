<%@ Page Title="Our Past eNewsletter Issues" Language="C#" MasterPageFile="~/Second.Master" AutoEventWireup="true" CodeBehind="past_eNewsletter_issues.aspx.cs" Inherits="ARC.past_eNewsletter_issues" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <br />
    <br />
    <div style="margin-left: 100px;">
        <h1><asp:Label ID="Label1" runat="server" Text="Our Previous eNewsletter Issues"></asp:Label></h1>
    </div>
    <br />
    <br />
    <div style="margin-left: 15px; margin-right: 15px">
        <asp:GridView ID="GridView1" runat="server" 
            AllowPaging="True" 
            AllowSorting="True" 
            AutoGenerateColumns="False"  
            DataKeyNames="ID"                       
            DataSourceID="SqlDataSource1"             
            onselectedindexchanged="GridView1_SelectedIndexChanged"             
            Width="100%" 
            CellPadding="5">
            <PagerSettings Mode="NumericFirstLast" />
            <RowStyle Font-Names="Tahoma,Arial" Font-Size="Medium" BackColor="#E4E4E4" 
                ForeColor="#1C4F81" />
            <EmptyDataRowStyle ForeColor="#184B7E" Font-Size="Medium" />
            <Columns>
                <asp:CommandField SelectText="Read" ShowSelectButton="True" ButtonType="Button">
                <ItemStyle Font-Size="Medium" />
                </asp:CommandField>                               
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
    </div>
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Home_ARC_ORGConnectionString %>" 
        SelectCommand="SELECT * FROM [eNewLetter]" 
        DeleteCommand="DELETE FROM eNewLetter WHERE (ID = @ID)" 
        InsertCommand="INSERT INTO eNewLetter(ID, Issue_Date, File_Name, Excerpt, Flag01, Flag02, Flag03) VALUES (@ID, @Issue_Date, @File_Name, @Excerpt, @Flag01, @Flag02, @Flag03)" 
        UpdateCommand="UPDATE eNewLetter SET Issue_Date = @Issue_Date, File_Name = @File_Name, Excerpt = @Excerpt, Flag01 = @Flag01, Flag02 = @Flag02, Flag03 = @Flag03 WHERE (ID = @ID)">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="Issue_Date" Type="DateTime" />
            <asp:Parameter Name="File_Name" Type="String" />
            <asp:Parameter Name="Excerpt" Type="String" />
            <asp:Parameter Name="Flag01" Type="String" />
            <asp:Parameter Name="Flag02" Type="String" />
            <asp:Parameter Name="Flag03" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Issue_Date" Type="DateTime" />
            <asp:Parameter Name="File_Name" Type="String" />
            <asp:Parameter Name="Excerpt" Type="String" />
            <asp:Parameter Name="Flag01" Type="String" />
            <asp:Parameter Name="Flag02" Type="String" />
            <asp:Parameter Name="Flag03" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
