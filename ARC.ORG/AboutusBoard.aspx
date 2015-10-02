<%@ Page Title="Our Board Members" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AboutusBoard.aspx.cs" Inherits="ARC.AboutusBoard" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div align="center">
        <asp:Label ID="Label1" runat="server" Text="Our Board Members" Font-Size="X-Large" 
            Font-Bold="True"></asp:Label>
    </div>
    <br />
    <br />
    <div align="left" style="padding-left: 5px">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="False" AutoGenerateColumns="False" 
            DataKeyNames="ID" DataSourceID="SqlDataSource1" ShowHeader="False" 
            UseAccessibleHeader="False" PageSize="5">
            <Columns>                
                <asp:TemplateField AccessibleHeaderText="Photo">
                    <ItemTemplate>
                        <div align="center">
                            <br />
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("MemberPhotoPath") %>' />
                            <br /><br />
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("MemberName") %>' CssClass="staff"></asp:Label>
                            <br /><br />                        
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval ("MemberTitle") %>' CssClass="staff"></asp:Label>
                            <br /><br />
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <div style="width: 500px; padding-left: 15px;">
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval ("MemberDescription") %>' CssClass="staff"></asp:Label>
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
    <br />
    <br />    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Home_ARC_ORGConnectionString %>" 
        SelectCommand="AboutUS_Board_Select" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
</asp:Content>
