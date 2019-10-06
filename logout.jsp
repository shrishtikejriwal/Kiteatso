logout.jsp
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String userid="proj";//request.getParameter("user");
//session.putValue("userid",userid); 
String pwd="1234";//request.getParameter("pwd"); 
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/login_validation","proje","");
Statement st= con.createStatement(); 
st.executeUpdate("Truncate table cart");



%>
<jsp:forward page="/index1.jsp" />
