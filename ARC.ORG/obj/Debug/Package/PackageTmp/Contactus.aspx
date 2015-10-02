<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Contactus.aspx.cs" Inherits="ARC.Contactus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
<div style="padding: 10px;">
    <br />
    <br />
    <h3>To learn more about us.......</h3><br />
    <br />
    <div>        
        <ul class="yellow-text-regular" style="font-size: 14px; font-weight: bold;">
            <li><h3>The ArcGH Office: 1-360-537-7000 or Toll Free at 1-866-537-7272</h3></li>
            <br />
            <li><h3>Email The Arc of Grays Harbor and it&#39;s programs.</h3><br />
                <ul class="yellow-text-regular" style="font-size: 14px; font-weight: bold;">
                    <li>
                        <h3>
                                                        The Arc office:  <i>thearc@arcgh.org</i></h3>
                    </li>
                </ul>
                <ul class="yellow-text-regular" style="font-size: 14px; font-weight: bold;">
                    <li>
                        <h3>
                                                        Executive Director:  <i>thearcexec@arcgh.org</i></h3>
                    </li>
                </ul>
                <ul class="yellow-text-regular" style="font-size: 14px; font-weight: bold;">
                    <li>
                        <h3>
                                                        Sports and Fitness:  <i>sportsandfitness@arcgh.org</i></h3>
                    </li>
                </ul>
                <ul class="yellow-text-regular" style="font-size: 14px; font-weight: bold;">
                    <li>
                        <h3>
                                                        Arcin' Round the Community:  <i>arcinround@arcgh.org</i></h3>
                    </li>
                </ul>
                <ul class="yellow-text-regular" style="font-size: 14px; font-weight: bold;">
                    <li>
                        <h3>
                            Parent-to-Parent:  <i>p2pgh@arcgh.org</i></h3>
                    </li>
                </ul>
            <br />
            <li><h3>Fill out the Contact Form below.</h3></li>
        </ul>
    </div>
    <br />
    <br />
    <div align="center">
        <table class="bord" style="width: 75%;">
            <tr>
                <td width="30%">
                    <asp:Label ID="Label1" runat="server" Text="<h3>Your Email Address:</h3>"></asp:Label>
                </td>
                <td style=" padding-right: 10px;">
                    <asp:TextBox ID="TextBox1" runat="server" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="<h3>Subject:</h3>"></asp:Label>
                </td>
                <td style=" padding-right: 10px;">
                    <asp:TextBox ID="TextBox2" runat="server" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td valign="top">
                    <asp:Label ID="Label3" runat="server" Text="<h3>Your Question:</h3>"></asp:Label>
                </td>
                <td style=" padding-right: 10px;">
                    <asp:TextBox ID="TextBox3" runat="server" Width="100%" Height="118px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
                <td align="left" style="padding: 5px">
                   <asp:Button ID="Button1" runat="server" Text="Send" Width="15%" /> 
                </td>
            </tr>
        </table>
        <br />        
    </div>
</div>  
</asp:Content>
