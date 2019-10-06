viewcart.jsp 
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="java.util.*" %>

<html>
<head>
 <title></title>
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
                           tr.border_bottom td {
                            border-bottom:1pt solid black;
                            }
                        }
                        #footer{
                                width:100%;
                                min-width:960px;
                                margin:auto;
                        }
                        table { <!-- For cell spacing. The
border-collapse attribute can be set as 'separate', but I think it
looks odd  -->
                                border-collapse: collapse;
                                border-spacing: 10px;
                        }

                        tr, td {
                            padding: 10px; <!-- For cell padding -->
                        }
                </style>
</head>
