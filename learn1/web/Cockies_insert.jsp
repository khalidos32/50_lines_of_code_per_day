<%-- 
    Document   : Cockies_insert
    Created on : 5 mai 2016, 20:47:12
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
            <%
                // get the favorite lang 
                String flang = request.getParameter("favorite_lang");
                // create the cockie
                Cookie thelang=new Cookie("fav_lang",flang);
                // set the age of the cookie
                thelang.setMaxAge(60*60*24*365);
                //add the cookie to the browser 
                response.addCookie(thelang);
            %>
            your favorite language is : <% out.println(flang);%>
        <a href="cookie_home_page.jsp">return to the homepage</a>
    </body>
</html>
