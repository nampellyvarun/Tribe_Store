
     
        <%@page import="java.sql.*"%>
        <%@ include file="connect.jsp" %>
        <%@ page session="true" %>
        <%@ page import="org.bouncycastle.util.encoders.Base64"%>
        <%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>


        <%
        String user=session.getAttribute("user").toString();
        String category = request.getParameter("category");
        String productname = request.getParameter("productname");
        String price = request.getParameter("price");
        String image = request.getParameter("image");
        
        
        PreparedStatement ps1=connection.prepareStatement("insert into cart (username,category,productname,price,image) values ('"+user+"','"+category+"','"+productname+"','"+price+"','"+image+"')");
        ps1.executeUpdate();
        
        
        PreparedStatement ps4=connection.prepareStatement ("insert into userintention (username,category,productname,status) values ('"+user+"','"+category+"','"+productname+"','Added')");
        ps4.executeUpdate();
                  
       
        
        response.sendRedirect("searchproducts.jsp?m1=sucess");
        
  %>
        
        