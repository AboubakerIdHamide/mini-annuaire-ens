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
	<title>List Des Filieres</title>
</head>
<body class="w-[100vw] flex justify-center gap-[30px] flex-wrap bg-[#41C9E2] p-4 pt-[40px]" >
		<%@ include file="../common/button.html" %>
        <%
	       try{
        		List<Departement> departements = DepartementModel.all();
        		List<Filiere> filieres = FiliereModel.all();
        		if(!departements.isEmpty()){
               		for(Departement departement: departements){
				    	%>	
						<div class="w-[270px] max-w-md p-4 bg-white border border-gray-200 rounded-lg shadow sm:p-4">
						    <div class="flex items-center justify-center mb-4">
						        <h5 class="text-xl font-bold leading-none text-gray-900">
						        	<%=departement.getNom()%>
						        </h5>
						   </div>
						   <div class="flow-root flex items-center justify-center">
						        <ul class="w-48 text-sm font-medium text-gray-900 bg-white border border-gray-200 rounded-lg">
								<%
									for(Filiere filiere: filieres){
										if(departement.getId()==filiere.getDepartement()){
											%>	
									            <li class="w-full px-4 py-2 border-b border-gray-200 rounded-t-lg">
									       			<%=filiere.getNom()%>       	
								             	</li>
											<%	
										}
									}
								%>
								</ul>
						   </div>
						</div>
						<%
	            	}
        		}else{
        			%>	
		             	<h5 class="text-xl font-bold leading-none text-gray-900">
						     Aucun Departement
						</h5>
					<%
        		}
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
		%>
</body>
</html>