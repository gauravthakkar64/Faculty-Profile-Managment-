﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Faculty_Request.aspx.cs" Inherits="Faculty_Request" %>

!DOCTYPE html>
<html lang="en">
<head>
  	<title>Admin Home</title><script type="text/javascript">
        function DeleteConfirm() {
            var Ans = confirm("Do you want to Delete Selected Employee Record?");
            if (Ans) {
                return true;
            }
            else {
                return false;
            }
        }
    </script>
  	<meta charset="utf-8">
    <meta name="description" content="Your description">
    <meta name="keywords" content="Your keywords">
    <meta name="author" content="Your name">
    <link rel="stylesheet" href="Styles/Main_home.css">
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
                    <ul><li id="usermenu"><a href="#">UserName</a>
                        <ul>
                            <li><a href="Login.aspx">Logout</a></li>
                            <li><a href="#">Policy</a></li>
                            <li><a href="#">Help</a></li>
                        </ul>
                        </li></ul>
                    
                    
                  <ul class="my_menu">
                      <li ><a href="Admin_home.aspx">Home</a></li>
                      <li ><a href="All_faculties.aspx">Profiles</a></li>
                      <li class="current"><a href="Faculty_Request.aspx">Requests</a></li>
                      <li><a href="Faculty_support.aspx">Circular</a></li>
                     
                  </ul> 
                 </nav>  
                 <div class="clear"></div> 
            </header>
            <!-- Content -->
            <section id="content" style="background-color:#4D5D65">	  
                  <h4>&nbsp;&nbsp;Faculties Profiles<hr /></h4>
                  
                      
        <div>
       <asp:GridView ID="GridView1" runat="server" CssClass="grid" AutoGenerateColumns="false" AlternatingRowStyle-CssClass="alt" PagerStyle-CssClass="pgr" Width="600px" AllowPaging="true" PageSize="8" CellSpacing="4" CellPadding="4">
            <Columns >
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:CheckBox ID="chkDel" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Reg_Id" HeaderText="   Reg Id  "/>
                <asp:BoundField DataField="User_name" HeaderText="  User Name  " />
                <asp:BoundField DataField="Date" HeaderText=" Date  " />
                
            </Columns>
            <HeaderStyle  />
            <RowStyle   />
        </asp:GridView>
        <br />
            <asp:Button ID="Button2" runat="server" Text="Accept" BackColor="#E7CEB6" CssClass="admin_btn1" OnClick="Button2_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" CssClass="admin_btn1" BackColor="#E7CEB6" OnClick="btnDeleteRecord_Click" Text="Not Now"  />
        <br />
    </div>
  
        
                 
                     
              
                <div class="clear"></div>
               
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