<%-- 
    Document   : app
    Created on : 10 janv. 2018, 13:50:24
    Author     : dmr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>App</title>
    </head>
    <body>
        <h1>App</h1>
        
        <!-- scope sert à dire où user doit aller chercher l'objet User -->
        <jsp:useBean scope="session" class="com.dmr.pizzaweb.entity.User" id="user"/>
        <%=user%>
        <hr/>
        <!-- cette méthode est rapide, pas besoin de jsp:useBean -->
        ${user.username}
        
    </body>
</html>
