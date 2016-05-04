<%-- 
    Document   : session_to_do_list
    Created on : 4 mai 2016, 23:24:21
    Author     : khalido32
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form>
            enter to list item : <input type="text" name="input_item"/>
            <input type="submit" name="sbmt" value="Add"/>
        </form>
        My to do List :
        <%
            List<String> items=(List<String>)session.getAttribute("MyToDoList");
            if(items==null){
                items=new <String>ArrayList();
                session.setAttribute("MyToDoList", items);
            }
            String TheItem=request.getParameter("input_item");
            if(TheItem!=null){
                if(items.contains(TheItem)==false){
                    items.add(TheItem);
                }
                
            }
        %>
        <ol>
            <%
                for(String str:items){
                    out.println("<li>"+str+"</li>");
                }
            %>
        </ol>
    </body>
</html>
