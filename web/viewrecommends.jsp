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

<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <br/><br/>
          <p>
	    <table width="440" align="left"  cellpadding="0" cellspacing="0"  >
 <%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>

<%@ page import="java.util.Date" %>
<%@ page import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
	
		<%
                
	
	String s1,s2,s3,s4,s5,s6;
	int j=0,m=0,rank=0;
	try 
	{
	ArrayList al=new ArrayList();
	
	String sql2="select * from recommends where recommendto='"+user+"' "; 
	Statement st2=connection.createStatement();
	ResultSet rs2=st2.executeQuery(sql2);
	while(rs2.next())
	{
		j=rs2.getInt(1);
		s1=rs2.getString(2);
		s2=rs2.getString(3);
                s3=rs2.getString(5);

		
		al.add(s1);
		
		if(m==0){
		%>
<table width="501" border="1.5" align="left"  cellpadding="0" cellspacing="0"  >
            <tr>
            <td  width="101" valign="baseline" height="0" style="color: #2c83b0;"><div align="center">
            <strong> Image </strong></div></td>
            <td  width="93" valign="baseline" height="0" style="color: #2c83b0;"><div align="center">
            <strong>User Name </strong></div></td>
            <td  width="115" valign="baseline" height="0" style="color: #2c83b0;"><div align="center">
            <strong>Post Name </strong></div></td>
            <td  width="115" valign="baseline" height="0" style="color: #2c83b0;"><div align="center">
            <strong>Description </strong></div></td>

            </tr>
                    <%}%>
        <tr>
        <td width="101"><input  name="image" type="image" style="width:100px; height:100px;" src="profile_pic2.jsp?pname=<%=s2%>&type=<%="image"%>"/></td>
        
        <td  width="93" height="110" align="center" valign="middle"><div align="center"><font color="black"><%out.println(s1);%></div></td>
        <td width="101"> <a href="pdetails.jsp?pname=<%=s2%>"><%=s2%></a></td>
        <td  width="115" height="110" align="center" valign="middle"><div align="center"><font color="black"><%out.println(s3);%></div></td>

        </tr> 

            </form>
            <%m=2;
            }

            if(al.isEmpty())
            {
            %>
            <h2 class="style6">Sorry..!! Nothing To Display</h2>
            <%}
             String msg=(String)application.getAttribute("msg");
             if(msg!=null){
             %><h3 class="style8"> <%=msg%></h3> 
              <%
             application.removeAttribute("msg");
            }
             %>

        <%
            connection.close();

            }
            catch(Exception e)
            {
                    out.println(e.getMessage());
            }
            %>
      </table>
		  </p>
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
    

      
