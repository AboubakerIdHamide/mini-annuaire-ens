<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Ajouter departement</title>
	<meta charset="UTF-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
  	<script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="w-[100vw] h-[100vh] flex justify-center items-center bg-[#41C9E2]" >
	<form action="departement" method="POST" class="p-4 rounded-lg bg-white">
        <div class="mb-2">
            <label for="name" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Ajouter Un Departement</label>
            <input type="text" name="nom" placeholder="Nom" id="name" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" required />
        </div>
	   <button type="submit" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center">Ajouter</button>
	</form>
</body>
</html>