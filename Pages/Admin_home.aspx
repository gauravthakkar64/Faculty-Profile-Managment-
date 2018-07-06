<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_home.aspx.cs" Inherits="Admin_home" %>

<!DOCTYPE html>
<html lang="en">
<head>
  	<title>Admin Home</title>
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
                    <ul><li id="usermenu"><a href="#">Welcome Admin</a>
                        <ul>
                            <li><a href="Pages/Site_home.aspx">Logout</a></li>
                            <li><a href="#">Policy</a></li>
                            <li><a href="#">Help</a></li>
                        </ul>
                        </li></ul>
                    
                    
                  <ul class="my_menu">
                      <li class="current"><a href="Admin_home.aspx">Home</a></li>
                      <li><a href="All_faculties.aspx">Profiles</a></li>
                      <li><a href="Faculty_Request.aspx">Requests</a></li>
                      <li><a href="Faculty_support.aspx">Circular</a></li>
                     
                  </ul> 
                 </nav>  
                 <div class="clear"></div> 
            </header>
            <!-- Content -->
            <section id="content" style="background-color:#4D5D65">

             

              <div class="container_main" >	
                  <div class="post">
                      
                      <img src="images/back_all.jpg" alt="image" /><p><asp:TextBox ID="txtpost" runat="server" TextMode="MultiLine" CssClass="fpost">what&#39;s on your mind ?</asp:TextBox></p>
                      <br /><br />
                       <asp:Label ID="Label5" runat="server" Text="Title:-" CssClass="post_title"></asp:Label><asp:TextBox ID="txtpname" runat="server" CssClass="namepost"></asp:TextBox><br /><br />
                       <asp:Label ID="Label6" runat="server" Text="Upload photo:-" CssClass="post_img"></asp:Label><asp:FileUpload ID="FileUpload1" runat="server" CssClass="imgpath"   />&nbsp;&nbsp;<asp:Label ID="lbmsgimg" runat="server" CssClass="path_msg" Text="" ForeColor="Red" Font-Bold="true"></asp:Label>
                      <br clear="all" /><br /><br />
                      <hr />
                      <asp:Button ID="Button1" runat="server" Text="Post" CssClass="postbtn" OnClick="Button1_Click"  /><br /><br />

                  </div>	
                
                  <h4>Recent Posts...<hr /></h4>
                  <div class="recentpost">

                      <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div class="mypost">
                        <b>
                            <asp:Label ID="Label1" runat="server" CssClass="postname" Text='<%#Eval("Post_Name") %>'>'></asp:Label></b>&nbsp;<asp:Label ID="Label2" runat="server" CssClass="postdate" Text='<%#Eval("Post_date") %>'>'></asp:Label><br />
                    <!--    <asp:Image ID="Image1"  CssClass="post_image" ImageUrl='  AlternateText="post image"/>--> <img class="post_image" runat="server" alt="Post Image"  src=' <%#Eval("Img_path") %>' />   <br /><br /><br /><br /><br /><br /><br /><asp:Label ID="Label3" runat="server" CssClass="post_data" Text='<%#Eval("Post_data") %>'></asp:Label>
                    </div>
                </ItemTemplate>
            </asp:Repeater>

            <div style="overflow: hidden;">
                <asp:Repeater ID="rptPaging" runat="server" OnItemCommand="rptPaging_ItemCommand">
                    <ItemTemplate>
                        <asp:LinkButton ID="btnPage"
                            Style="padding: 8px; margin: 2px; background: #007acc; border: solid 1px blue; font: 8px;"
                            CommandName="Page" CommandArgument="<%# Container.DataItem %>"
                            runat="server" ForeColor="White" Font-Bold="True" CausesValidation="false"><%# Container.DataItem %>
                        </asp:LinkButton>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
                 
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
