<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Tribe Store</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
</head>
<body>
    
    
    <%
       if (request.getParameter("msg") != null) {%>
       <script>alert('Login Successful');</script>
       <%}%>
       
        <div class="main">
        <div class="header">
        <div class="header_resize">

        <div class="logo">
        <h1>Tribe Store</h1>
        </div>
        <div class="clr"></div>
        <div class="menu_nav">
        <ul>
        <li><a href="adminhome.jsp"><span>Home</span></a></li>
        <li class="active"><a href="#">Admin</a></li>
        <li><a href="admin.jsp">Logout</a></li>
        </ul>
        </div>
        <div class="clr"></div>
        <div class="slider">
        <div id="coin-slider"> 
        <a href="#"><img src="images/s1.jpg" width="960" height="360" alt="" /></a> 
        <a href="#"><img src="images/s2.jpg" width="960" height="360" alt="" /></a> 
        <a href="#"><img src="images/s3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="clr"></div>
        </div>
        <div class="clr"></div>
        </div>
        </div>
        <div class="content">
        <div class="content_resize">
        <div class="mainbar">
        <div class="article">
            
        <br/>
        <center> <p><font size="6"> Welcome to Admin</font></p></center>
        <br/>
        <img src="images/ahome.jpg" alt="" width="580" height="260"/>

        <div class="clr"></div>
        </div>

        </div>
        <div class="sidebar">
        <div class="gadget">
        <h2 class="star"><span>Admin</span> Menu</h2>
        <div class="clr"></div>
        <ul class="sb_menu">
        <li><a href="adminhome.jsp">Home</a></li>
        <li><a href="viewusers.jsp">View all Users & Activate</a></li>
        <li><a href="addcategory.jsp">Add Category</a></li>
        <li><a href="addproducts.jsp">Add Products</a></li>
        <li><a href="viewproducts.jsp">View all Products</a></li>
        
        <li><a href="adminviewpurchasedproducts.jsp">View Purchased Products </a></li>
        <li><a href="admin.jsp">Logout</a></li>
        </ul>
        </div> 
        </div>
        <div class="clr"></div>
        </div>
        </div>

        <div class="footer">
        <div class="footer_resize">
         
        <div style="clear:both;"></div>
        </div>
        </div>
        </div>
        
</body>
</html>
