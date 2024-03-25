<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="classes.*" %>
<%@ page import="models.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
	<title>Ajouter Un Etudiant</title>
	<meta charset="UTF-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
  	<script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="w-[100vw] h-[100vh] flex justify-center items-center bg-[#41C9E2]" >
	<form action="etudiant" method="POST" class="p-4 rounded-lg bg-white">
        <div class="mb-2">
            <label for="cne" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">CNE</label>
            <input type="text" name="cne" placeholder="CNE" id="cne" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" required />
        </div>
         <div class="mb-2">
            <label for="nom" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Nom</label>
            <input type="text" name="nom" placeholder="Nom" id="nom" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" required />
        </div>
         <div class="mb-2">
            <label for="prenom" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Prenom</label>
            <input type="text" name="prenom" placeholder="Prenom" id="prenom" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" required />
        </div>
         <div class="mb-2">
            <label for="telephone" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Telephone</label>
            <input type="text" name="telephone" placeholder="Telephone" id="telephone" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" required />
        </div>
        <label for="dep">Departement</label>
		<select id="dep" name="departement" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5">
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
		<select id="filiere" name="filiere" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5">
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
	   <button type="submit" class="mt-2 text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center">Ajouter</button>
	</form>
</body>
</html>