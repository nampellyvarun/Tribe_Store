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
        if (request.getParameter("m1") != null) {%>
       <script>alert('Product Recommended Sucessfully');</script>
       <%}%>
    
    <%@page import="java.sql.*"%>
    <%@ page session="true" %>
    <%@ include file="connect.jsp" %>
    <%@ page import="org.bouncycastle.util.encoders.Base64"%>

 <%
String user=session.getAttribute("user").toString();
%>
   
        <div class="main">
        <div class="header">
        <div class="header_resize">

        <div class="logo">
        <h1>Tribe Store</h1>
        </div>
        <div class="clr"></div>
        <div class="menu_nav">
        <ul>
        <li><a href="userhome.jsp"><span>Home </span></a></li>
        <li class="active"><a href="#.jsp"><%=user%></a></li>
        <li><a href="user.jsp">Logout</a></li>
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
           
        <%
        String productname = request.getParameter("productname");
        %> 
       

        <%
        
        String query="select * from user where username != '"+user+"' "; 
        Statement st=connection.createStatement();
        ResultSet rs=st.executeQuery(query);
        
        %>
            
        <br/>
        <center>
            <h1><font color="black" >Recommend Products</font></h1>
        <br/>
        <form name="myform" action="recommendact.jsp" method="post" >
        <table border="0" >
                      
        <tr><td><font color="black"> Product Title :</td>
        <td><input type="text" name="productname" value="<%=productname%>" readonly="" /></td></tr>
                        
        <tr>
        <th height="43"><font color="black">Recommend To :</th>
        <td><select name="recommendto" style="width:170px;" class="text" required="">
        <option value="" >Select</option>       
        <% 

        while(rs.next())
        {

        String username = rs.getString("username");

        %>
        <option value="<%=username%>" ><%=username%></option>
        <% }%>
        </select></td>
        </tr>
       
        <tr rowspan="2" align="center"><td><br><input type="submit" name="submit" value=" RECOMMEND " /></td></tr>
        <tr></tr>      
        </table>
        </form>
        </center>
        
        <div class="clr"></div>
        </div>

        </div>
        <div class="sidebar">
        <div class="gadget">
      
        <h2 class="star"><span>User</span> Menu</h2>
        <div class="clr"></div>
        <ul class="sb_menu">
        <li><a href="userhome.jsp">Home</a></li>
        <li><a href="managebankacount.jsp">Manage Bank Account</a></li>
        <li><a href="searchproducts.jsp">Search Products</a></li>
       
        <li><a href="viewcartproducts.jsp">Purchase Cart Products</a></li>
        <li><a href="viewpurchasedproducts.jsp">My Purchased Products</a></li>
        <li><a href="user.jsp">Logout</a></li>
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
    
