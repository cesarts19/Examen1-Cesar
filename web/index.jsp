<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : index
    Created on : 10/09/2014, 12:20:53 PM
    Author     : Cesar
--%>
<sql:query var="subjects" dataSource="jdbc/Examen1">
    SELECT clavecarrera, nombrecarrera FROM carrera
</sql:query>
    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Directores Tec</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        <h1>Bienvenido al buscador de directores de carrera del Tec.</h1>
        <table border="0">
            <thead>
                <tr>
                    <th>Estas personas son los directores de carreras en el tec de mty.</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Para ver la informacion de contacto detallada de un director de carrera
                        selecciona uno de los disponibles:</td>
                </tr>
                <tr>
                    <td>
                        <form action="response.jsp">
                            <strong>Select a subject:</strong>
                            <select name="clavecarrera">
                                <c:forEach var="row" items="${subjects.rows}">
                                    <option value="${row.clavecarrera}">${row.nombrecarrera}</option>
                                </c:forEach>
                            </select>
                            <input type="submit" value="submit" name="submit" />
                        </form>
                    </td>
                </tr>
            </tbody>
        </table>

    </body>
</html>
