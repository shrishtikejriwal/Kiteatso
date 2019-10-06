del.jsp
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String userid="proj";//request.getParameter("user");
//session.putValue("userid",userid); 
String pwd="1234";//request.getParameter("pwd"); 
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/login_validation","proje","");
Statement st= con.createStatement(); 
String s=request.getParameter("item");
int g=Integer.parseInt(request.getParameter("price"));
int t=Integer.parseInt(request.getParameter("quan"));
st.executeUpdate("delete from cart where name='"+s+"'");
int total=(Integer)(session.getAttribute("total"));
total-=g;

ResultSet rs=st.executeQuery("select quantity from breakfast where name='"+s+"'");
rs.next();
int qu=rs.getInt(1)+t;
st.executeUpdate("update breakfast set quantity="+qu+" where name='"+s+"'");
session.setAttribute("total",total);



%>
<jsp:forward page="/viewcart.jsp" />
