<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Accueil</title>
	<meta charset="UTF-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
  	<script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="w-[100vw] h-[100vh] flex justify-center items-center bg-[#41C9E2]" >
	<div class="p-4 md:w-[40vw] md:min-h-[30vh] flex flex-col md:flex-row justify-center gap-[30px] bg-[#F7EEDD] rounded-lg">
		<div>
			<h2 class="mb-2 text-lg font-semibold text-[#008DDA]">Menu utilisation :</h2>
			<ol class="max-w-md space-y-1 text-gray-500 list-decimal list-inside dark:text-gray-400">
			    <li>
			        <span class="font-semibold text-gray-900 dark:text-white"><a href="search?type=etudiant">Chercher Un Etudiant</a></span>
			    </li>
			    <li>
			        <span class="font-semibold text-gray-900 dark:text-white"><a href="search?type=departement">Chercher Un Departement</a></span>
			    </li>
			    <li>
			        <span class="font-semibold text-gray-900 dark:text-white"><a href="etudiant?type=list">List Des Etudiants</a></span>
			    </li>
			    <li>
			        <span class="font-semibold text-gray-900 dark:text-white"><a href="departement?type=list">List Des Departements</a></span>
			    </li>
			    <li>
			        <span class="font-semibold text-gray-900 dark:text-white"><a href="filiere?type=list">List Des Filieres</a></span>
			    </li>
			</ol>
		</div>
		<div>
			<h2 class="mb-2 text-lg font-semibold text-[#008DDA]">Menu administration :</h2>
			<ol class="max-w-md space-y-1 text-gray-500 list-decimal list-inside dark:text-gray-400">
			    <li>
			        <span class="font-semibold text-gray-900 dark:text-white"><a href="etudiant?type=add">Ajouter Un Etudiant</a></span>
			    </li>
			    <li>
			        <span class="font-semibold text-gray-900 dark:text-white"><a href="departement?type=add">Ajouter Un Departement</a></span>
			    </li>
			    <li>
			        <span class="font-semibold text-gray-900 dark:text-white"><a href="filiere?type=add">Ajouter Une Filiere</a></span>
			    </li>
			</ol>
		</div>
	</div>
</body>
</html>