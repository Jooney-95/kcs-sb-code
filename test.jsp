<%@ page contentType="text/html; charset=UTF-8"%>
<html>
    	<head><title>hello world</title></head>
    	<body>
    	<h2>
            	TOMCAT TEST<br><br>
            	time : <%= new java.util.Date()%>
            	<%@ page import="java.net.InetAddress" %><br>
            	<%InetAddress inet= InetAddress.getLocalHost();%>
            	WAS ip : <%=inet.getHostAddress()%>
    	</h2>
    	</body>
</html>
