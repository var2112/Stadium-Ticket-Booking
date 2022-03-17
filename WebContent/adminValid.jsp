<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Credentials</title>
</head>
<body>

</body>
</html>

<%  String userName = request.getParameter("username");
String passWord = request.getParameter("password");

try{
	Class.forName("com.mysql.jdbc.Driver"); 
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/StadiumBooking ?characterEncoding=latin1","root","root");    
	PreparedStatement pst = conn.prepareStatement("Select AdminUser,AdminPass from Admin where AdminUser=? and AdminPass=?");
	pst.setString(1, userName);
	pst.setString(2, passWord);
	ResultSet rs = pst.executeQuery();                        
	if(rs.next())           
	    response.sendRedirect("adminViewDatabase.jsp");
	else
		response.sendRedirect("home.html");
	
}catch(Exception e){
	out.println(e);
}

%>