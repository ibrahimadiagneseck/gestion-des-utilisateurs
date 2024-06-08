<%@ page import="beans.Utilisateur" %>
<%@ page import="java.util.ArrayList" %>

<%
    ArrayList<Utilisateur> utilisateurs = (ArrayList<Utilisateur>) request.getAttribute("utilisateurs");
    
%>

<%@include file="inc/header.jsp" %>
<section>
    <h1 id="titreP">Liste des utilisateurs</h1>

    <% if(utilisateurs == null || utilisateurs.isEmpty()) { %>
        <p>Désolé, la liste des utilisateurs est vide pour le moment !</p>
    <% } else { %>
        <table border="1" cellspacing="0" cellpadding="10">
            <tr>
                <th>ID</th>
                <th>Nom</th>
                <th>Prénom</th>
                <th>Login</th>
                <th>Password</th>
                <th colspan="3">Action</th> 
            </tr>
            <% for (Utilisateur user : utilisateurs) { %>
                <tr>
                    <td><%= user.getId() %></td>
                    <td><%= user.getNom() %></td>
                    <td><%= user.getPrenom() %></td>
                    <td><%= user.getLogin() %></td>
                    <td><%= user.getPassword() %></td>
                     <td><a href="read?id=<%= user.getId() %>" class="afficher" style="color: #28a745; background-color: transparent; border: 2px solid #28a745; padding: 8px 16px; text-align: center; text-decoration: none; display: inline-block; font-size: 14px; margin: 4px 2px; cursor: pointer; border-radius: 4px; transition: background-color 0.3s ease;">Afficher</a></td>
                    <td><a href="update?id=<%= user.getId() %>" class="modifier" style="color: #28a745; background-color: transparent; border: 2px solid #28a745; padding: 8px 16px; text-align: center; text-decoration: none; display: inline-block; font-size: 14px; margin: 4px 2px; cursor: pointer; border-radius: 4px; transition: background-color 0.3s ease;">Modifier</a></td>
                    <td><a href="delete?id=<%= user.getId() %>" class="supprimer" onclick="return confirm('Etes vous sur de vouloir supprimer ?')" style="color: #28a745; background-color: transparent; border: 2px solid #28a745; padding: 8px 16px; text-align: center; text-decoration: none; display: inline-block; font-size: 14px; margin: 4px 2px; cursor: pointer; border-radius: 4px; transition: background-color 0.3s ease;">Supprimer</a></td>
                </tr>
            <% } %>
        </table>
    <% } %>
</section>
    
<%@include file="inc/footer.jsp" %>