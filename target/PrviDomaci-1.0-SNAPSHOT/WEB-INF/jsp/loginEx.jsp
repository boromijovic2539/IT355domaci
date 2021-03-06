<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html>
    <head>
        <title>Login Page</title>
    </head>
    <%@include file="header.jsp" %>

    <body onload='document.loginForm.username.focus();'>
        
        <form name='loginForm' action="<c:url value='/j_spring_security_check' />" method='POST'>
            <table style="color: white;">
                <tr>
                    <td>User:</td>
                    <td><input type='text' name='username'></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type='password' name='password'/></td>
                </tr>
                <tr>
                    <td colspan='2'><input name="submit" type="submit" value="submit" /></td>
                </tr>
            </table>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
        </form>
    </body>
    <%@include file="footer.jsp" %>