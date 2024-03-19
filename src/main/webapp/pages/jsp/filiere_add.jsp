<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="classes.*" %>
<%@ page import="models.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ajouter Une Filiere</title>
</head>
<body>
	<form action="filiere" method="POST">
		<input type="text" name="nom" placeholder="Nom"/>
		<label for="dep">Departement</label>
		<select id="dep" name="departement">
			<%
		       try{
	        		List<Departement> departements = DepartementModel.all();
                	for(Departement departement: departements){
	    	%>	
	            <option value="<%=departement.getId()%>">
	            	<%=departement.getNom()%>
	            </option>
			<%
		            }
		        } catch (Exception e) {
		            e.printStackTrace();
		        }
			%>
		</select>
		<button>Save</button>
	</form>
</body>
</html>