index.jsp
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <title>CSS Layouts</title>
                <style type="text/css">
                        #header{
                                width:100%;
                                min-width:400px;
                               height:100px;
                                background-color:#33CC33;
                                font-size: 60px;
                        }
                        #content{
                                width:100%;
                             height:1000px;
                             margin-top: 50px;
                        }
                        #footer{
                                width:100%;
                                min-width:960px;
                                margin:auto;
                        }
                </style>
</head>
<body>

<div id="header">
<img src="head.jpg" />
</div>
 <div id="content">
                    
 
<center><form name="form1" action="javaConnection" method="get" >
<table  frame="box" >
<tr><td>
<h1>Login Here!</h1></td></tr>
<tr>
<td><p> Login </p></td>
<td><input type="text" name="login" id="login" /> </td></tr>
<tr>
<td><p>Password </p></td>
<td><input type="password" name="password" /></td></tr>
<tr><td></td><td><input type="submit" name="submit"/></td></tr>

<tr><td><h2><a href="register.html" >sign up!</a></h2></td></tr>
</table> 
</form>
</center>
</div>
</body>
</html>
