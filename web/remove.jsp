
     
        <%@page import="java.sql.*"%>
        <%@ include file="connect.jsp" %>
        <%@ page session="true" %>
        <%@ page import="org.bouncycastle.util.encoders.Base64"%>
        <%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>


        <%
        String user=session.getAttribute("user").toString();
        String category = request.getParameter("category");
        String productname = request.getParameter("pname");
        String image = request.getParameter("image");
        int price =Integer.parseInt(request.getParameter("price"));
        
        PreparedStatement ps=connection.prepareStatement("insert into cancelledproducts (username,category,productname,price,image) values ('"+user+"','"+category+"','"+productname+"','"+price+"','"+image+"')");
        ps.executeUpdate();
        
        PreparedStatement ps4=connection.prepareStatement ("insert into userintention (username,category,productname,status) values ('"+user+"','"+category+"','"+productname+"','Cancelled')");
        ps4.executeUpdate();
        
        PreparedStatement ps1=connection.prepareStatement("delete from cart where productname = '"+productname+"'");
        ps1.executeUpdate();
        
        response.sendRedirect("viewcartproducts.jsp?msgg=sucess");
        
  %>
        
        