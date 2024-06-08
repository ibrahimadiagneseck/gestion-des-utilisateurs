<%@ page language="java" pageEncoding="ISO-8859-1"%>

<%
	final String APP_ROOT = request.getContextPath();
    
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Gestion des utilisateurs</title>
    <link rel="stylesheet" type="text/css" href="<%= APP_ROOT %>/css/design.css">
</head>

<body>

<header>
        <h1 id="titreP">Gestion des utilisateurs</h1>
        <hr>
    
    <div class="navbar">
        <a href="<%= APP_ROOT %>/listeUtilisateur" style="border-left: 1px solid #fff;">Accueil</a>
		<a href="<%= APP_ROOT %>/ajouterUtilisateur" style="border-left: 1px solid #fff; border-right: 1px solid #fff;">Ajouter</a>
		<a href="<%= APP_ROOT %>/listeUtilisateur" style="border-right: 1px solid #fff;">Lister</a>
    </div>
</header>
