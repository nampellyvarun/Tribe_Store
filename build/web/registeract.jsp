<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>
    <%
    
    String username = request.getParameter("username");
    String password = request.getParameter("password"); 
    String email = request.getParameter("email");
    String dob = request.getParameter("dob");
    String gender = request.getParameter("gender"); 
    String address = request.getParameter("address");
    String mobile = request.getParameter("mobile");
     try{

    PreparedStatement ps=connection.prepareStatement("insert into user(username,password,email,dob,gender,address,mobile) values(?,?,?,?,?,?,?)");

    ps.setString(1,username);
    ps.setString(2,password);
    ps.setString(3,email);
    ps.setString(4,dob);
    ps.setString(5,gender);
    ps.setString(6,address);
    ps.setString(7,mobile);
       
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("user.jsp?msg=Added");
    }
    else{
    response.sendRedirect("user.jsp?m1=Failed");    
    }
    %>
    <%
    }

    catch(Exception e)
    {
            out.println(e.getMessage());
    }
    %>