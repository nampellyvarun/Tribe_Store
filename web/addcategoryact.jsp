
     
        <%@page import="java.sql.*"%>
        <%@ include file="connect.jsp" %>
        <%@ page session="true" %>
        <%@ page import="org.bouncycastle.util.encoders.Base64"%>


        <%
        String category = request.getParameter("category");

        PreparedStatement ps1=connection.prepareStatement("insert into category (category) values ('"+category+"')");
        int i=ps1.executeUpdate();
        if(i>0)
        {
        response.sendRedirect("addcategory.jsp?m1=sucess");
        }


        %>
        