<%@ Page Title="Track and Field" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="TrackandField.aspx.cs" Inherits="ARC.SportsandFitness.TrackandField" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <br />
    <br />
    <div style="text-align: center">
        <h1><asp:Label ID="Label1" runat="server" Text="Track and Field"></asp:Label></h1>
    </div>
    <br />
    <h2 style="margin-left: 15px">Events Offered:</h2>
    <br />
    <br />
    <h3 style="margin-left: 30px">Events identified with ** are designated for athletes with lower ability levels who are unable to participate in the other events.</h3>
    <br />
    <div style="margin-left: 30px">
        <table width="100%">
            <tr>
                <td width="50%" style="padding-top: 10px">
                  <ul style="margin-left: 45px">
                    <li><h3>10 M W/C Race Manual **</h3></li>
                    <li><h3>25 M W/C Race Manual **</h3></li>
                    <li><h3>30 M Motor W/C Slalom **</h3></li>
                    <li><h3>30 M Manual W/C Slalom **</h3></li>
                    <li><h3>100 M W/C Race Manual</h3></li>
                    <li><h3>200 M W/C Race Manual</h3></li>
                    <li><h3>400 M W/C Race Manual</h3></li>
                    <li><h3>25 M Motor W/C Obstacle **</h3></li>
                    <li><h3>50 M Motor W/C Slalom **</h3></li>
                    <li><h3>25 M Asst Walk **</h3></li>
                    <li><h3>50 M Asst Walk **</h3></li>
                    <li><h3>50 M Walk **</h3></li>
                    <li><h3>100 M Walk</h3></li>
                    <li><h3>200 M Walk</h3></li>
                    <li><h3>400 M Walk</h3></li>
                    <li><h3>800 M Walk</h3></li>
                    <li><h3>4x100 M Relay</h3></li>
                    <li><h3>4x400 M Relay</h3></li>
                  </ul>
                </td>
                <td width="50%" style="padding-top: 10px">
                  <ul style="margin-left: 45px">
                    <li><h3>4x400 M Unified Relay</h3></li>
                    <li><h3>110 Hurdle</h3></li>
                    <li><h3>50 M Dash</h3></li>
                    <li><h3>100 M Dash</h3></li>
                    <li><h3>200 M Dash</h3></li>
                    <li><h3>400 M Dash</h3></li>
                    <li><h3>800 M Run</h3></li>
                    <li><h3>1500 M Run</h3></li>
                    <li><h3>Stand Long Jump</h3></li>
                    <li><h3>Running Long Jump</h3></li>
                    <li><h3>High Jump</h3></li>
                    <li><h3>Tennis Ball Throw **</h3></li>
                    <li><h3>Softball Throw</h3></li>
                    <li><h3>W/C Shot Put</h3></li>
                    <li><h3>Shot Put</h3></li>
                    <li><h3>Pentathlon</h3></li>
                    <li><h3>3000 M Unified Run</h3></li>
                    <li><h3>5000 M Unified Run</h3></li>
                  </ul>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
