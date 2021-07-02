
     
        <%@page import="java.sql.*"%>
        <%@ include file="connect.jsp" %>
        <%@ page session="true" %>
        <%@ page import="org.bouncycastle.util.encoders.Base64"%>
        <%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
        <%@page import="behaviour.Mail"%>

        <%
        
        String user=session.getAttribute("user").toString();
        String category = request.getParameter("category");
        String productname = request.getParameter("pname");
        String image = request.getParameter("image");
        int price =Integer.parseInt(request.getParameter("price"));
        String email = session.getAttribute("email").toString();
        System.out.println("email"+email);
        String dt=null;
        Date dNow = new Date( );
        SimpleDateFormat date2 = new SimpleDateFormat("yyyy:mm:dd hh:mm:ss");
        dt = date2.format(dNow);
        
        String sql="SELECT amount FROM accountdetails where username='"+user+"' ";
        Statement stmt = connection.createStatement();
        ResultSet rs =stmt.executeQuery(sql); 
        int amount1 = 0;
        int total = 0;
        if(rs.next()){
        amount1 = rs.getInt("amount");
        
        }
        
        if(price<=amount1) {      
        total = amount1-price;
        
        
        PreparedStatement ps1=connection.prepareStatement("insert into purchasedproducts (username,category,productname,price,dt,image) values ('"+user+"','"+category+"','"+productname+"','"+price+"','"+dt+"','"+image+"')");
        ps1.executeUpdate();
        
        PreparedStatement ps2=connection.prepareStatement("update accountdetails set amount='"+total+"' where username = '"+user+"' ");
        ps2.executeUpdate();
        
             
        PreparedStatement ps4=connection.prepareStatement ("insert into userintention (username,category,productname,status) values ('"+user+"','"+category+"','"+productname+"','Purchased')");
        ps4.executeUpdate();
        
        PreparedStatement ps=connection.prepareStatement("delete from cart where productname = '"+productname+"'");
        ps.executeUpdate();
        
        String msg ="Successfully Purchased";

        Mail m= new Mail();
        m.secretMail(msg, email, email);
        
        
        response.sendRedirect("viewcartproducts.jsp?msg=sucess");
        }
        
        else{
        response.sendRedirect("viewcartproducts.jsp?m1=Failed");    
            
        }

        
        %>
        
        