<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="classes.*" %>
<%@ page import="models.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Des Filieres</title>
</head>
<body>
        <%
	       try{
        		List<Departement> departements = DepartementModel.all();
        		List<Filiere> filieres = FiliereModel.all();
        		if(!departements.isEmpty()){
               		for(Departement departement: departements){
				    	%>	
				            <h3>
				       			<%=departement.getNom()%>       	
			             	</h3>
			             	<ol>
								<%
									for(Filiere filiere: filieres){
										if(departement.getId()==filiere.getDepartement()){
											%>	
									            <li>
									       			<%=filiere.getNom()%>       	
								             	</li>
											<%	
										}
									}
								%>
							</ol>
						<%
	            	}
        		}else{
        			%>	
			            <h3>
			       			Aucun Departement   	
		             	</h3>
					<%
        		}
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
		%>
</body>
</html>