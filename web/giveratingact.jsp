<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
    <%
    
    String username = session.getAttribute("user").toString();
    String pname = request.getParameter("pname");
    String category = request.getParameter("category"); 
    String review = request.getParameter("review");
    String rating = request.getParameter("rating");
     try{

    PreparedStatement ps=connection.prepareStatement("insert into reviews(username,pname,category,review,rating) values(?,?,?,?,?)");

    ps.setString(1,username);
    ps.setString(2,pname);
    ps.setString(3,category);
    ps.setString(4,review);
    ps.setString(5,rating);
       
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("viewpurchasedproducts.jsp?msg=Added");
    }
    else{
    response.sendRedirect("viewpurchasedproducts.jsp?m1=Failed");    
    }
    %>
    <%
    }

    catch(Exception e)
    {
            out.println(e.getMessage());
    }
    %>