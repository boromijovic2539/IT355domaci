<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Prikaz podataka</title>
    </head>

    <%@include file="header.jsp" %>
    <h1>Zaposleni:</h1>
    <c:if test="${!empty zaposleni}">
        <table>
            <tr>
                <th width="50">id</th>

                <th width="150">ime</th>

                <th width="100">prezime</th>

                <th width="100">adresa</th>

                <th width="100">telefon</th>

                <th width="100">zanimanje</th>
            </tr>
            <c:forEach items="${zaposleni}" var="zaposlen">
                <tr>
                    <td>${zaposlen.id_zaposleni}</td>
                    <td>${zaposlen.ime_zaposleni}</td>
                    <td>${zaposlen.prezime_zaposleni}</td>
                    <td>${zaposlen.adresa_zaposleni}</td>
                    <td>${zaposlen.telefon_zaposleni}</td>
                    <td>${zaposlen.zanimanje}</td>
                </tr>
            </c:forEach>
        </c:if>
    </table>
    <%@include file="footer.jsp" %>
