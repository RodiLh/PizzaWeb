<%-- 
    Document   : index
    Created on : 9 janv. 2018, 15:59:24
    Author     : dmr
--%>

<%@page import="java.util.Date"%>

<!-- Peu conseillé, on évite de mélanges plusieurs langages dans un fichier -->
<%!
    Date theDate = new Date();
    Date getDate() {
        System.out.println("In getDate() method");
        return theDate;
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>PizzaWeb</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link rel="stylesheet" href="content/css/bootstrap.min.css">
        <link rel="stylesheet" href="content/css/bootstrap-theme.min.css">

        <script src="content/js/bootstrap.min.js"></script>
    </head>
    <body>        
        <div class="container">
            <div class="col-sm-6 col-sm-offset-3">
                <h1>Pizza</h1>
                
                <!-- Affiche la date, ne sont pas conseillé -->
                <h3><%= getDate() %></h3>
                <h3><%= new Date() %></h3>
                
                <!-- 
                    Affiche la date, méthode conseillé 
                    Balise jsp très utile pour d'autres choses
                -->
                <jsp:useBean class="java.util.Date" id="theDate"/>
                <h3><%= theDate %></h3>
                
                <form action="Login" method="POST">
                    <div class="form-group">
                        <label for="username" class="control-label">Pseudo : </label>
                        <input type="text" class="form-control" placeholder="Pseudo" name="username"/>
                    </div>

                    <div class="form-group">
                        <label for="password" class="control-label">Mot de passe : </label>
                        <input type="password" class="form-control" placeholder="Entrez votre mot de passe" name="password"/>
                    </div>

                    <button type="submit" class="btn btn-primary btn-block">Connexion</button>
                </form>
            </div>
        </div>
    </body>
</html>
