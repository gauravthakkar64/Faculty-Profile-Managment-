<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Faculty_reg.aspx.cs" Inherits="Faculty_reg" %>


<!DOCTYPE html>
<html lang="en">
<head>
  	<title>Faculty Registration</title>
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
                   
                  <ul class="my_menu">
                       <li class="current"><a href="Pages/Site_home.aspx">Home</a></li>
                      <li><a href="Give_feedback.aspx">feedback</a></li>
                      <li><a href="#">rating</a></li>
                      <li><a href="#">contact us</a></li>

                  </ul> 
                 </nav>  
                 <div class="clear"></div> 
            </header>
            <!-- Content -->
            <section id="content" style="background-color:#4D5D65">

             

              <div class="container_main" >		
                  <h3 >Registration:</h3><br /><br />
                  <fieldset>
                      <legend style="color:white; font-family:Georgia; font-size:25px;">Faculty Registration:-</legend>
                      <asp:Label ID="Label1" runat="server" Text="Registration_Id" CssClass="lglable"></asp:Label><asp:TextBox ID="txtreg_id" CssClass="lgtext" runat="server" ></asp:TextBox><asp:Label ID="lbVal_reg" runat="server" CssClass="lb_msg" Text=""></asp:Label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtreg_id" runat="server" CssClass="Reg_validation" Display="Dynamic" ErrorMessage="Registartion Id Required" Text="For Registration Enter a ID"></asp:RequiredFieldValidator><br /><br />
                      <asp:Label ID="Label2" runat="server" Text="UserName" CssClass="lglable"></asp:Label><asp:TextBox ID="txtuname" CssClass="lgtext" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="UserName Required" ControlToValidate="txtuname" CssClass="Reg_validation" Display="Dynamic">UserName Required</asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="UserName Is not in proper format" ControlToValidate="txtuname" CssClass="Reg_validation" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Username must be in proper format</asp:RegularExpressionValidator><br /><br />
                      <asp:Label ID="Label3" runat="server" Text="Password" CssClass="lglable"></asp:Label><asp:TextBox ID="txtpwd" runat="server" CssClass="lgtext" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Password Required" ControlToValidate="txtpwd" CssClass="Reg_validation" Display="Dynamic">Password should not be blank</asp:RequiredFieldValidator><br /><br />
                      <asp:Label ID="Label4" runat="server" Text="Type" CssClass="lglable"></asp:Label><asp:Label ID="lbtype" runat="server" Text="Faculty" CssClass="lgtext"></asp:Label>
                                                                                                          <br/><br/><br/>
                      <br /><br />
                     <asp:Button ID="btnreg" runat="server" CssClass="create" Text="Register" OnClick="txtregister_Click" /><asp:Button ID="btncancel" runat="server" Text="Cancel" CssClass="cancel" OnClick="Button1_Click" />
                  </fieldset>
                  
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





