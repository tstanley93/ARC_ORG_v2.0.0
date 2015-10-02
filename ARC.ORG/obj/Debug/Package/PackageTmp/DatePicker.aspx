<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DatePicker.aspx.cs" Inherits="ARC.DatePicker" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calendar</title>
    <script language="javascript" type="text/javascript" src="arc_gh.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <asp:calendar id="Calendar1" runat="server" showgridlines="True" 
            bordercolor="Black" ondayrender="Calendar1_DayRender" 
            onselectionchanged="Calendar1_SelectionChanged">
            <todaydaystyle forecolor="White" backcolor="#FFCC66"/>
            <selectorstyle backcolor="#FFCC66"/>
            <nextprevstyle font-size="9pt" forecolor="#FFFFCC"/>
            <dayheaderstyle height="1px" backcolor="#FFCC66"/>
            <selecteddaystyle font-bold="True" backcolor="#CCCCFF"/>
            <titlestyle font-size="9pt" font-bold="True" forecolor="#FFFFCC" backcolor="#990000"/>
            <othermonthdaystyle forecolor="#CC9966"/>
        </asp:calendar>
    </div>
    </form>
</body>
</html>
