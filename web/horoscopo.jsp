<%-- 
    Document   : horoscopo
    Created on : 20-mar-2021, 17:09:02
    Author     : Donus
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Horoscopo</h1>
        <form action="horoscopo">
            <label for="nombre">Nombre: </label><input type="text" id="nombre" name="nombre">
            <% ArrayList<String> meses = (ArrayList<String>)
                    request.getAttribute("meses"); %>
                    
            <br><label for="mes">Mes: </label>
            <select name="mes" id="mes">
                <% for(int i=0;i<meses.size();i++){ %>
                <option value="<%=meses.get(i)%>"><%=meses.get(i)%></option>
                <% } %>
            </select>
            <% ArrayList<String> dias = (ArrayList<String>)
                    request.getAttribute("dias"); %>
            <br><label form="dia">Dia: </label>
            <select name="dia" id="dia" >
                <% for(int i=0;i<dias.size();i++){ %>
                <option value="<%=dias.get(i)%>"><%=dias.get(i)%></option>
                <% } %>
            </select>
            <input type="submit" value="Enviar">
        </form>
    </body>
</html>
