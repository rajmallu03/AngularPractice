<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="javax.swing.plaf.synth.SynthStyle" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>edit page</title>



</head>
<body>






<%
    String id=request.getParameter("id");
    int no=Integer.parseInt(id);
    int sumcount=0;
    try {
        Class.forName("sqlserver.jdbc.Driver").newInstance();
        Connection conn = DriverManager.getConnection("jdbc:sqlserver://DESKTOP-LK84IT9\\MSSQLSERVER2012;databaseName=ss", "sa", "WeLove9SA");
        String query = "select * from add_sales_agent where id='"+no+"'";
        Statement st = conn.createStatement();
        ResultSet rs = st.executeQuery(query);
        while(rs.next()){
%>



<tr>
    <td><input type="hidden" name="id" value="<%=rs.getString(1)%>"></td>
    <td><input type="text" name="Name" value="<%=rs.getString("name")%>"></td>
    <td><input type="text" name="Email" value="<%=rs.getString("email")%>"></td>
    <td><input type="text" name="MobileNumber" value="<%=rs.getString("mobileNumber")%>"></td>
    <td><input type="text" name="CreatePassword" value="<%=rs.getString("createPassword")%>"></td>
    <td><input type="text" name="ConfirmPassword" value="<%=rs.getInt("confirmPassword")%>"></td>


</tr>
<tr>
    <td><input type="submit" name="Submit" value="Update" style="background-color:#49743D;font-weight:bold;color:#ffffff;"></td>
</tr>
<%
        }
    }
    catch(Exception e){}
%>
</body>
</html>
