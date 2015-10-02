<%@ Page Title="Event Calendar" Language="C#" MasterPageFile="~/Second.Master" AutoEventWireup="true" CodeBehind="Calendar.aspx.cs" Inherits="ARC.Calendar" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <asp:Calendar ID="Calendar2" 
        OnDayRender="Calendar1_DayRender" 
        runat="server" 
        NextPrevFormat="FullMonth" 
        ShowGridLines="True" 
        Width="100%"  
        ToolTip="Hover mouse over an Event Icon, to see additional information." 
        TitleFormat="Month" 
        SelectionMode="None" 
        UseAccessibleHeader="False" 
        EnableTheming="False">
        <SelectedDayStyle BackColor="#44697D" BorderColor="#EA7125" />
        <TodayDayStyle BorderColor="#FECB00" BorderWidth="3px" BorderStyle="Solid"></TodayDayStyle>
        <OtherMonthDayStyle BackColor="#474747" Font-Size="Medium" ForeColor="#FECB00" />
        <DayStyle BackColor="white" Font-Names="Verdana" Font-Size="Medium" ForeColor="black" Height="150px" HorizontalAlign="Left" VerticalAlign="Top" />
        <DayHeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#44697D" Font-Size="Large" Font-Names="Trebuchet MS" ForeColor="white" Height="35px" Wrap="False" />
        <TitleStyle BackColor="#EA7125" Font-Size="18px" Font-Names="Trebuchet MS" Font-Bold="true" Height="35px" ForeColor="White" Wrap="False" />
        <NextPrevStyle ForeColor="White" Font-Names="Trebuchet MS" Font-Size="Large" Font-Bold="true" />
    </asp:Calendar>
</asp:Content>
