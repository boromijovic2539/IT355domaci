<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page session="true"%>
<head>
    <title>Register Page</title>
    <link href="<c:url value="/resources/headerLogin.css" />" rel="stylesheet"  type="text/css" />
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="<c:url value="/resources/headerLogin.css" />" rel="stylesheet"  type="text/css" />
</head>
<%@include file="header.jsp" %>
<body onload='document.loginForm.username.focus();'>
    <div class="container">
        <div class="row">
            <div class="col-md-offset-5 col-md-3">
                <form name='registerForm' class="form-Login" action="<c:url value='/j_spring_security_check' />" method='POST'>
                    <h4>Register now!</h4>
                    <input type="text" name='username' class="form-control input-sm chat-input" placeholder="username" />
                    </br>
                    <input type="text" name='email' class="form-control input-sm chat-input" placeholder="email" />
                    </br>
                    <input type='password' name='password' class="form-control input-sm chat-input" placeholder="password" />
                    </br>
                    <input type='password' name='password' class="form-control input-sm chat-input" placeholder="repassword" />
                    </br>
                    <div class="wrapper">
                        <span class="group-btn"> 
                            <button class="btn btn-primary btn-md" name="submit" type="submit" value="register" >Register <i i class="fa fa-id-card" aria-hidden="true"></i></button>
                        </span>
                    </div>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

                </form>

            </div>
        </div>
    </div>
</body>
<%@include file="footer.jsp" %>