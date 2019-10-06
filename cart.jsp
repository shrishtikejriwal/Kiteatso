cart.jsp

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<% int n=Integer.parseInt(request.getParameter("quan"));
String dbname=request.getParameter("dbname");
String item=request.getParameter("item");




Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/login_validation","proje","");
Statement st= con.createStatement(); 
String q="select * from breakfast";
ResultSet rs=st.executeQuery("select * from breakfast");
int total=0;
int qj=0;
int price=0;
while(rs.next())
{ 
	 out.println(""+rs.getString(1)+item);
	if(rs.getString(1).equals(item))
	{   
		if(rs.getInt(4)>=n)
		{  
			 qj=rs.getInt(4);
			total+=(Integer)(session.getAttribute("total"));
			total+=rs.getInt(3)*n;
			price=rs.getInt(3)*n;
			session.setAttribute("total",total);
			
			
		}
		else
		{
			
		}
		
	}
}
int u=qj-n;
String queryText = "insert into cart values('"+item+"',"+n+","+price+")";

st.executeUpdate(queryText); 

String s="update breakfast set quantity="+u+" where name='"+item+"'";

st.executeUpdate(s); 

%>



<jsp:forward page="validation.jsp"/> 



</body>
</html>
