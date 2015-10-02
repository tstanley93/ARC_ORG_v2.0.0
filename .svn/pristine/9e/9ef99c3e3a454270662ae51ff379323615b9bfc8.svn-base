<%@ Page Title="Our Picture Gallery" Language="C#" MasterPageFile="~/Second.Master" AutoEventWireup="true" CodeBehind="PictureGallery.aspx.cs" Inherits="ARC.PictureGallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div>
        <asp:Panel ID="Panel2" runat="server">
            <h3>Please select which Category of pictures you would like to view.</h3>
            <br />
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                AutoPostBack="True">
                <asp:ListItem>Please Choose...</asp:ListItem>
                <asp:ListItem>Parent to Parent</asp:ListItem>
                <asp:ListItem>ArcinRound</asp:ListItem>
                <asp:ListItem>Sports and Fitness</asp:ListItem>
                <asp:ListItem>ARC Events</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
        </asp:Panel>
        <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center" Visible="False">
            <asp:DataList ID="DataList1" runat="server" BorderColor="White" 
                BorderStyle="Groove" BorderWidth="2px" DataKeyField="ID" 
                DataSourceID="" GridLines="Vertical" 
                RepeatDirection="Horizontal" RepeatColumns="4" 
                onselectedindexchanged="DataList1_SelectedIndexChanged" 
                UseAccessibleHeader="True">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image_Path") %>' />
                    <br />
                    <br />
                    <asp:LinkButton ID="LinkButton1" 
                        runat="server"
                        CommandName="select">View
                    </asp:LinkButton>
                    <br />
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
    </div>
</asp:Content>
