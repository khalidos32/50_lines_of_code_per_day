<%-- 
    Document   : Cockies_add
    Created on : 5 mai 2016, 20:27:05
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
        
        <form action="Cockies_insert.jsp" method="post">
            ad your favorite language 
            <select name="favorite_lang">
                <option>Java</option>
                <option>C#</option>
                <option>PHP</option>
                <option>JavaScript</option>
            </select>
            <input type="submit" value="add"/>
        </form>
    </body>
</html>
