<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="classes.*" %>
<%@ page import="models.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List d'Etudiants recherché</title>
</head>
<body>
		<ul>
           	<%
           	   String searchTerm = request.getParameter("search");
		       try{
	        		List<Etudiant> etudiants = EtudiantModel.search(searchTerm);
	        		if(!etudiants.isEmpty()){
                		for(Etudiant etudiant: etudiants){
					    	%>	
					            <li>
					       			<%=etudiant.getNom()%>       	
				             	</li>
							<%
		            	}
	        		}else{
	        			%>	
				            <li>
				       			List Empty       	
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