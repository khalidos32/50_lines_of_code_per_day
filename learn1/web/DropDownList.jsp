<%-- 
    Document   : DropDownList
    Created on : 3 mai 2016, 20:46:43
    Author     : khalido32
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        Hello M/Mm : <%= request.getParameter("nom")+" "+request.getParameter("country") %>
    </body>
</html>
