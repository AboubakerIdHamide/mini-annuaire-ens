<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="classes.*" %>
<%@ page import="models.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List d'Etudinats</title>
</head>
<body>
	    <ul>
           	<%
		       try{
	        		List<Etudiant> etudiants = EtudiantModel.all();
                	for(Etudiant etudiant: etudiants){
	    	%>	
	            <li>
	       			<%=etudiant.getNom()%>       	
             	</li>
			<%
		            }
		        } catch (Exception e) {
		            e.printStackTrace();
		        }
			%>
        </ul>
</body>
</html>