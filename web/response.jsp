<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : response
    Created on : 10/09/2014, 12:35:59 PM
    Author     : Cesar
--%>

<sql:query var="counselorQuery" dataSource="jdbc/Examen1">
    SELECT * FROM Director
    WHERE Director.Carrera = Carrera.ClaveCarrera
    <sql:param value="${param.CarreraClave}"/>
</sql:query>
    
    
<c:set var="counselorDetails" value="${counselorQuery.rows[0]}"/>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${counselorDetails.Nombre}</title>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body><table border="0">
    <thead>
        <tr>
            <th colspan="2">${counselorDetails.Nombre}</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><strong>NumDirector: </strong></td>
            <td><span style="font-size:smaller; font-style:italic;">${counselorDetails.NumDirector}</span></td>
        </tr>
        <tr>
            <td><strong>Carrera: </strong></td>
            <td><span style="font-size:smaller; font-style:italic;">${counselorDetails.Carrera}</span></td>
        </tr>
    </tbody>
</table>
    </body>
</html>
