<%-- 
    Document   : cookie_home_page
    Created on : 5 mai 2016, 20:58:01
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
            // seet a default lang 
            String defaultlang="java";
            // get the list of cookies from the browser
            Cookie[] listcookies=request.getCookies();
            
            // find the favorite language cookie
            for(Cookie coo: listcookies){
                if(coo.getName().equals("fav_lang")){// remmember this cookie was added from cookies_insert.jsp
                    defaultlang=coo.getValue();
                    break;
                }
            }
        %>
        <h1>
            new books for <% out.println(defaultlang);%>
        </h1>
        <ul>
            <li>blah blah...</li>
        </ul>
         <h1>
            news for <% out.println(defaultlang);%>
        </h1>
        <ul>
            <li>blah blah...</li>
        </ul>
         <h1>
            new jobs for <% out.println(defaultlang);%>
        </h1>
        <ul>
            <li>blah blah...</li>
        </ul>
    </body>
</html>
