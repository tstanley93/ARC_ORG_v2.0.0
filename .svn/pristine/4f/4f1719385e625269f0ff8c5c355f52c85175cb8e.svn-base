<%@ Page Title="Login Page" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ARC.Admin.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div align="center">
        <br />
        <br />
        <div>
            <h1><asp:Label ID="Label1" runat="server" Text="Login Page"></asp:Label></h1>
        </div>
        <br />
        <br />
        <h3>To access the admin pages, please type in your username and password.</h3>
        <br />
        <br />
        <asp:Login ID="Login1" runat="server" DestinationPageUrl="~/Admin/tools.aspx" 
            DisplayRememberMe="False" Orientation="Horizontal" 
            PasswordLabelText="&lt;h3&gt;Password:&lt;/h3&gt;" 
            TitleText="&lt;h3&gt;Log In&lt;/h3&gt;&lt;br/&gt;" 
            UserNameLabelText="&lt;h3&gt;User Name:&lt;/h3&gt;" TabIndex="1">
        </asp:Login>
        <br />
        <asp:ValidationSummary 
            ID="ValidationSummary1" 
            runat="server" 
            ValidationGroup="Login1" 
            ShowMessageBox="True" />
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server">
            <h3>Forgot your password? <asp:LinkButton ID="LinkButton1" runat="server" CssClass="yellow-text-underline" Font-Size="Small" onclick="LinkButton1_Click">Click Here.</asp:LinkButton></h3>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Visible="False">
            <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" 
                    UserNameInstructionText="&lt;h3&gt;Enter your User Name to receive your password.&lt;/h3&gt;&lt;br/&gt;" 
                    UserNameLabelText="&lt;h3&gt;User Name:&lt;/h3&gt;" 
                    UserNameTitleText="" 
                AnswerLabelText="&lt;h3&gt;Answer:&lt;/h3&gt;" 
                QuestionInstructionText="&lt;h3&gt;Answer the following question to receive your password.&lt;/h3&gt;&lt;br/&gt;" 
                QuestionLabelText="&lt;h3&gt;Question:&lt;/h3&gt;" 
                QuestionTitleText="&lt;h3&gt;Identity Confirmation&lt;/h3&gt;" 
                SuccessText="&lt;h3&gt;Your password has been sent to you.&lt;/h3&gt;">
                <MailDefinition From="thearc@techline.com" 
                    Subject="Your new password for the ARC Of Greys Harbor Website">
                </MailDefinition>
            </asp:PasswordRecovery>
        </asp:Panel>    
        <br />
        <br />
        <asp:Panel ID="Panel3" runat="server">
            <h3>To change your password, <asp:LinkButton ID="LinkButton2" runat="server" CssClass="yellow-text-underline" Font-Size="Small" onclick="LinkButton2_Click">Click Here.</asp:LinkButton></h3>
        </asp:Panel>
        <asp:Panel ID="Panel4" runat="server" Visible="False">
             <asp:ChangePassword ID="ChangePassword1" runat="server" 
                ChangePasswordTitleText="" 
                ConfirmNewPasswordLabelText="&lt;h3&gt;Confirm New Password:&lt;/h3&gt;" 
                NewPasswordLabelText="&lt;h3&gt;New Password:&lt;/h3&gt;" 
                PasswordLabelText="&lt;h3&gt;Current Password:&lt;/h3&gt;" 
                SuccessText="&lt;h3&gt;Your password has been changed!&lt;/h3&gt;" 
                SuccessTitleText="&lt;h3&gt;Change Password Complete&lt;/h3&gt;" 
                UserNameLabelText="&lt;h3&gt;User Name:&lt;/h3&gt;" DisplayUserName="True">
                </asp:ChangePassword>
        </asp:Panel>       
    </div>
</asp:Content>
