
     
        <%@page import="java.sql.*"%>
        <%@ include file="connect.jsp" %>
        <%@ page session="true" %>
        
        <%
         String productname = request.getParameter("productname");
         
        String sql2="select description from products where productname='"+productname+"' "; 
	Statement st2=connection.createStatement();
	ResultSet rs=st2.executeQuery(sql2);
	String description=null;
        if(rs.next())
	{
		description=rs.getString("description");
        }   
        %>

        <%
        String user=session.getAttribute("user").toString();
        String recommendto = request.getParameter("recommendto");

        PreparedStatement ps1=connection.prepareStatement("insert into recommends (username,productname,recommendto,description) values ('"+user+"','"+productname+"','"+recommendto+"','"+description+"')");
        int i=ps1.executeUpdate();
        if(i>0)
        {
        response.sendRedirect("recommend.jsp?m1=sucess");
        }


        %>
        