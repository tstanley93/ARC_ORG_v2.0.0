<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Recurring_Date.aspx.cs" Inherits="ARC.Recurring_Date" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>   
    <script language="javascript" type="text/javascript" src="../arc_gh.js">
    </script> 
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 550px; height: 310px; border:1px solid black;" >
            <my:recurring_dates ID="Recurring_Dates1" runat="server" />
        </div>
        <asp:TextBox ID="TextBox1" runat="server" Visible="false" TextMode="MultiLine"></asp:TextBox>
    </form>
</body>
</html>
