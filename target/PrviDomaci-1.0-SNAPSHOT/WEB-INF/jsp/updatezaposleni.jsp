<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="/resources/add.css" />" rel="stylesheet"  type="text/css" />
        <title>JSP Page</title>
    </head>
    <body>
        <form:form method="POST" modelAttribute="zaposlen">
            <div style="float:left;">
                <form:label path="id_zaposleni">ID</form:label>
                <form:input  id="id_zaposleni"  path="id_zaposleni" readonly="true"/>
            </div>
            <div style="float:left;">
                <form:label path="ime_zaposleni">Ime</form:label>
                <form:input  id="ime_zaposleni"  path="ime_zaposleni" />
            </div>
            <div style="float:left;">
                <form:label path="prezime_zaposleni">Prezime</form:label>
                <form:input id="prezime_zaposleni"  path="prezime_zaposleni" />
            </div>
            <div style="float:left;">
                <form:label path="adresa_zaposleni">Adresa</form:label>
                <form:input id="adresa_zaposleni" path="adresa_zaposleni" />
            </div>
            <div style="float:left;">
                <form:label path="telefon_zaposleni">Telefon</form:label>
                <form:input id="telefon_zaposleni" path="telefon_zaposleni" />
            </div>
            <div style="float:left;">
                <form:label path="zanimanje">Email</form:label>
                <form:input id="zanimanje" path="zanimanje" />
            </div>
            <div style="float:left;">
                <button type="submit">Dodaj</button>
            </div>
        </form:form>
    </body>
</html>
