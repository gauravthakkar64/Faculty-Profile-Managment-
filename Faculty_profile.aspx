<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Faculty_profile.aspx.cs" Inherits="Faculty_profile" %>

<!DOCTYPE html>
<html lang="en">
<head>
  	<title>Faculty Profile</title>
  	<meta charset="utf-8">
    <meta name="description" content="Your description">
    <meta name="keywords" content="Your keywords">
    <meta name="author" content="Your name">
    <link rel="stylesheet" href="../Styles/Main_home.css">
    <link href="../nivo-slider.css" rel="stylesheet" type="text/css" media="screen" />
	<link href='http://fonts.googleapis.com/css?family=Allura' rel='stylesheet' type='text/css'>
</head>
<body>
    <form id="form1" runat="server">
<div class="site_background">
	<div class="site_background_1">
        <div class="site_background_2">
        <!-- Header -->
            <header>
                
                <nav>
                    <h1><a href="#">Live Profile</a></h1>
                    <ul><li id="usermenu"><a href="#">Welcome <asp:Label ID="fname" runat="server" Text="faculty"></asp:Label></a>
                        <ul>
                            <li><a href="Pages/Site_home.aspx">Logout</a></li>
                            <li><a href="#">Policy</a></li>
                            <li><a href="#">Help</a></li>
                        </ul>
                        </li></ul>
                    
                    
                  <ul class="my_menu">
                      <li ><a href="Faculty_Home.aspx">Home</a></li>
                      <li class="current"><a href="Faculty_profile.aspx">Profile</a></li>
                      <li><a href="Faculty_notifications.aspx">Notifications</a></li>
                      <li><a href="Give_feedback.aspx">Support</a></li>
                     
                  </ul> 
                 </nav>  
                 <div class="clear"></div> 
            </header>
            <!-- Content -->
            <section id="content" style="background-color:#4D5D65">

             

              <div class="container_main" >		
                  
                  <h4><img src="images/back_all.jpg" alt="user profile" /><p>UserName</p><hr /></h4>
                 <asp:Button ID="Button1" runat="server" Text="Update Profile" CssClass="btnprofile" OnClick="Button1_Click" /><br /><br />
                  <div class="recentpost">
                      <asp:Panel ID="ProfileUser" runat="server">
                      <fieldset>
                          <legend style="color:black;font-family:Georgia;font-size:25px; font-weight:bold;">Faculty Profile</legend>
                          <asp:Label ID="Pro_personalTag" runat="server" Text="Personal Information:-" CssClass="tag_contact"></asp:Label>
                          <br /><br /><br />
                         <asp:Label ID="proReg_id" runat="server" Text="Registration_Id" CssClass="lglable"></asp:Label><asp:Label ID="lbReg_Id" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br />
                      <asp:Label ID="ProFname" runat="server" Text="FirstName" CssClass="lglable"></asp:Label><asp:Label ID="lbFname" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br />
                      <asp:Label ID="ProMname" runat="server" Text="MiddleName" CssClass="lglable"></asp:Label><asp:Label ID="lbMname" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br />
                      <asp:Label ID="ProLname" runat="server" Text="LastName" CssClass="lglable"></asp:Label><asp:Label ID="lblname" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br />
                      <asp:Label ID="ProGender" runat="server" Text="Gender" CssClass="lglable"></asp:Label><asp:Label ID="lbgender" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br />
                      <asp:Label ID="ProBdate" runat="server" Text="Birth Date" CssClass="lglable"></asp:Label><asp:Label ID="lbdate" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br />
                      <asp:Label ID="ProBplace" runat="server" Text="Birth Place" CssClass="lglable"></asp:Label><asp:Label ID="lbbplace" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br />
                      <asp:Label ID="ProCommunity" runat="server" Text="Community" CssClass="lglable"></asp:Label><asp:Label ID="lbcommu" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br />
                      <asp:Label ID="ProMtoungue" runat="server" Text="Mother Tongue" CssClass="lglable"></asp:Label><asp:Label ID="lbmtoungue" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br />
                      <asp:Label ID="ProNationalty" runat="server" Text="Nationalty" CssClass="lglable"></asp:Label><asp:Label ID="lbnatlty" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br />
                      <asp:Label ID="Label62" runat="server" Text="Socail Status" CssClass="lglable "></asp:Label><asp:Label ID="lbss" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br /><br /><br />
                          <asp:Label ID="Cotnatact_tag" runat="server" Text="Contact Information:-" CssClass="tag_contact"></asp:Label>
                          <br /><br /><br />
 
                      <asp:Label ID="ProContact_id" runat="server" Text="Contact_Id" CssClass="lglable"></asp:Label><asp:Label ID="lbcontact_Id" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br />
                      <asp:Label ID="ProEmail_id" runat="server" Text="Email_Id" CssClass="lglable"></asp:Label><asp:Label ID="lbemail" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br />
                      <asp:Label ID="ProMobile" runat="server" Text="Mobile_NO" CssClass="lglable"></asp:Label><asp:Label ID="lbmobile" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br />
                    
                      <asp:Label ID="ProFax" runat="server" Text="Fax_No" CssClass="lglable"></asp:Label><asp:Label ID="lbfax" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br />
                      <asp:Label ID="ProAddress" runat="server" Text="Address" CssClass="lglable"></asp:Label><asp:Label ID="lbaddr" runat="server" Text="Blank...enter data" CssClass="prolabel" Height="70px"></asp:Label><br /><br /><br /><br /><br />
                      <asp:Label ID="ProPin" runat="server" Text="Pincode" CssClass="lglable"></asp:Label><asp:Label ID="lbpin" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br />
                      <asp:Label ID="ProCountry" runat="server" Text="Country" CssClass="lglable"></asp:Label><asp:Label ID="lbcountry" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br />
                      <asp:Label ID="ProState" runat="server" Text="State" CssClass="lglable"></asp:Label><asp:Label ID="lbstate" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br />
                      <asp:Label ID="ProCity" runat="server" Text="City" CssClass="lglable "></asp:Label><asp:Label ID="lbcity" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br /><br /><br />
                          <asp:Label ID="Educational_tag" runat="server" Text="Educational Information:-" CssClass="tag_contact"></asp:Label><br /><br /><br />
                        <asp:Label ID="ProEdu_id" runat="server" Text="Education_Id" CssClass="lglable"></asp:Label><asp:Label ID="lbEdu_Id" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br />
                   
                      <asp:Label ID="ProDegree" runat="server" Text="Degree" CssClass="lglable"></asp:Label><asp:Label ID="lbdegree" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br />
                      <asp:Label ID="ProCollege" runat="server" Text="College" CssClass="lglable"></asp:Label><asp:Label ID="lb_clg" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br />
                      <asp:Label ID="ProEnYear" runat="server" Text="Year of Enter" CssClass="lglable"></asp:Label><asp:Label ID="lb_enter" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br />
                      <asp:Label ID="ProPsYear" runat="server" Text="Year of Passing" CssClass="lglable"></asp:Label><asp:Label ID="lb_pass" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br />
                      <asp:Label ID="ProPercentage" runat="server" Text="Percentage" CssClass="lglable "></asp:Label><asp:Label ID="lbper" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br /><br /><br /><br />
                          <asp:Label ID="Extra_act_tag" runat="server" Text="Extra Activities:-" CssClass="tag_contact"></asp:Label><br /><br /><br />
                          <asp:Label ID="ProAct_Id" runat="server" Text="Activity_Id" CssClass="lglable"></asp:Label><asp:Label ID="lbA_id" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br />
                      <asp:Label ID="ProAct_name" runat="server" Text="Activity Name" CssClass="lglable"></asp:Label><asp:Label ID="lbAname" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br />
                          <asp:Label ID="ProAct_Type" runat="server" Text="Activity Type" CssClass="lglable"></asp:Label><asp:Label ID="lbAc_type" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br />
                      <asp:Label ID="ProOrganizer" runat="server" Text="Organized By" CssClass="lglable"></asp:Label><asp:Label ID="lborganixer" runat="server" Text="Blank...enter data" CssClass="prolabel" Height="70px"></asp:Label><br /><br /><br /><br /><br />
                      <asp:Label ID="ProSt_date" runat="server" Text="Starting Date" CssClass="lglable"></asp:Label><asp:Label ID="lbstra_date" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br />
                      <asp:Label ID="ProDuration" runat="server" Text="Duration" CssClass="lglable"></asp:Label><asp:Label ID="lbduration" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br />
                      <asp:Label ID="ProLocation" runat="server" Text="Location" CssClass="lglable"></asp:Label><asp:Label ID="lblocation" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br />
                      <asp:Label ID="ProCertificate" runat="server" Text="Certificate" CssClass="lglable"></asp:Label><asp:Label ID="lbcertificate" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br />
                     <asp:Label ID="ProRemarks" runat="server" Text="Remarks" CssClass="lglable"></asp:Label><asp:Label ID="lbremarks" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br />
                      <br /><br />
                          <asp:Label ID="Experience_tag" runat="server" Text="Experiences:-" CssClass="tag_contact"></asp:Label><br /><br /><br /><asp:Label ID="lbExperince_id" runat="server" Text="Experience_Id" CssClass="lglable"></asp:Label><asp:Label ID="Label76" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br />
                     
                      <asp:Label ID="Label54" runat="server" Text="College Name" CssClass="lglable"></asp:Label><asp:Label ID="lbCollege" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br />
                      <asp:Label ID="Label55" runat="server" Text="Duration of Job" CssClass="lglable"></asp:Label><asp:Label ID="lbjob_u" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br />
                      <asp:Label ID="Label56" runat="server" Text="Post of Job" CssClass="lglable"></asp:Label><asp:Label ID="lbPost_job" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br />
                      <br /><br /><br />
                          <asp:Label ID="ExtraInfo_tag" runat="server" Text="Extra Informations:-" CssClass="tag_contact"></asp:Label>
                          <br /><br /><br /><asp:Label ID="ProEx_info_id" runat="server" Text="Extra_Info_Id" CssClass="lglable"></asp:Label><asp:Label ID="lbex_info" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br />
                     
                      <asp:Label ID="ProBlood_grp" runat="server" Text="Blood Group" CssClass="lglable"></asp:Label><asp:Label ID="lbBgroup" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br />
                      <asp:Label ID="ProHeight" runat="server" Text="Height" CssClass="lglable"></asp:Label><asp:Label ID="lbheight" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br />
                      <asp:Label ID="ProWeight" runat="server" Text="Weight" CssClass="lglable"></asp:Label><asp:Label ID="lbweight" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br />
                      <asp:Label ID="ProHobbies" runat="server" Text="Hobbies" CssClass="lglable"></asp:Label><asp:Label ID="lbhobbies" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br />
                      <asp:Label ID="ProIntrests" runat="server" Text="Instrest Areas" CssClass="lglable "></asp:Label><asp:Label ID="lbIarea" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br />
                              <asp:Label ID="ProNature" runat="server" Text="Nature" CssClass="lglable "></asp:Label><asp:Label ID="lbnature" runat="server" Text="Blank...enter data" CssClass="prolabel"></asp:Label><br /><br /><br /><br />
                      </fieldset></asp:Panel>
                      <asp:MultiView ID="MultiView1" runat="server">
                          <asp:View ID="Viewpersonal_info" runat="server">
                               <fieldset>
                      <legend style="color:black; font-family:Georgia; font-size:25px;">Faculty Pesronal Information:-</legend>
                      <asp:Label ID="Label6" runat="server" Text="Registration_Id" CssClass="lglable"></asp:Label><asp:Label ID="txtreg_id" runat="server" Text="Label" CssClass="lgtext" Height="25px"></asp:Label><br /><br />
                      <asp:Label ID="Label1" runat="server" Text="FirstName" CssClass="lglable"></asp:Label><asp:TextBox ID="txtfname" CssClass="lgtext" runat="server" ></asp:TextBox><br /><br />
                      <asp:Label ID="Label2" runat="server" Text="MiddleName" CssClass="lglable"></asp:Label><asp:TextBox ID="txtmname" CssClass="lgtext" runat="server"></asp:TextBox><br /><br />
                      <asp:Label ID="Label3" runat="server" Text="LastName" CssClass="lglable"></asp:Label><asp:TextBox ID="txtlname" runat="server" CssClass="lgtext"></asp:TextBox><br /><br />
                      <asp:Label ID="Label4" runat="server" Text="Gender" CssClass="lglable"></asp:Label><asp:RadioButton ID="rdbmale" runat="server" CssClass="genderm" ForeColor="Black" GroupName="gender" Text="Male" /><asp:RadioButton ID="rdbfemale" runat="server" CssClass="genderfm" ForeColor="Black" Text="Female" GroupName="gender" /><br /><br />
                      <asp:Label ID="Label5" runat="server" Text="Birth Date" CssClass="lglable"></asp:Label><asp:DropDownList ID="ddday" runat="server" CssClass="bdate" AutoPostBack="false">
                                  <asp:ListItem Text="Day" Value="-1"></asp:ListItem> <asp:ListItem Text="01" Value="1"></asp:ListItem> <asp:ListItem Text="02" Value="2"></asp:ListItem>
                                   <asp:ListItem Text="03" Value="3"></asp:ListItem> <asp:ListItem Text="04" Value="4"></asp:ListItem> <asp:ListItem Text="05" Value="5"></asp:ListItem>
                                   <asp:ListItem Text="06" Value="6"></asp:ListItem> <asp:ListItem Text="07" Value="7"></asp:ListItem> <asp:ListItem Text="08" Value="8"></asp:ListItem>
                                   <asp:ListItem Text="09" Value="9"></asp:ListItem> <asp:ListItem Text="10" Value="10"></asp:ListItem> <asp:ListItem Text="11" Value="11"></asp:ListItem>
                                   <asp:ListItem Text="12" Value="12"></asp:ListItem> <asp:ListItem Text="13" Value="13"></asp:ListItem> <asp:ListItem Text="14" Value="14"></asp:ListItem>
                                   <asp:ListItem Text="15" Value="15"></asp:ListItem> <asp:ListItem Text="16" Value="16"></asp:ListItem> <asp:ListItem Text="17" Value="17"></asp:ListItem>
                                   <asp:ListItem Text="18" Value="18"></asp:ListItem> <asp:ListItem Text="19" Value="19"></asp:ListItem> <asp:ListItem Text="20" Value="20"></asp:ListItem>
                                   <asp:ListItem Text="21" Value="21"></asp:ListItem> <asp:ListItem Text="22" Value="22"></asp:ListItem> <asp:ListItem Text="23" Value="23"></asp:ListItem>
                                   <asp:ListItem Text="24" Value="24"></asp:ListItem> <asp:ListItem Text="25" Value="25"></asp:ListItem> <asp:ListItem Text="26" Value="26"></asp:ListItem>
                                   <asp:ListItem Text="27" Value="27"></asp:ListItem> <asp:ListItem Text="28" Value="28"></asp:ListItem> <asp:ListItem Text="29" Value="29"></asp:ListItem>
                                   <asp:ListItem Text="30" Value="30"></asp:ListItem> <asp:ListItem Text="31" Value="31"></asp:ListItem> 


                                                                               </asp:DropDownList>
                              <asp:DropDownList ID="ddmonth" CssClass="bmonth" runat="server" AutoPostBack="false">
                                  <asp:ListItem Text="Month" Value="-1"></asp:ListItem> <asp:ListItem Text="Jan" Value="Jan"></asp:ListItem> <asp:ListItem Text="Feb" Value="Feb"></asp:ListItem>
                                  <asp:ListItem Text="March" Value="March"></asp:ListItem> <asp:ListItem Text="April" Value="April"></asp:ListItem> <asp:ListItem Text="May" Value="May"></asp:ListItem>
                                   <asp:ListItem Text="June" Value="June"></asp:ListItem> <asp:ListItem Text="July" Value="July"></asp:ListItem> <asp:ListItem Text="Aug" Value="Aug"></asp:ListItem>
                                   <asp:ListItem Text="Sep" Value="Sep"></asp:ListItem> <asp:ListItem Text="Oct" Value="Oct"></asp:ListItem> <asp:ListItem Text="Nov" Value="Nov"></asp:ListItem>
                                   <asp:ListItem Text="Dec" Value="Dec"></asp:ListItem>
                              </asp:DropDownList>
                              <asp:DropDownList ID="ddyear" AutoPostBack="false" CssClass="byear" runat="server">
                                  <asp:ListItem Text="Year" Value="-1"></asp:ListItem> <asp:ListItem Text="1975" Value="1975"></asp:ListItem> <asp:ListItem Text="1976" Value="1976"></asp:ListItem>
                                  <asp:ListItem Text="1977" Value="1977"></asp:ListItem> <asp:ListItem Text="1978" Value="1978"></asp:ListItem> <asp:ListItem Text="1979" Value="1979"></asp:ListItem>
                                   <asp:ListItem Text="1980" Value="1980"></asp:ListItem> <asp:ListItem Text="1981" Value="1981"></asp:ListItem> <asp:ListItem Text="1982" Value="1982"></asp:ListItem>
                                   <asp:ListItem Text="1983" Value="1983"></asp:ListItem> <asp:ListItem Text="1984" Value="1984"></asp:ListItem> <asp:ListItem Text="1985" Value="1985"></asp:ListItem>
                                   <asp:ListItem Text="1986" Value="1986"></asp:ListItem> <asp:ListItem Text="1987" Value="1987"></asp:ListItem> <asp:ListItem Text="1988" Value="1988"></asp:ListItem>
                                   <asp:ListItem Text="1989" Value="1989"></asp:ListItem> <asp:ListItem Text="1990" Value="1990"></asp:ListItem> <asp:ListItem Text="1991" Value="1991"></asp:ListItem>
                                   <asp:ListItem Text="1992" Value="1992"></asp:ListItem> <asp:ListItem Text="1993" Value="1993"></asp:ListItem> <asp:ListItem Text="1994" Value="1994"></asp:ListItem>
                                   <asp:ListItem Text="1995" Value="1995"></asp:ListItem> <asp:ListItem Text="1996" Value="1996"></asp:ListItem> <asp:ListItem Text="1997" Value="1997"></asp:ListItem>
                                   <asp:ListItem Text="1998" Value="1998"></asp:ListItem> <asp:ListItem Text="1999" Value="1999"></asp:ListItem> <asp:ListItem Text="2000" Value="2000"></asp:ListItem>
                                   <asp:ListItem Text="2001" Value="2001"></asp:ListItem> <asp:ListItem Text="2002" Value="2002"></asp:ListItem> <asp:ListItem Text="2003" Value="2003"></asp:ListItem>
                                   <asp:ListItem Text="2004" Value="2004"></asp:ListItem> <asp:ListItem Text="2005" Value="2005"></asp:ListItem> 
                                  </asp:DropDownList><br /><br />
                      <asp:Label ID="Label7" runat="server" Text="Birth Place" CssClass="lglable"></asp:Label><asp:TextBox ID="txtbplace" runat="server" CssClass="lgtext" ></asp:TextBox><br /><br />
                      <asp:Label ID="Label8" runat="server" Text="Community" CssClass="lglable"></asp:Label><asp:TextBox ID="txtcommunity" runat="server" CssClass="lgtext" ></asp:TextBox><br /><br />
                      <asp:Label ID="Label9" runat="server" Text="Mother Tongue" CssClass="lglable"></asp:Label><asp:DropDownList ID="ddmtoungue" runat="server" CssClass="ddlist">
                                  <asp:ListItem>Gujarati</asp:ListItem>
                                  <asp:ListItem>Hindi</asp:ListItem>
                                  <asp:ListItem>English</asp:ListItem>
                                  <asp:ListItem>Tamil</asp:ListItem>
                                  <asp:ListItem>Malyalam</asp:ListItem>
                                  <asp:ListItem>Kannad</asp:ListItem>
                                  <asp:ListItem>Punjabi</asp:ListItem>
                              </asp:DropDownList><br /><br />
                      <asp:Label ID="Label10" runat="server" Text="Nationalty" CssClass="lglable"></asp:Label><asp:DropDownList ID="ddnatonality" runat="server" CssClass="ddlist">
                                  <asp:ListItem>Indian</asp:ListItem>
                                  <asp:ListItem>American</asp:ListItem>
                                  <asp:ListItem>British</asp:ListItem>
                                  <asp:ListItem>African</asp:ListItem>
                                  <asp:ListItem>Bangladeshi</asp:ListItem>
                              </asp:DropDownList><br /><br />
                      <asp:Label ID="Label11" runat="server" Text="Socail Status" CssClass="lglable "></asp:Label><asp:DropDownList ID="ddsstatus" runat="server" CssClass="ddlist">
                                  <asp:ListItem>Married</asp:ListItem>
                                  <asp:ListItem>Unmarried</asp:ListItem>
                              </asp:DropDownList><br /><br /><br /><br /><asp:Label ID="txtquerymsg" runat="server" Text="" CssClass="msg_query"></asp:Label><br /><br />

                                   
                              <asp:Button ID="btnuppersonal" runat="server" Text="Update" CssClass="update" OnClick="Button3_Click1" /><asp:Button ID="inspersonal" runat="server" Text="Insert" CssClass="insert_data" OnClick="inspersonal_Click" />
                      <br /><br />
                    <asp:Button ID="v0_btn_next" runat="server" CssClass="npage" Text="Next>>" OnClick="Button2_Click"  />
                  </fieldset></asp:View>
                          <asp:View ID="Viewcontact_info" runat="server"> <fieldset>
                      <legend style="color:black; font-family:Georgia; font-size:25px;">Faculty Contact Information:-</legend>
                      <asp:Label ID="Label19" runat="server" Text="Registration_Id" CssClass="lglable"></asp:Label><asp:Label ID="txtcreg_id" runat="server" Text="" CssClass="lgtext" Height="25px"></asp:Label><br /><br />
                      <asp:Label ID="Label20" runat="server" Text="Contact_Id" CssClass="lglable"></asp:Label><asp:TextBox ID="txtc_id" CssClass="lgtext" runat="server"></asp:TextBox><br /><br />
                      <asp:Label ID="Label21" runat="server" Text="Email_Id" CssClass="lglable"></asp:Label><asp:TextBox ID="txtemail" CssClass="lgtext" runat="server"></asp:TextBox><br /><br />
                      <asp:Label ID="Label22" runat="server" Text="Mobile_NO" CssClass="lglable"></asp:Label><asp:TextBox ID="txtmobile" runat="server" CssClass="lgtext"></asp:TextBox><br /><br />
                    
                      <asp:Label ID="Label23" runat="server" Text="Fax_No" CssClass="lglable"></asp:Label><asp:TextBox ID="txtfax" runat="server" CssClass="lgtext"></asp:TextBox><br /><br />
                      <asp:Label ID="Label24" runat="server" Text="Address" CssClass="lglable"></asp:Label><asp:TextBox ID="txtadd" runat="server" CssClass="lgtext" TextMode="MultiLine"></asp:TextBox><br /><br /><br />
                      <asp:Label ID="Label25" runat="server" Text="Pincode" CssClass="lglable"></asp:Label><asp:TextBox ID="txtpincode" runat="server" CssClass="lgtext"></asp:TextBox><br /><br />
                      <asp:Label ID="Label27" runat="server" Text="Country" CssClass="lglable"></asp:Label><asp:DropDownList ID="ddcountry" runat="server" CssClass="ddlist" DataTextField="Country_name" AutoPostBack="true" DataValueField="c_id" OnSelectedIndexChanged="ddcountry_SelectedIndexChanged"></asp:DropDownList><br /><br />
                      <asp:Label ID="Label28" runat="server" Text="State" CssClass="lglable"></asp:Label><asp:DropDownList ID="ddstate" runat="server" CssClass="ddlist" DataTextField="State_name" DataValueField="S_id" AutoPostBack="true" OnSelectedIndexChanged="ddstate_SelectedIndexChanged"></asp:DropDownList><br /><br />
                      <asp:Label ID="Label29" runat="server" Text="City" CssClass="lglable "></asp:Label><asp:DropDownList ID="ddcity" runat="server" CssClass="ddlist" DataTextField="City_name" DataValueField="City_id"></asp:DropDownList><br /><br /><br /><asp:Label ID="txtcontact_query" runat="server" Text="" CssClass="msg_query"></asp:Label><br />
                      <br />
                              <asp:Button ID="btnupconatct" runat="server" Text="update" CssClass="update" OnClick="Button4_Click1" /><asp:Button ID="inscontact" runat="server" Text="Insert" CssClass="insert_data" OnClick="inscontact_Click" />
                      <asp:Button ID="v1_btn_pre" runat="server" CssClass="ppage" Text="<<Previous" OnClick="Button5_Click" /><asp:Button ID="v1_btn_next" runat="server" CssClass="npage" Text="Next>>" OnClick="Button6_Click"  />
                  </fieldset></asp:View>
                          <asp:View ID="Vieweducational_info" runat="server"><fieldset>
                      <legend style="color:black; font-family:Georgia; font-size:25px;">Faculty Education Information:-</legend>
                      <asp:Label ID="Label13" runat="server" Text="Registration_Id" CssClass="lglable"></asp:Label><asp:Label ID="txtereg_id" runat="server" CssClass="lgtext" Text="" ForeColor="Black" Height="25px"></asp:Label><br /><br />
                               <asp:Label ID="Label12" runat="server" Text="Education_Id" CssClass="lglable"></asp:Label><asp:TextBox ID="txtEdu_id" CssClass="lgtext" runat="server" ForeColor="Black"></asp:TextBox><br /><br />
                      <asp:Label ID="Label14" runat="server" Text="Degree" CssClass="lglable"></asp:Label><asp:TextBox ID="txtdegree" CssClass="lgtext" runat="server"></asp:TextBox><br /><br />
                      <asp:Label ID="Label15" runat="server" Text="College" CssClass="lglable"></asp:Label><asp:TextBox ID="txtedu_college" runat="server" CssClass="lgtext"></asp:TextBox><br /><br />
                      <asp:Label ID="Label16" runat="server" Text="Year of Enter" CssClass="lglable"></asp:Label><asp:DropDownList ID="ddenter_year" runat="server" CssClass="pyear" >
                           <asp:ListItem Text="Year of Enter" Value="-1"></asp:ListItem> <asp:ListItem Text="1975" Value="1975"></asp:ListItem> <asp:ListItem Text="1976" Value="1976"></asp:ListItem>
                                  <asp:ListItem Text="1977" Value="1977"></asp:ListItem> <asp:ListItem Text="1978" Value="1978"></asp:ListItem> <asp:ListItem Text="1979" Value="1979"></asp:ListItem>
                                   <asp:ListItem Text="1980" Value="1980"></asp:ListItem> <asp:ListItem Text="1981" Value="1981"></asp:ListItem> <asp:ListItem Text="1982" Value="1982"></asp:ListItem>
                                   <asp:ListItem Text="1983" Value="1983"></asp:ListItem> <asp:ListItem Text="1984" Value="1984"></asp:ListItem> <asp:ListItem Text="1985" Value="1985"></asp:ListItem>
                                   <asp:ListItem Text="1986" Value="1986"></asp:ListItem> <asp:ListItem Text="1987" Value="1987"></asp:ListItem> <asp:ListItem Text="1988" Value="1988"></asp:ListItem>
                                   <asp:ListItem Text="1989" Value="1989"></asp:ListItem> <asp:ListItem Text="1990" Value="1990"></asp:ListItem> <asp:ListItem Text="1991" Value="1991"></asp:ListItem>
                                   <asp:ListItem Text="1992" Value="1992"></asp:ListItem> <asp:ListItem Text="1993" Value="1993"></asp:ListItem> <asp:ListItem Text="1994" Value="1994"></asp:ListItem>
                                   <asp:ListItem Text="1995" Value="1995"></asp:ListItem> <asp:ListItem Text="1996" Value="1996"></asp:ListItem> <asp:ListItem Text="1997" Value="1997"></asp:ListItem>
                                   <asp:ListItem Text="1998" Value="1998"></asp:ListItem> <asp:ListItem Text="1999" Value="1999"></asp:ListItem> <asp:ListItem Text="2000" Value="2000"></asp:ListItem>
                                   <asp:ListItem Text="2001" Value="2001"></asp:ListItem> <asp:ListItem Text="2002" Value="2002"></asp:ListItem> <asp:ListItem Text="2003" Value="2003"></asp:ListItem>
                                   <asp:ListItem Text="2004" Value="2004"></asp:ListItem> <asp:ListItem Text="2005" Value="2005"></asp:ListItem> 
                                                                                                                 </asp:DropDownList><br /><br />
                      <asp:Label ID="Label17" runat="server" Text="Year of Passing" CssClass="lglable"></asp:Label><asp:DropDownList ID="ddpass_year" runat="server" CssClass="pyear" >
                          <asp:ListItem Text="Year of Passing" Value="-1"></asp:ListItem>  <asp:ListItem Text="1975" Value="1975"></asp:ListItem> <asp:ListItem Text="1976" Value="1976"></asp:ListItem>
                                  <asp:ListItem Text="1977" Value="1977"></asp:ListItem> <asp:ListItem Text="1978" Value="1978"></asp:ListItem> <asp:ListItem Text="1979" Value="1979"></asp:ListItem>
                                   <asp:ListItem Text="1980" Value="1980"></asp:ListItem> <asp:ListItem Text="1981" Value="1981"></asp:ListItem> <asp:ListItem Text="1982" Value="1982"></asp:ListItem>
                                   <asp:ListItem Text="1983" Value="1983"></asp:ListItem> <asp:ListItem Text="1984" Value="1984"></asp:ListItem> <asp:ListItem Text="1985" Value="1985"></asp:ListItem>
                                   <asp:ListItem Text="1986" Value="1986"></asp:ListItem> <asp:ListItem Text="1987" Value="1987"></asp:ListItem> <asp:ListItem Text="1988" Value="1988"></asp:ListItem>
                                   <asp:ListItem Text="1989" Value="1989"></asp:ListItem> <asp:ListItem Text="1990" Value="1990"></asp:ListItem> <asp:ListItem Text="1991" Value="1991"></asp:ListItem>
                                   <asp:ListItem Text="1992" Value="1992"></asp:ListItem> <asp:ListItem Text="1993" Value="1993"></asp:ListItem> <asp:ListItem Text="1994" Value="1994"></asp:ListItem>
                                   <asp:ListItem Text="1995" Value="1995"></asp:ListItem> <asp:ListItem Text="1996" Value="1996"></asp:ListItem> <asp:ListItem Text="1997" Value="1997"></asp:ListItem>
                                   <asp:ListItem Text="1998" Value="1998"></asp:ListItem> <asp:ListItem Text="1999" Value="1999"></asp:ListItem> <asp:ListItem Text="2000" Value="2000"></asp:ListItem>
                                   <asp:ListItem Text="2001" Value="2001"></asp:ListItem> <asp:ListItem Text="2002" Value="2002"></asp:ListItem> <asp:ListItem Text="2003" Value="2003"></asp:ListItem>
                                   <asp:ListItem Text="2004" Value="2004"></asp:ListItem> <asp:ListItem Text="2005" Value="2005"></asp:ListItem>
                                                                                                                   </asp:DropDownList><br /><br />
                      <asp:Label ID="Label18" runat="server" Text="Percentage" CssClass="lglable "></asp:Label><asp:TextBox ID="txtpercentage" CssClass="lgtext" runat="server"></asp:TextBox><br /><br /><br /><br /><br /><br />
                              <asp:Label ID="lbedu_query" runat="server" Text="" CssClass="msg_query"></asp:Label>
                      <br /><br />
                              <asp:Button ID="btnupeduacational" runat="server" Text="update" CssClass="update" OnClick="btnupeduacational_Click" /><asp:Button ID="inseduinfo" runat="server" Text="Insert" CssClass="insert_data" OnClick="inseduinfo_Click" />
                      <asp:Button ID="v2_btn_pre" runat="server" CssClass="ppage" Text="<<Previous" OnClick="Button3_Click" UseSubmitBehavior="False"  /><asp:Button ID="v2_btn_next" runat="server" CssClass="npage" Text="Next>>" OnClick="Button4_Click"  />
                  </fieldset></asp:View>
                          <asp:View ID="ViewActivities_info" runat="server"><fieldset>
                      <legend style="color:black; font-family:Georgia; font-size:25px;">Faculty Extra Activities:-</legend>
                      <asp:Label ID="Label31" runat="server" Text="Registration_Id" CssClass="lglable"></asp:Label><asp:Label ID="txtactreg_id" runat="server" Text="" CssClass="lgtext" ForeColor="Black"></asp:Label><br /><br />
                       <asp:Label ID="Label30" runat="server" Text="Activity_Id" CssClass="lglable"></asp:Label><asp:TextBox ID="txtAct_id" CssClass="lgtext" runat="server" ForeColor="Black"></asp:TextBox><br /><br />
                      
                      <asp:Label ID="Label32" runat="server" Text="Activity Name" CssClass="lglable"></asp:Label><asp:TextBox ID="txtact_name" CssClass="lgtext" runat="server"></asp:TextBox><br /><br />
                      <asp:Label ID="Label33" runat="server" Text="Activity Type" CssClass="lglable"></asp:Label><asp:DropDownList ID="ddact_type" runat="server" CssClass="ddlist" >
                          <asp:ListItem Text="Activity Type" Value="-1"></asp:ListItem> <asp:ListItem Text="Social" Value="Social"></asp:ListItem> <asp:ListItem Text="Regional" Value="Regional"></asp:ListItem>
                                   <asp:ListItem Text="Sports" Value="Sports"></asp:ListItem> <asp:ListItem Text="Natural" Value="Natural"></asp:ListItem> <asp:ListItem Text="Personal" Value="Personal"></asp:ListItem>
                                   
                                                                                                                 </asp:DropDownList><br /><br />
                      <asp:Label ID="Label34" runat="server" Text="Organized By" CssClass="lglable"></asp:Label><asp:TextBox ID="txtdescription" runat="server" CssClass="lgtext" TextMode="MultiLine"></asp:TextBox><br /><br /><br />
                      <asp:Label ID="Label52" runat="server" Text="Starting Date" CssClass="lglable"></asp:Label><asp:DropDownList ID="ddst_date" runat="server" CssClass="bdate" >
                          <asp:ListItem Text="Day" Value="-1"></asp:ListItem> <asp:ListItem Text="01" Value="1"></asp:ListItem> <asp:ListItem Text="02" Value="2"></asp:ListItem>
                                   <asp:ListItem Text="03" Value="3"></asp:ListItem> <asp:ListItem Text="04" Value="4"></asp:ListItem> <asp:ListItem Text="05" Value="5"></asp:ListItem>
                                   <asp:ListItem Text="06" Value="6"></asp:ListItem> <asp:ListItem Text="07" Value="7"></asp:ListItem> <asp:ListItem Text="08" Value="8"></asp:ListItem>
                                   <asp:ListItem Text="09" Value="9"></asp:ListItem> <asp:ListItem Text="10" Value="10"></asp:ListItem> <asp:ListItem Text="11" Value="11"></asp:ListItem>
                                   <asp:ListItem Text="12" Value="12"></asp:ListItem> <asp:ListItem Text="13" Value="13"></asp:ListItem> <asp:ListItem Text="14" Value="14"></asp:ListItem>
                                   <asp:ListItem Text="15" Value="15"></asp:ListItem> <asp:ListItem Text="16" Value="16"></asp:ListItem> <asp:ListItem Text="17" Value="17"></asp:ListItem>
                                   <asp:ListItem Text="18" Value="18"></asp:ListItem> <asp:ListItem Text="19" Value="19"></asp:ListItem> <asp:ListItem Text="20" Value="20"></asp:ListItem>
                                   <asp:ListItem Text="21" Value="21"></asp:ListItem> <asp:ListItem Text="22" Value="22"></asp:ListItem> <asp:ListItem Text="23" Value="23"></asp:ListItem>
                                   <asp:ListItem Text="24" Value="24"></asp:ListItem> <asp:ListItem Text="25" Value="25"></asp:ListItem> <asp:ListItem Text="26" Value="26"></asp:ListItem>
                                   <asp:ListItem Text="27" Value="27"></asp:ListItem> <asp:ListItem Text="28" Value="28"></asp:ListItem> <asp:ListItem Text="29" Value="29"></asp:ListItem>
                                   <asp:ListItem Text="30" Value="30"></asp:ListItem> <asp:ListItem Text="31" Value="31"></asp:ListItem> 
                                                                                                                 </asp:DropDownList>
                              <asp:DropDownList ID="ddst_month" runat="server" CssClass="bmonth">
                                   <asp:ListItem Text="Month" Value="-1"></asp:ListItem> <asp:ListItem Text="Jan" Value="1"></asp:ListItem> <asp:ListItem Text="Feb" Value="2"></asp:ListItem>
                                  <asp:ListItem Text="March" Value="3"></asp:ListItem> <asp:ListItem Text="April" Value="4"></asp:ListItem> <asp:ListItem Text="May" Value="5"></asp:ListItem>
                                   <asp:ListItem Text="June" Value="6"></asp:ListItem> <asp:ListItem Text="July" Value="7"></asp:ListItem> <asp:ListItem Text="Aug" Value="8"></asp:ListItem>
                                   <asp:ListItem Text="Sep" Value="9"></asp:ListItem> <asp:ListItem Text="Oct" Value="10"></asp:ListItem> <asp:ListItem Text="Nov" Value="11"></asp:ListItem>
                                   <asp:ListItem Text="Dec" Value="12"></asp:ListItem>
                              </asp:DropDownList>
                              <asp:DropDownList ID="ddst_year" runat="server" CssClass="byear">
                                   <asp:ListItem Text="Year" Value="-1"></asp:ListItem> <asp:ListItem Text="1975" Value="1975"></asp:ListItem> <asp:ListItem Text="1976" Value="1976"></asp:ListItem>
                                  <asp:ListItem Text="1977" Value="1977"></asp:ListItem> <asp:ListItem Text="1978" Value="1978"></asp:ListItem> <asp:ListItem Text="1979" Value="1979"></asp:ListItem>
                                   <asp:ListItem Text="1980" Value="1980"></asp:ListItem> <asp:ListItem Text="1981" Value="1981"></asp:ListItem> <asp:ListItem Text="1982" Value="1982"></asp:ListItem>
                                   <asp:ListItem Text="1983" Value="1983"></asp:ListItem> <asp:ListItem Text="1984" Value="1984"></asp:ListItem> <asp:ListItem Text="1985" Value="1985"></asp:ListItem>
                                   <asp:ListItem Text="1986" Value="1986"></asp:ListItem> <asp:ListItem Text="1987" Value="1987"></asp:ListItem> <asp:ListItem Text="1988" Value="1988"></asp:ListItem>
                                   <asp:ListItem Text="1989" Value="1989"></asp:ListItem> <asp:ListItem Text="1990" Value="1990"></asp:ListItem> <asp:ListItem Text="1991" Value="1991"></asp:ListItem>
                                   <asp:ListItem Text="1992" Value="1992"></asp:ListItem> <asp:ListItem Text="1993" Value="1993"></asp:ListItem> <asp:ListItem Text="1994" Value="1994"></asp:ListItem>
                                   <asp:ListItem Text="1995" Value="1995"></asp:ListItem> <asp:ListItem Text="1996" Value="1996"></asp:ListItem> <asp:ListItem Text="1997" Value="1997"></asp:ListItem>
                                   <asp:ListItem Text="1998" Value="1998"></asp:ListItem> <asp:ListItem Text="1999" Value="1999"></asp:ListItem> <asp:ListItem Text="2000" Value="2000"></asp:ListItem>
                                   <asp:ListItem Text="2001" Value="2001"></asp:ListItem> <asp:ListItem Text="2002" Value="2002"></asp:ListItem> <asp:ListItem Text="2003" Value="2003"></asp:ListItem>
                                   <asp:ListItem Text="2004" Value="2004"></asp:ListItem> <asp:ListItem Text="2005" Value="2005"></asp:ListItem> 

                              </asp:DropDownList><br /><br />
                      <asp:Label ID="Label35" runat="server" Text="Duration" CssClass="lglable"></asp:Label><asp:TextBox ID="txtduration" runat="server" CssClass="lgtext"></asp:TextBox><br /><br />
                      <asp:Label ID="Label26" runat="server" Text="Location" CssClass="lglable"></asp:Label><asp:TextBox ID="txtlocation" runat="server" CssClass="lgtext"></asp:TextBox><br /><br />
                      <asp:Label ID="Label36" runat="server" Text="Certificate" CssClass="lglable"></asp:Label><asp:TextBox ID="txtcertificate" runat="server" CssClass="lgtext"></asp:TextBox><br /><br />
                     <asp:Label ID="Label51" runat="server" Text="Remarks" CssClass="lglable"></asp:Label><asp:DropDownList ID="ddremarks" runat="server" CssClass="bdate" >
                          <asp:ListItem Text="Remarks" Value="-1"></asp:ListItem> <asp:ListItem Text="01" Value="1"></asp:ListItem> <asp:ListItem Text="02" Value="2"></asp:ListItem>
                                  <asp:ListItem Text="03" Value="3"></asp:ListItem> <asp:ListItem Text="04" Value="4"></asp:ListItem> <asp:ListItem Text="05" Value="5"></asp:ListItem>
                                   <asp:ListItem Text="06" Value="6"></asp:ListItem> <asp:ListItem Text="07" Value="7"></asp:ListItem> <asp:ListItem Text="08" Value="8"></asp:ListItem>
                                   <asp:ListItem Text="09" Value="9"></asp:ListItem> <asp:ListItem Text="10" Value="9"></asp:ListItem> 
                                                                                                          </asp:DropDownList><br /><br />
                      <br /><br />
                              <asp:Label ID="msgact_query" runat="server" Text="" CssClass="msg_query"></asp:Label><br /><br />
                              <asp:Button ID="btnuexActivity" runat="server" Text="update" CssClass="update" /><asp:Button ID="insexact" runat="server" Text="Insert" CssClass="insert_data" OnClick="insexact_Click" />
                      <br /><br />
                      <asp:Button ID="v3_btn_pre" runat="server" CssClass="ppage" Text="<<Previous" OnClick="v3_btn_pre_Click" UseSubmitBehavior="False"  /><asp:Button ID="v3_btn_next" runat="server" CssClass="npage" Text="Next>>" OnClick="Button8_Click" />
                      
                  </fieldset>
                  </asp:View>
                          <asp:View ID="ViewExperince_info" runat="server"><fieldset>
                      <legend style="color:black; font-family:Georgia; font-size:25px;">Faculty Experience:-</legend>
                     
                      <asp:Label ID="Label38" runat="server" Text="Registration_Id" CssClass="lglable"></asp:Label><asp:Label ID="txtexreg_id" runat="server" Text="" CssClass="lgtext" Height="25px"></asp:Label><br /><br />
                      <asp:Label ID="Label37" runat="server" Text="Experience_Id" CssClass="lglable"></asp:Label><asp:TextBox ID="txtexperience_id" CssClass="lgtext" runat="server" ForeColor="Black"></asp:TextBox><br /><br />
                               <asp:Label ID="Label39" runat="server" Text="College Name" CssClass="lglable"></asp:Label><asp:TextBox ID="txtcollege_name" CssClass="lgtext" runat="server"></asp:TextBox><br /><br />
                      <asp:Label ID="Label40" runat="server" Text="Duration of Job" CssClass="lglable"></asp:Label><asp:TextBox ID="txtduration_job" runat="server" CssClass="lgtext"></asp:TextBox><br /><br />
                      <asp:Label ID="Label41" runat="server" Text="Post of Job" CssClass="lglable"></asp:Label><asp:TextBox ID="txtpost_job" runat="server" CssClass="lgtext"></asp:TextBox><br /><br />
                      <br /><br /><br />   <asp:Label ID="msgexp_query" runat="server" Text="" CssClass="msg_query"></asp:Label><br /><br />
                           
                              <asp:Button ID="btnuexperince" runat="server" Text="update" CssClass="update" /><asp:Button ID="insexperience" runat="server" Text="Insert" CssClass="insert_data" OnClick="insexperience_Click" />
                      <asp:Button ID="Button9" runat="server" CssClass="ppage" Text="<<Previous" OnClick="Button9_Click" UseSubmitBehavior="False"   /><asp:Button ID="Button10" runat="server" CssClass="npage" Text="Next>>" OnClick="Button10_Click"  />
                      
                  </fieldset></asp:View>
                          <asp:View ID="ViewExtra_info" runat="server"><fieldset>
                      <legend style="color:black; font-family:Georgia; font-size:25px;">Faculty Extra Information:-</legend>
                      <asp:Label ID="Label45" runat="server" Text="Registration_Id" CssClass="lglable"></asp:Label><asp:Label ID="txtexinforeg" runat="server" Text="" CssClass="lgtext" Height="25px"></asp:Label><br /><br />
                                <asp:Label ID="Label44" runat="server" Text="Extra_Info_Id" CssClass="lglable"></asp:Label><asp:TextBox ID="txtex_info_id" CssClass="lgtext" runat="server" ForeColor="Black"></asp:TextBox><br /><br />
                    
                      <asp:Label ID="Label46" runat="server" Text="Blood Group" CssClass="lglable"></asp:Label><asp:DropDownList ID="ddblood_grp" runat="server" CssClass="ddlist">
                          <asp:ListItem Text="Select Blood Group" Value="-1"></asp:ListItem> <asp:ListItem Text="A+" Value="A+"></asp:ListItem> <asp:ListItem Text="A-" Value="A-"></asp:ListItem>
                                   <asp:ListItem Text="B+" Value="B+"></asp:ListItem> <asp:ListItem Text="B-" Value="B-"></asp:ListItem> <asp:ListItem Text="AB+" Value="AB+"></asp:ListItem>
                                   <asp:ListItem Text="AB-" Value="AB-"></asp:ListItem> <asp:ListItem Text="O+" Value="O+"></asp:ListItem> <asp:ListItem Text="O-" Value="O-"></asp:ListItem>
                                                                                                               </asp:DropDownList><br /><br />
                      <asp:Label ID="Label47" runat="server" Text="Height" CssClass="lglable"></asp:Label><asp:TextBox ID="txtheight" runat="server" CssClass="lgtext"></asp:TextBox><br /><br />
                      <asp:Label ID="Label48" runat="server" Text="Weight" CssClass="lglable"></asp:Label><asp:TextBox ID="txtweight" CssClass="lgtext" runat="server"></asp:TextBox><br /><br />
                      <asp:Label ID="Label49" runat="server" Text="Hobbies" CssClass="lglable"></asp:Label><asp:TextBox ID="txthobbies" runat="server" CssClass="lgtext"></asp:TextBox><br /><br />
                      <asp:Label ID="Label50" runat="server" Text="Instrest Areas" CssClass="lglable "></asp:Label><asp:TextBox ID="txtintrest_area" CssClass="lgtext" runat="server"></asp:TextBox><br /><br />
                              <asp:Label ID="Label42" runat="server" Text="Nature" CssClass="lglable "></asp:Label><asp:TextBox ID="txtnature" CssClass="lgtext" runat="server"></asp:TextBox><br /><br /><br /><br />
                              <asp:Label ID="msgquery_exinfo" runat="server" Text="" CssClass="msg_query"></asp:Label><br /><br />
                      <br /><br />
                              <asp:Button ID="btnuexinfo" runat="server" Text="update" CssClass="update" /><asp:Button ID="insexinfo" runat="server" Text="Insert" CssClass="insert_data" OnClick="insexinfo_Click" />
                      <asp:Button ID="Button11" runat="server" CssClass="ppage" Text="<<Previous" OnClick="Button11_Click1"  />                      
                  </fieldset></asp:View>
                      </asp:MultiView>


                  </div>
              
                <div class="clear"></div>
              </div>  
            </section> 
            <!-- Aside -->
            <aside>
              <div class="container_main">
                <div class="con_footer_parts">
                    <h5>About us</h5>
                    <ul class="footer_parts_lists">
                        <li><a href="#">We are people that they would</a></li>
                        <li><a href="#">love to work for new concepts</a></li>
                        <li><a href="#">to make the world easy to </a></li>
                        <li><a href="#">Conumicate with each other's </a></li>
                        <li><a href="#">and spread froiendship.</a></li>
                    </ul>
                </div>   
                <div class="con_footer_parts">
                    <h5>Recent Posts</h5>
                    <ul class="footer_parts_lists">
                        <li><a href="#">Anual meeting of board.</a></li>
                        <li><a href="#">Bond with flextra System</a></li>
                        <li><a href="#">New CEO of Liveprofile System</a></li>
                        <li><a href="#">20% fund on Nature by LiveProfile</a></li>
                        <li><a href="#">New policy crieteria</a></li>
                    </ul>
                </div>    
                <div class="con_footer_parts">
                    <h5>Our Partners</h5>
                    <ul class="footer_parts_lists">
                        <li><a href="#">Flextra.com</a></li>
                        <li><a href="#">Live World Lab.</a></li>
                        <li><a href="#">LiveProfie & co</a></li>
                        <li><a href="#">Durranto Data Linker </a></li>
                        <li><a href="#">Sydenysight.com</a></li>
                    </ul>
                </div>  
                <div class="con_footer_parts">
                    <h5>Contact us</h5>
                    <div class="social-icons">
                        <a href="#"><img src="../Assests/images/f1.png" alt=""></a><a href="#"><img src="../Assests/images/f2.png" alt=""></a><a href="#"><img src="../Assests/images/f3.png" alt=""></a><a href="#"><img src="../Assests/images/f4.png" alt=""></a></div>
                </div>        
                <div class="clear"></div>
              </div> 
            </aside>   
        </div>
    	<!-- Footer -->
        <footer>Company Name Here (c) 2013 • <a href="#">Privacy Policy</a><br />
		<!-- Do not remove -->Design by <a href="http://www.metamorphozis.com/" title="Flash Templates">Flash Templates</a><!-- end --></footer>
    <!-- Footer -->
	</div>
</div>    
    </form>
</body>
</html>
