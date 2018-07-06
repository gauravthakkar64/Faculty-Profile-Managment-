<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Give_feedback.aspx.cs" Inherits="Give_feedback" %>

<!DOCTYPE html>

<html lang="en">
<head>
  	<title>Free CSS website template</title>
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
                    <ul class=up_login>
                    
                      <li><a href="Faculty_reg.aspx">Registration</a></li>
                      
                      
                  </ul>
                   
                    
                  <ul class="my_menu">
                      <li class="current"><a href="Pages/Site_home.aspx">Home</a></li>
                      <li><a href="Give_feedback.aspx">Feedback</a></li>
                      <li><a href="#">Rating</a></li>
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
                      <legend style="color:white; font-family:Georgia; font-size:25px;">Feedback:-</legend>
                      <asp:Label ID="Label12" runat="server" Text="Feedback_Id" CssClass="lglable"></asp:Label><asp:TextBox ID="txtfeedback_id" CssClass="lgtext" runat="server" ForeColor="Black"></asp:TextBox><br /><br />
                      <asp:Label ID="Label1" runat="server" Text="Email_address" CssClass="lglable"></asp:Label><asp:TextBox ID="txtfeedbk_email" CssClass="lgtext" runat="server" ForeColor="Black"></asp:TextBox><br /><br />
                      <asp:Label ID="Label2" runat="server" Text="Comment" CssClass="lglable"></asp:Label><asp:TextBox ID="txtcomment" runat="server" CssClass="lgtext" TextMode="MultiLine"></asp:TextBox><br /><br /><br /><br />
                      <asp:Label ID="Label3" runat="server" Text="Type" CssClass="lglable"></asp:Label><asp:DropDownList ID="ddfeed_type" CssClass="ddlist" runat="server">
                           <asp:ListItem Text="Select Type" Value="-1"></asp:ListItem> <asp:ListItem Text="Positive" Value="Positive"></asp:ListItem> <asp:ListItem Text="Negative" Value="Negative"></asp:ListItem>
                                                                                                       </asp:DropDownList><br /><br /><br /><br />
                      <asp:Label ID="msgmeedback" runat="server" CssClass="msg_query" ></asp:Label><br />
                     <asp:Button ID="Button1" runat="server" CssClass="submit" Text="Submit" OnClick="Button1_Click" /><asp:Button ID="Button2" runat="server" CssClass="cleartext" Text="Clear" />
                      <br /><br />
                      
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