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
            // create a list of session items
            List<String> items=(List<String>)session.getAttribute("MyToDoList");
            
            // test if the list of session items is null or not
            
            if(items==null){//if null we create a new one
                items=new <String>ArrayList();
                session.setAttribute("MyToDoList", items);
                // set the max itervale(time)
               // session.setMaxInactiveInterval(60*60*24*365);
            }
            // get the new parameter(item) for the sission list
            String TheItem=request.getParameter("input_item");
            
            if(TheItem!=null){
                // if the list of session items doesn't conatain the new item add it
                if(items.contains(TheItem)==false){
                    items.add(TheItem);
                }
                
            }
        %>
        <ol>
            
            <%
            // try to print the items from the session list
                for(String str:items){
                    out.println("<li>"+str+"</li>");
                }
            %>
        </ol>
    </body>
</html>
