<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Message :)</title>
	<meta charset="UTF-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
  	<script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="w-[100vw] h-[100vh] flex justify-center items-center bg-[#41C9E2]" >
		<%@ include file="button.html" %>
	  	<%
		    String msg_type = (String) session.getAttribute("msg_type");
	  		String msg_content = (String) session.getAttribute("msg_content");
	  		if (msg_type != null) {
	            %>
	            	<div class="flex items-center p-4 mb-4 text-sm text-<%= msg_type=="success" ? "green" : "red" %>-800 border border-<%= msg_type=="success" ? "green" : "red" %>-300 rounded-lg bg-<%= msg_type=="success" ? "green" : "red" %>-50" role="alert">
					  <svg class="flex-shrink-0 inline w-4 h-4 me-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 20 20">
					    <path d="M10 .5a9.5 9.5 0 1 0 9.5 9.5A9.51 9.51 0 0 0 10 .5ZM9.5 4a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3ZM12 15H8a1 1 0 0 1 0-2h1v-3H8a1 1 0 0 1 0-2h2a1 1 0 0 1 1 1v4h1a1 1 0 0 1 0 2Z"/>
					  </svg>
					  <span class="sr-only"><%=msg_type%></span>
					  <div>
					    <span class="font-medium"><%=msg_content%></span>
					  </div>
					</div>
	            <%
	            session.removeAttribute("msg_type");
	            session.removeAttribute("msg_content");
	        }
	    %>
</body>
</html>