<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="classes.*" %>
<%@ page import="models.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Des Departements</title>
</head>
<body>
	<ul>
           	<%
		       try{
	        		List<Departement> departements = DepartementModel.all();
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