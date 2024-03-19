<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="classes.*" %>
<%@ page import="models.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Departements Cherché</title>
</head>
<body>
		<ul>
           	<%
           	   String searchTerm = request.getParameter("search");
		       try{
	        		List<Departement> departements = DepartementModel.search(searchTerm);
	        		if(!departements.isEmpty()){
                		for(Departement departement: departements){
					    	%>	
					            <li>
					       			<%=departement.getNom()%>       	
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