<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Navigation_Menu.ascx.cs" Inherits="ARC.Controls.Navigation_Menu" %>

<style>
    .menuHorizontal
    {
	    float: left;
	    width: 100%;
	    height: 33px;
	    background: #474747;
    }

    #nav, #nav ul
    {
	    margin: 0;
	    padding: 0;
	    list-style: none;
	    line-height: 1;
    }

    #nav a 
    {    
        display: block;        
	    color: #fff;
	    width: auto;
	    text-decoration: none;
	    border-right: 1px solid #fff;
	    padding: 6px 10px 9px 10px;	
    }

    #nav li ul a
    {
        width: 150px;
        border-right: none;    
        padding: 0;
        clear: right;
        color: #474747;   
    }

    #nav li ul li a:hover
    {
        width: 150px;    
        color: #FECB00;
        clear:right;
    }

    #nav li ul li
    {
        border-bottom: 1px solid #474747;
        border-collapse:collapse;
        padding-bottom: 3px;
        padding-top: 3px;    
    }

    #nav li ul li:hover
    {
        background: #474747;
    }

    #nav li 
    {    
        float: left;      
    }

    #nav li ul 
    {    
        position: absolute;    
        width: 150px;    
        left: -999em;
        border: 2px solid black;
        border-collapse:collapse;    
    }

    #nav li ul ul 
    {    
        margin: -1em 0 0 150px;
    }

    #nav li:hover ul ul, #nav li.sfhover ul ul 
    {    
        left: -999em;
    }

    #nav li:hover ul, #nav li.sfhover ul 
    {    
        left: auto;
        background: #EA7125;    
    }

    #nav li:hover ul, #nav li li:hover ul, #nav li.sfhover ul, #nav li li.sfhover ul 
    {    
        left: auto;
    }

    .arrow
    {
        background: url("../images/arrow_right_black.gif") 98% 50% no-repeat;
    }

    #nav li:hover ul ul, #nav li:hover ul ul ul, #nav li.sfhover ul ul, #nav li.sfhover ul ul ul 
    {    
        left: -999em;
    }

    #nav li:hover ul, #nav li li:hover ul, #nav li li li:hover ul, #nav li.sfhover ul, #nav li li.sfhover ul, #nav li li li.sfhover ul 
    {    
        left: auto;
    }

    #nav li:hover ul ul, #nav li:hover ul ul ul, #nav li:hover ul ul ul ul, #nav li.sfhover ul ul, #nav li.sfhover ul ul ul, #nav li.sfhover ul ul ul ul 
    {    
        left: -999em;
    }

    #nav li:hover ul, #nav li li:hover ul, #nav li li li:hover ul, #nav li li li li:hover ul, #nav li.sfhover ul, #nav li li.sfhover ul, #nav li li li.sfhover ul, #nav li li li li.sfhover ul 
    {    
        left: auto;
    }
</style>

<script type="text/javascript1.1">
    // Javascript originally by Patrick Griffiths and Dan Webb.
    // http://htmldog.com/articles/suckerfish/dropdowns/
    sfHover = function () {
        var sfEls = document.getElementById("menuHorizontal").getElementsByTagName("li");
        for (var i = 0; i < sfEls.length; i++) {
            sfEls[i].onmouseover = function () {
                this.className += " hover";
            }
            sfEls[i].onmouseout = function () {
                this.className = this.className.replace(new RegExp(" hover\\b"), "");
            }
        }
    }
    if (window.attachEvent) window.attachEvent("onload", sfHover);
</script>

<div id="menuHorizontal" class="menuHorizontal">
    <ul id="nav">
		<li><a href="/Default.aspx">Home</a></li>
		<li class="active"><a href="#">About Us</a>
            <ul>
                <li><a href="/AboutusMission.aspx">Mission</a></li>
                <li><a href="/AboutUsHistory.aspx">History</a></li>
                <li><a href="/Aboutusvision.aspx">Vision</a></li>
                <li><a href="/AboutusCorevalues.aspx">Core Values</a></li>
                <li><a href="/AboutusBoard.aspx">Meet our Boad</a></li>
                <li><a href="/AboutUsStaff.aspx">Meet our Staff</a></li>
                <li><a href="/Donors.aspx">Supporters</a></li>
            </ul>
        </li>
		<li><a href="#">You Can Help!</a>
            <ul>
                <li><a href="/GetinvolvedPartnerships.aspx">Membership</a></li>
                <li><a href="/GetInvolvedVolunteer.aspx">Volunteer</a></li>
            </ul>
        </li>
        <li><a href="#">Services</a>
            <ul style=" width: 350px;">
                <li><a href="/ServicesInformation.aspx" style=" width: 350px;">Information, Resources, and Referrals</a></li>
                <li><a href="/ServicesParenttoParent.aspx" style=" width: 350px;">Parent-To-Parent</a></li>
                <li><a href="#" style=" width: 350px;" class="arrow">Sports and Fitness</a>
                    <ul style="margin: -1em 0 0 350px;">
                        <li><a href="/SportsandFitness/SportsandFitness.aspx">Mission</a></li>
                        <li><a href="#" class="arrow">Sports Teams</a>
                            <ul style="margin: -1em 0 0 150px; width: 160px;">
                                <li><a href="/SportsandFitness/oursports.aspx" style=" width: 160px;">Teams</a></li>
                                <li><a href="/SportsandFitness/Winter_Sports.aspx" style=" width: 160px;">Winter Sports</a></li>
                                <li><a href="#" class="arrow" style=" width: 160px;">Spring Sports</a>
                                    <ul style="margin: -1em 0 0 160px; width: 160px;">
                                        <li><a href="/SportsandFitness/TrackandField.aspx" style=" width: 160px;">Track and Field</a></li>
                                        <li><a href="/SportsandFitness/powerlifting.aspx" style=" width: 160px;">Power Lifting</a></li>
                                        <li><a href="/SportsandFitness/soccer.aspx" style=" width: 160px;">Soccer</a></li>
                                        <li><a href="/SportsandFitness/cycling.aspx" style=" width: 160px;">Cycling</a></li>
                                        <li><a href="/SportsandFitness/aquatics.aspx" style=" width: 160px;">Aquatics</a></li>
                                    </ul>
                                </li>
                                <li><a href="/SportsandFitness/Summer_Sports.aspx" style=" width: 160px;">Summer Sports</a></li>
                                <li><a href="/SportsandFitness/Fall_Sports.aspx" style=" width: 160px;">Fall Sports</a></li>
                            </ul>
                        </li>
                        <li><a href="/SportsandFitness/Forms.aspx">Forms</a></li>
                    </ul>
                </li>
                <li><a href="#" class="arrow" style=" width: 350px;">Arcn' Round The Community</a>
                    <ul style="margin: -1em 0 0 350px; width: 160px;">
                        <li><a href="/ServicesArcinRoundtheCommunity.aspx" style=" width: 160px;">Description</a></li>
                        <li><a href="/Scholarships.aspx" style=" width: 160px;">Scholarships</a></li>
                        <li><a href="/VolunteerProgram.aspx" style=" width: 160px;">Volunteer Program</a></li>
                    </ul>
                </li>
                <li><a href="#" class="arrow" style=" width: 350px;">Employment and Benefit Analysis</a>
                    <ul style="margin: -1em 0 0 350px; width: 200px;">
                        <li><a href="/Services.empbendescription.aspx" style=" width: 200px;">Description</a></li>
                        <li><a href="/Servicesemploymentanalysis.aspx" style=" width: 200px;">Employment Consulting</a></li>
                        <li><a href="/ServicesBenefitAnalysis.aspx" style=" width: 200px;">Benefit Consulting</a></li>
                    </ul>
                </li>
            </ul>
        </li>
        <li><a href="/Calendar.aspx">Events</a></li>
        <li><a href="#">Resources</a>
            <ul>
                <li><a href="/ResourcesArcChapters.aspx">Arc Chapters</a></li>
                <li><a href="/ResourcesLocalOrganizations.aspx">Local Resources</a></li>
                <li><a href="/ResourcesGreatInformation.aspx">Other Information</a></li>
            </ul>
        </li>
		<li><a href="/Contactus.aspx">Contact us</a></li>
        <li style="float: right;"><a href="/Admin/tools.aspx" class="arrow" style="font-size: xx-small; border-right: none; color: #474747">|</a></li>
	</ul>
</div>
