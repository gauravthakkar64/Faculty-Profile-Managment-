<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Site_home.aspx.cs" Inherits="Site_home" %>


<!DOCTYPE html>
<html lang="en">
<head>
  	<title>Live Profile | Home</title>
  	<meta charset="utf-8">
    <meta name="description" content="Your description">
    <meta name="keywords" content="Your keywords">
    <meta name="author" content="Your name">
    <link rel="stylesheet" href="../Styles/Main_home.css">
    <link href="../Styles/nivo-slider.css" rel="stylesheet" type="text/css" media="screen" />
	<link href='http://fonts.googleapis.com/css?family=Allura' rel='stylesheet' type='text/css'>
</head>
<body>
<div class="site_background">
	<div class="site_background_1">
        <div class="site_background_2">
        <!-- Header -->
            <header>
                
                <nav>
                    <h1><a href="#">Live Profile</a></h1>
                    <ul class=up_login>
                      <li class="current"><a href="../Login.aspx">Login</a></li>
                      <li><a href="../Faculty_reg.aspx">Registration</a></li>
                      
                      
                  </ul>
                    
                  <ul class="my_menu">
                      <li class="current"><a href="Site_home.aspx">Home</a></li>
                      <li><a href="#">about</a></li>
                      <li><a href="../Give_feedback.aspx">support</a></li>
                      <li><a href="#">contact us</a></li>
                  </ul> 
                 </nav>  
                 <div class="clear"></div> 
            </header>
            <!-- Content -->
            <section id="content">

             <!-- Slider -->
<div id="my_slider">
 	
	<div id="slider-wrapper">        
            <div id="slider" class="nivoSlider" >
                <img src="../images/corporate-1-slider-slide-1.jpg" alt="slide"/>
                <img src="../images/corporate-2-slider-slide-2.jpg" alt="slide"/>
                <img src="../images/background-img-6.jpg" alt="slide" />

               
          </div>        
        </div>


    <script src="../js/jquery-1.4.3.min.js" type="text/javascript"></script>
    <script src="../js/jquery.nivo.slider.pack.js" type="text/javascript"></script>
   
    <script type="text/javascript">
        $(window).load(function () { $('#slider').nivoSlider(); });
    </script>

</div>
              
              <div class="container_main">			  
            
                <div class="recentpost">
                      <h4 >Recent Posts...<hr  /></h4>
                      <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div class="mypost">
                        <b>
                            <asp:Label ID="Label1" runat="server" CssClass="postname" Text='<%#Eval("Post_Name") %>'>'></asp:Label></b>&nbsp;<asp:Label ID="Label2" runat="server" CssClass="postdate" Text='<%#Eval("Post_date") %>'>'></asp:Label><br />
                    <!--    <asp:Image ID="Image1"  CssClass="post_image" ImageUrl='  AlternateText="post image"/>--> <img class="post_image" runat="server" alt="Post Image"  src=' <%#Eval("Img_path") %>' />   <br /><br /><br /><br /><br /><br /><br /><asp:Label ID="Label3" runat="server" CssClass="post_data" Text='<%#Eval("Post_data") %>'></asp:Label>
                    </div>
                </ItemTemplate>
            </asp:Repeater>

    <form runat="server">        <div style="overflow: hidden;">
                <asp:Repeater ID="rptPaging" runat="server" OnItemCommand="rptPaging_ItemCommand">
                    <ItemTemplate>
                        <asp:LinkButton ID="btnPage" 
                            Style="padding: 8px; margin: 2px; background: #007acc; border: solid 1px blue; font: 8px;"
                            CommandName="Page" CommandArgument="<%# Container.DataItem %>"
                            runat="server" ForeColor="White"  Font-Bold="True" CausesValidation="false"><%# Container.DataItem %>
                        </asp:LinkButton>
                    </ItemTemplate>
                </asp:Repeater>
            </div></form>
                     
              
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
</body>
</html>
