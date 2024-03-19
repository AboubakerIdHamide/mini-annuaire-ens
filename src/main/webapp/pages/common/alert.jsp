<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Message :)</title>
</head>
<body>
	  	<%
		    String msg_type = (String) session.getAttribute("msg_type");
	  		String msg_content = (String) session.getAttribute("msg_content");
	  		if (msg_type != null) {
	            %>
	            	<div class="<%=msg_type%>">
	            		<%=msg_content%>
	            	</div>
	            <%
	            session.removeAttribute("msg_type");
	            session.removeAttribute("msg_content");
	        }
	    %>	
	    <a href="?type=list">Home</a>
</body>
</html>