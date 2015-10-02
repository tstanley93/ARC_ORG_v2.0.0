<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ActiveMenu.ascx.cs" Inherits="ARC.Controls.ActiveMenu" %>

<link href="/style.css" rel="stylesheet" type="text/css" />

<div>
    <asp:Menu 
            ID="Menu1" 
            runat="server" 
            DynamicHorizontalOffset="2" 
            Orientation="Horizontal" 
            DynamicPopOutImageTextFormatString="" 
            MaximumDynamicDisplayLevels="4" 
            StaticEnableDefaultPopOutImage="False" 
            StaticPopOutImageTextFormatString="" 
            DynamicPopOutImageUrl="~/images/index_14.gif" 
            DynamicVerticalOffset="5"
            width="1200px">
        <LevelMenuItemStyles>
            <asp:MenuItemStyle 
                Font-Underline="False" 
                ForeColor="White" 
                Height="38px" 
                ItemSpacing="1px" 
                VerticalPadding="2px"/>
        </LevelMenuItemStyles>
        <DynamicHoverStyle BackColor="#28416D" ForeColor="#FFCC00" />
        <DynamicMenuStyle BackColor="#3D678A" CssClass="DynamicMenuItem" />
        <DynamicMenuItemStyle HorizontalPadding="2px" VerticalPadding="2px" 
            BackColor="#3D678A" CssClass="DynamicMenuItemStyle" ForeColor="White" />
        <Items>
            <asp:MenuItem 
                NavigateUrl="~/Default.aspx" ImageUrl="~/images/Arc_Home.gif">
            </asp:MenuItem>
            <asp:MenuItem Selectable="False" ImageUrl="~/images/Arc_About-Us.gif">
                <asp:MenuItem 
                    Text="Mission" 
                    Value="Mission" 
                    NavigateUrl="~/AboutusMission.aspx">
                </asp:MenuItem>
                <asp:MenuItem 
                    Text="History" 
                    Value="History" 
                    NavigateUrl="~/AboutUsHistory.aspx">
                </asp:MenuItem>
                <asp:MenuItem 
                    Text="Vision" 
                    Value="Vision" 
                    NavigateUrl="~/Aboutusvision.aspx">
                </asp:MenuItem>
                <asp:MenuItem 
                    Text="Core Values" 
                    Value="Core Values" 
                    NavigateUrl="~/AboutusCorevalues.aspx">
                </asp:MenuItem>
                <asp:MenuItem 
                    Text="Meet Our Board" 
                    Value="Meet Our Board" 
                    NavigateUrl="~/AboutusBoard.aspx">
                </asp:MenuItem>
                <asp:MenuItem 
                    Text="Meet Our Staff" 
                    Value="Meet Our Staff" 
                    NavigateUrl="~/AboutUsStaff.aspx">
                </asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Donors.aspx" 
                    Text="Supporters" Value="Supporters">
                </asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem 
                Selectable="False" ImageUrl="~/images/Arc_You-Can-Help.gif">
                <asp:MenuItem 
                    NavigateUrl="~/GetinvolvedPartnerships.aspx" 
                    Text="Membership" 
                    Value="Membership">
                </asp:MenuItem>
                <asp:MenuItem 
                    NavigateUrl="~/GetInvolvedVolunteer.aspx" 
                    Text="Volunteer" 
                    Value="Volunteer">
                </asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem Selectable="False" ImageUrl="~/images/Arc_Services.gif">
                <asp:MenuItem 
                    NavigateUrl="~/ServicesInformation.aspx" 
                    Text="Information , Resources, and Referrals" 
                    Value="Information">
                </asp:MenuItem>
                <asp:MenuItem 
                    NavigateUrl="~/ServicesParenttoParent.aspx" 
                    Text="Parent-to-Parent" 
                    Value="ParenttoParent">
                </asp:MenuItem>
                <asp:MenuItem Selectable="False" Text="Sports and Fitness" 
                    Value="Sports and Fitness">
                    <asp:MenuItem 
                        NavigateUrl="~/SportsandFitness/SportsandFitness.aspx" 
                        Text="Mission" 
                        Value="Mission">
                    </asp:MenuItem>
                    <asp:MenuItem Text="Sports Teams" Value="SportsTeams" Selectable="False">
                        <asp:MenuItem 
                            NavigateUrl="~/SportsandFitness/oursports.aspx" 
                            Text="Teams" 
                            Value="Teams">
                        </asp:MenuItem>
                        <asp:MenuItem 
                            NavigateUrl="~/SportsandFitness/Winter_Sports.aspx" 
                            Text="Winter Sports" 
                            Value="Winter_Sports">
                        </asp:MenuItem>
                        <asp:MenuItem Selectable="False" Text="Spring Sports" Value="Spring_Sports">
                            <asp:MenuItem 
                                NavigateUrl="~/SportsandFitness/TrackandField.aspx" 
                                Text="Track and Field" 
                                Value="TrackandField">
                            </asp:MenuItem>
                            <asp:MenuItem 
                                NavigateUrl="~/SportsandFitness/powerlifting.aspx" 
                                Text="Power Lifting" 
                                Value="PowerLifting">
                            </asp:MenuItem>
                            <asp:MenuItem 
                                NavigateUrl="~/SportsandFitness/soccer.aspx" 
                                Text="Soccer" 
                                Value="Soccer">
                            </asp:MenuItem>
                            <asp:MenuItem 
                                NavigateUrl="~/SportsandFitness/cycling.aspx" 
                                Text="Cycling" 
                                Value="Cycling">
                            </asp:MenuItem>
                            <asp:MenuItem 
                                NavigateUrl="~/SportsandFitness/aquatics.aspx" 
                                Text="Aquatics" 
                                Value="Aquatics">
                            </asp:MenuItem>
                        </asp:MenuItem>
                        <asp:MenuItem 
                            NavigateUrl="~/SportsandFitness/Summer_Sports.aspx" 
                            Text="Summer Sports" 
                            Value="SummerSports">
                        </asp:MenuItem>
                        <asp:MenuItem 
                            NavigateUrl="~/SportsandFitness/Fall_Sports.aspx" 
                            Text="Fall Sports" 
                            Value="FallSports">
                        </asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem 
                        NavigateUrl="~/SportsandFitness/Forms.aspx" 
                        Text="Forms" 
                        Value="Forms">
                    </asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem 
                    Text="Arcin' Round The Community" 
                    Value="ArcinRound" Selectable="False">
                    <asp:MenuItem NavigateUrl="~/ServicesArcinRoundtheCommunity.aspx" 
                        Text="Description" 
                        Value="Description"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Scholarships.aspx" 
                        Text="Scholarships" 
                        Value="Scholarships"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/VolunteerProgram.aspx" 
                        Text="Volunteer Program" 
                        Value="Volunteer Program"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem 
                    Text="Employment and Benefit Analysis" 
                    Value="Employment and Benefit Analysis" 
                    Selectable="False">
                    <asp:MenuItem NavigateUrl="~/Services.empbendescription.aspx" 
                        Text="Description" 
                        Value="Description"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Servicesemploymentanalysis.aspx" 
                        Text="Employment Consulting" 
                        Value="Employment Analysis"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/ServicesBenefitAnalysis.aspx" 
                        Text="Benefit Consulting" 
                        Value="Benefit Analysis"></asp:MenuItem>
                </asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem 
                NavigateUrl="~/Calendar.aspx" ImageUrl="~/images/Arc_Events.gif">
            </asp:MenuItem>
            <asp:MenuItem Selectable="False" ImageUrl="~/images/Arc_Resources.gif">
                <asp:MenuItem 
                    NavigateUrl="~/ResourcesArcChapters.aspx" 
                    Text="Arc Chapters" 
                    Value="ARCChapters">
                </asp:MenuItem>
                <asp:MenuItem 
                    NavigateUrl="~/ResourcesLocalOrganizations.aspx" 
                    Text="Local Resources" 
                    Value="LocalOrganizations">
                </asp:MenuItem>
                <asp:MenuItem 
                    NavigateUrl="~/ResourcesGreatInformation.aspx" 
                    Text="Other Information" 
                    Value="GreatInformation">
                </asp:MenuItem>
            </asp:MenuItem>
            <asp:MenuItem 
                NavigateUrl="~/Contactus.aspx" ImageUrl="~/images/Arc_Contact-Us.gif">
            </asp:MenuItem>
            <asp:MenuItem 
                Text="»" 
                Value="»" 
                NavigateUrl="~/Admin/tools.aspx">
            </asp:MenuItem>
        </Items>
    </asp:Menu>
</div>