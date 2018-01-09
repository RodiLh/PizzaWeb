<%-- 
    Document   : index
    Created on : 9 janv. 2018, 15:59:24
    Author     : dmr
--%>

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
                <form action="Login" method="POST">
                    <div class="form-group">
                        <label for="username" class="control-label">Pseudo : </label>
                        <input type="text" class="form-control" placeholder="Pseudo"/>
                    </div>

                    <div class="form-group">
                        <label for="password" class="control-label">Mot de passe : </label>
                        <input type="password" class="form-control" placeholder="Entrez votre mot de passe"/>
                    </div>

                    <button type="submit" class="btn btn-primary btn-block">Connexion</button>
                </form>
            </div>
        </div>
    </body>
</html>
