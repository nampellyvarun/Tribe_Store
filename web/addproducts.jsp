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
        <%@page import="java.sql.*"%>
        <%@ include file="connect.jsp" %>
        <%@ page session="true" %>
        
        <%
        if (request.getParameter("msg") != null) {%>
       <script>alert('Product added Sucessfully..!');</script>
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
        <center>
            <h1><font color="black" >Add Products</font></h1>
        <br/>
        <form name="myform" action="addproductsact.jsp" method="post" id="" >
        <table border="0" >
        
        <%
                             	
        String sql="SELECT category FROM category  ";
        Statement stmt = connection.createStatement();
        ResultSet rs =stmt.executeQuery(sql);

        %> 
            
        <tr><td><font color="black"> Category :</td>
         
            <td><select id="category" name="category" required="" />
               
        <option>--Select--</option>
        <% 
        while(rs.next())
        {
        String category = rs.getString("category");
                       
        %>
               
          
        <option><%=category%></option>
        <% }%>
             

        </select>
        </td></tr>
                        
        <tr><td><font color="black"> Product Name :</td>
        <td><input type="text" name="productname" required="" /></td></tr>
                        
        <tr><td><font color="black"> Description :</td>
        <td><textarea id="description" name="description" rows="3" cols="21" required=""></textarea></td></tr>
            
        <tr><td><font color="black"> Price :</td>
        <td><input type="text" name="price" required="" /></td></tr>
            
        <tr><td><font color="black"> Brand / Company :</td>
        <td><input type="text" name="brand" required="" /></td></tr>
            
        <tr>
        <td height="43"><font color="black">Image : </td>
        <td><font color="black"><input type="file" id="pic" name="pic" required=""/></td>
        </tr>
            
        
          
        <tr rowspan="2" align="center"><td><br><input type="submit" name="submit" value=" ADD " /></td></tr>
        <tr></tr>      
        </table>
        </form>
        </center>
        
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
    
