<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="classes.*" %>
<%@ page import="models.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta charset="UTF-8">
  	<script src="https://cdn.tailwindcss.com"></script>
	<title>List d'Etudinats</title>
</head>
<body class="w-[100vw] flex justify-center bg-[#41C9E2] p-4 pt-[40px]" >
	<%@ include file="../common/button.html" %>
	<div class="relative overflow-x-auto shadow-md sm:rounded-lg min-w-[400px]">
	    <table class="w-full text-sm text-left rtl:text-right text-gray-500">
	        <thead class="text-xs text-gray-700 uppercase bg-gray-50">
	            <tr>
	                <th scope="col" class="px-6 py-3">
	                    CNE
	                </th>
	                <th scope="col" class="px-6 py-3">
	                    Nom
	                </th>
	                <th scope="col" class="px-6 py-3">
	                    Prenom
	                </th>
	                <th scope="col" class="px-6 py-3">
	                    Telephone
	                </th>
	            </tr>
	        </thead>
	        <tbody>
	        <%
		       try{
		    	   	List<Etudiant> etudiants = EtudiantModel.all();
	        		if(!etudiants.isEmpty()){
                		for(Etudiant etudiant: etudiants){
					    	%>	
				             	<tr class="bg-white border-b">
					                <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">
					                    <%=etudiant.getCNE()%>
					                </th>
					                <td class="px-6 py-4">
					                    <%=etudiant.getNom()%>
					                </td>
					                 <td class="px-6 py-4">
					                    <%=etudiant.getPrenom()%>
					                </td>
					                 <td class="px-6 py-4">
					                    <%=etudiant.getTelephone()%>
					                </td>
					            </tr>
							<%
		            	}
	        		}else{
	        			%>	
				            <tr class="bg-white border-b">
				                <th scope="row" colspan="4" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">
				                    La list des etudiants  est vide
				                </th>
					        </tr>
						<%
	        		}
		        } catch (Exception e) {
		            e.printStackTrace();
		        }
			%>
	        </tbody>
	    </table>
	</div>
</body>
</html>