<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="classes.*" %>
<%@ page import="models.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta charset="UTF-8">
  	<script src="https://cdn.tailwindcss.com"></script>
	<title>List Des Departements</title>
</head>
<body class="w-[100vw] flex justify-center bg-[#41C9E2] p-4 pt-[40px]" >
	<%@ include file="../common/button.html" %>
	<div class="relative overflow-x-auto shadow-md sm:rounded-lg min-w-[400px]">
	    <table class="w-full text-sm text-left rtl:text-right text-gray-500 dark:text-gray-400">
	        <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
	            <tr>
	                <th scope="col" class="px-6 py-3">
	                    id
	                </th>
	                <th scope="col" class="px-6 py-3">
	                    Nom
	                </th>
	            </tr>
	        </thead>
	        <tbody>
	        <%
		       try{
	        		List<Departement> departements = DepartementModel.all();
	        		if(!departements.isEmpty()){
                		for(Departement departement: departements){
					    	%>	
				             	<tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
					                <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
					                    <%=departement.getId()%>
					                </th>
					                <td class="px-6 py-4">
					                    <%=departement.getNom()%>
					                </td>
					            </tr>
							<%
		            	}
	        		}else{
	        			%>	
				            <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700">
				                <th scope="row" colspan="2" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white">
				                    La list des departement  est vide
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