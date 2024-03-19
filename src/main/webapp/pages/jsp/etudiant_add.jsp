<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="classes.*" %>
<%@ page import="models.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ajouter Un Etudiant</title>
</head>
<body>
	<form action="etudiant" method="POST">
		<input type="text" name="cne" placeholder="CNE"/>
		<input type="text" name="nom" placeholder="Nom"/>
		<input type="text" name="prenom" placeholder="Prenom"/>
		<input type="text" name="telephone" placeholder="Telephone"/>
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
		<label for="filiere">Filiere</label>
		<select id="filiere" name="filiere">
			<%
		       try{
	        		List<Filiere> filieres = FiliereModel.all();
                	for(Filiere filiere: filieres){
	    	%>	
	            <option value="<%=filiere.getId()%>">
	            	<%=filiere.getNom()%>
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