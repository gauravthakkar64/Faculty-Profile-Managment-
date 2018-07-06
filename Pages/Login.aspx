<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>


<!DOCTYPE html>
<html lang="en">
<head>
  	<title>Login</title>
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
                      <li><a href="Give_feedback.aspx">support</a></li>
                      <li><a href="#">Abot us</a></li>
                      <li><a href="#">contacts</a></li>
                  </ul> 
                 </nav>  
                 <div class="clear"></div> 
            </header>
            <!-- Content -->
            <section id="content" style="background-color:#4D5D65">

             

              <div class="container_main" >		
                  <asp:Label ID="Label1" runat="server" Text="Username" CssClass="loginlable"></asp:Label><asp:TextBox ID="txtuname" runat="server" CssClass="logintext"></asp:TextBox><asp:Label ID="msguname" runat="server" CssClass="validation" Text=""></asp:Label><asp:RequiredFieldValidator ID="rfvuname" runat="server" ErrorMessage="Username requierd" ControlToValidate="txtuname" CssClass="validation" Display="Dynamic">Username required</asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="revuname" runat="server" ErrorMessage="username is incorrect" ControlToValidate="txtuname" CssClass="validation" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">username is not proper</asp:RegularExpressionValidator><br/><br />
                  <asp:Label ID="Label2" runat="server" Text="Password" CssClass="loginlable"></asp:Label><asp:TextBox ID="txtpwd" runat="server" CssClass="logintext" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="rfvpwd" runat="server" ErrorMessage="password required" ControlToValidate="txtpwd" CssClass="validation" Display="Dynamic">password required</asp:RequiredFieldValidator><asp:Label ID="msgpwd" runat="server" Text="" ></asp:Label><br /><br />
                 <!-- <asp:Label ID="Label3" runat="server" Text="UserType" CssClass="loginlable"></asp:Label><asp:DropDownList ID="ddusertype" runat="server" CssClass="usertype">
                      
                  <asp:ListItem Text="Select Type" Value="None"></asp:ListItem> <asp:ListItem Text="Admin" Value="Admin"></asp:ListItem> <asp:ListItem Text="Faculty" Value="Faculty"></asp:ListItem>
                  </asp:DropDownList>--><asp:Label ID="lbtype" runat="server" Text="" CssClass="validation"></asp:Label><br /><br />
                  <asp:Button ID="lgbtn" runat="server" Text="Login" CssClass="lgbtn" OnClick="lgbtn_Click1" /><asp:LinkButton ID="LinkButton1" runat="server" CssClass="forgot_pss">Forgot Password?</asp:LinkButton><br /><br />
                  <asp:LinkButton ID="LinkButton2" runat="server" CssClass="Signup_link" OnClick="LinkButton2_Click">Need a account?Sign up here.</asp:LinkButton>
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



