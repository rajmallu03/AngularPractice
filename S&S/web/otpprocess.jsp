<%--
  Created by IntelliJ IDEA.
  User: Joel
  Date: 12/21/2017
  Time: 3:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
    String name=(String)session.getAttribute("name");
    String email=(String)session.getAttribute("email");
    String phone=(String)session.getAttribute("phone");
    int otp= (Integer) session.getAttribute("otp");
    String otpvalue=request.getParameter("otpvalue");
    int enterOtp=Integer.parseInt(otpvalue);
    if(otp==enterOtp)
    {
        try
        {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection conn = DriverManager.getConnection("jdbc:sqlserver://DESKTOP-LK84IT9\\MSSQLSERVER2012;databaseName=ss", "sa", "WeLove9SA");
            Statement st=conn.createStatement();
            int i=st.executeUpdate("insert into student(name,email,phone)values('"+name+"','"+email+"','"+phone+"')");
            out.println("Thank you for register.!");
        }
        catch(Exception e)
        {
            System.out.print(e);
            e.printStackTrace();
        }
    }
    else
    {
        out.println("OTP not matched");
    }
%>
