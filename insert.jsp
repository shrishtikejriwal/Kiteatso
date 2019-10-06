insert.jsp
%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%

Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/login_validation","proje","");
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from breakfast");




%>
<html>
<head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
 <title>CSS Layouts</title>
                <style type="text/css">
                #but{
                margin-top: 40px;
                 margin-right: 100px;
                
               
                }
                        #header{
                                width:100%;
                                min-width:400px;
                               height:100px;
                                background-color:#33CC33;
                                font-size: 60px;
                        }
                        #content{
                                width:80%;
                             height:100%;
                             position: fixed;
    top: 50%;
   
    margin-top: -100px;
    margin-left: 150px;
    overflow:scroll;
   tr.border_bottom td {
  border-bottom:1pt solid black;
}
    
                        }
                        
                </style>
</head>
<body>
<div id="full">
<div id="header" >
<img src="head.jpg" height=100px />

 </div>
 <div id="but" align="right">
 <a href="viewcart.jsp"><button class="btn btn-success"><h5>Cart!</h5></button></a>
<a href="logout.jsp"><button class="btn btn-success"><h5>Logout!</h5></button></a>
</div>
 <div id="content" style="height: 60%;">
                    


<table border="0.2" cellpadding="" cellspacing="50" rules=rows>

<% while(rs.next()) {%>
<tr class="border_bottom">
<% String path=rs.getString(2);
String name1=rs.getString(1);
int cost=rs.getInt(3);
int quan=rs.getInt(4);
String des=rs.getString(5);
%>
 

<td>
  <img src=<%=path%> alt="hmel" height="230px" width="250px" />


</td>
<td>
<h2><%=name1%></h2>
<p><%=des %>
</p>

<p>Cost:<%=cost%></p>
<p>Quantity left:<%=quan%></p>
<form action='cart.jsp?item=<%=name1%>' name="form1" method="post">
<p>Quantity:<input type="text" id="quan" name="quan"/></p>
<input type="submit" value="Add to cart" />
</form>
</td>

</tr>

<%} %>
</table></div></body></html>

