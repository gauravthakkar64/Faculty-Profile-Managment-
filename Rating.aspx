<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Rating.aspx.cs" Inherits="Rating" %>

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
                      <li><a href="#">feedback</a></li>
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
                      <legend style="color:white; font-family:Georgia; font-size:25px;">Rating:-</legend>
                      <asp:Label ID="Label12" runat="server" Text="Rating_Id" CssClass="lglable"></asp:Label><asp:TextBox ID="TextBox8" CssClass="lgtext" runat="server" ForeColor="White"></asp:TextBox><br /><br />
                      <asp:Label ID="Label1" runat="server" Text="Email_Address" CssClass="lglable"></asp:Label><asp:TextBox ID="TextBox1" CssClass="lgtext" runat="server" ForeColor="White"></asp:TextBox><br /><br />
                      <asp:Label ID="Label2" runat="server" Text="Points" CssClass="lglable"></asp:Label><asp:DropDownList ID="DropDownList3" CssClass="ddlist" runat="server"></asp:DropDownList><br /><br />
                     <asp:Button ID="Button1" runat="server" CssClass="submit" Text="Submit" /><asp:Button ID="Button2" runat="server" CssClass="cleartext" Text="Clear" />
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
                        <li><a href="#">Curabitur erat</a></li>
                        <li><a href="#">Aliquam scelerisque</a></li>
                        <li><a href="#">Quisque quis</a></li>
                        <li><a href="#">Etiam scelerisque </a></li>
                        <li><a href="#">Etiam mauris</a></li>
                    </ul>
                </div>   
                <div class="con_footer_parts">
                    <h5>Recent Posts</h5>
                    <ul class="footer_parts_lists">
                        <li><a href="#">Aliquam eu velit</a></li>
                        <li><a href="#">Fusce id vestibulum</a></li>
                        <li><a href="#">Quisque quis</a></li>
                        <li><a href="#">Vivamus scelerisque</a></li>
                        <li><a href="#">Suspendisse aliquet</a></li>
                    </ul>
                </div>    
                <div class="con_footer_parts">
                    <h5>Our Partners</h5>
                    <ul class="footer_parts_lists">
                        <li><a href="#">Aliquam eu velit</a></li>
                        <li><a href="#">Pellentesque nec</a></li>
                        <li><a href="#">Aliquam odio</a></li>
                        <li><a href="#">Quisque dignissim </a></li>
                        <li><a href="#">Cras euismod</a></li>
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
