register.jsp

<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%

Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/login_validation","proje","");
Statement st= con.createStatement(); 
String name=request.getParameter("name");
String pass=request.getParameter("pass");
st.executeUpdate("insert into login values('"+name+"','"+pass+"')");
%>
<html>
<head>
</head>
<body>
<a href="index1.jsp">click here to login</a>
</body></html>
