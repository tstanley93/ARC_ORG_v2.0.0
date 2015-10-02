<%@ Page Title="Forms" Language="C#" MasterPageFile="../Main.Master" AutoEventWireup="true" CodeBehind="Forms.aspx.cs" Inherits="ARC.SportsandFitness.Forms" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div style="padding: 10px;">
    <br />
    <br />
    <div align="left">
        <h3>The forms listed below are used as part of the Sports and Fitness program and as 
        the Special Olympics Washington tournaments that we compete in.</h3>
        <br />
        <br />
    </div>
    <br />
    <br />
    <div align="center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="ID" DataSourceID="SqlDataSource1" ShowHeader="false" GridLines="Both" CssClass="bord">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <div align="center" style="padding: 10px">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("FormName") %>' CssClass="staff"></asp:Label>
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <div align="center" style="padding: 10px" >
                            <asp:HyperLink ID="HyperLink2" runat="server" 
                                NavigateUrl='<%# Eval("FormPath") %>' 
                                Text="View Form" CssClass="staff_link"></asp:HyperLink>
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <div style="padding: 10px; width: 300px;">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("FormDescription") %>' 
                                CssClass="staff"></asp:Label>
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
    <br />
    <br />
</div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:Home_ARC_ORGConnectionString %>" 
        SelectCommand="SportsandFitness_Forms_Select" 
        SelectCommandType="StoredProcedure" 
        ProviderName="<%$ ConnectionStrings:Home_ARC_ORGConnectionString.ProviderName %>"></asp:SqlDataSource>
</asp:Content>
