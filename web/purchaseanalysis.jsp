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
   
        <div class="main">
        <div class="header">
        <div class="header_resize">

        <div class="logo">
        <h1>Tribe Store</h1>
        </div>
        <div class="clr"></div>
        <div class="menu_nav">
        <ul>
        <li><a href="analysthome.jsp"><span>Home</span></a></li>
        <li class="active"><a href="#">Analyst</a></li>
        <li><a href="analyst.jsp">Logout</a></li>
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
            
        <%@page import="java.sql.*"%>
        <%@ page session="true" %>
        <%@ include file="connect.jsp" %>

        <%
        
        String query="select distinct category from userintention "; 
        Statement st=connection.createStatement();
        ResultSet rs=st.executeQuery(query);
        
        String query1="select distinct status from userintention where status = 'Purchased'"; 
        Statement st1=connection.createStatement();
        ResultSet rs1=st1.executeQuery(query1);
        
        %>
        <center><h2>Purchased Analysis</h2></center>
        <p align="justify">
        <form action="purchaseanalysis1.jsp" method="post" >
        <table align="center" width="321">
        <tr>
        <th height="43"><font color="black">Select Category :</th>
        <td><select name="category" style="width:170px;" class="text" required="">
        <option value="" >Select</option>       
        <% 

        while(rs.next())
        {

        String category = rs.getString("category");

        %>
        <option value="<%=category%>" ><%=category%></option>
        <% }%>
        </select></td>
        </tr>
        <tr>
        <th height="43"><font color="black">Select Status :</th>
        <td><select name="status" style="width:170px;" class="text" required="">
        <option value="" >Select</option>       
        <% 

        while(rs1.next())
        {

        String status = rs1.getString("status");

        %>
        <option value="<%=status%>" ><%=status%></option>
        <% }%>
        </select></td>
        </tr>
        
        <tr>
        <td height="13" rowspan="1">
        <p>&nbsp;</p></td>
        <td align="left" valign="middle"> <p>&nbsp;
        </p>
        <p>
        <input name="submit" type="submit" value="Analyze" />
        </p>
        <div align="right">
        </div></td>
        </tr>
        </table>
        </form>
        </p>

        <div class="clr"></div>
        </div>

        </div>
        <div class="sidebar">
        <div class="gadget">
        <h2 class="star"><span>Analyst</span> Menu</h2>
        <div class="clr"></div>
        <ul class="sb_menu">
        <li><a href="analysthome.jsp">Home</a></li>
        <li><a href="purchaseanalysis.jsp">Purchased Analysis</a></li>
        <li><a href="canceledanalysis.jsp">Canceled Analysis</a></li>
        <li><a href="viewedanalysis.jsp">Viewed Analysis</a></li>
        <li><a href="analyst.jsp">Logout</a></li>
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
