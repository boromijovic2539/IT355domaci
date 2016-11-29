<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" type="text/css"/>
        <script src="https://code.jquery.com/jquery-3.1.1.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="<c:url value="/resources/stylequery.js" />"></script>
        <link href="<c:url value="/resources/style.css" />" rel="stylesheet"  type="text/css" />
    </head>
    <title>Nasa prva fensi Spring aplikacija</title>
</head>
<body>
    <header>
        <div class="header-banner">
            <a href="/" class="logo"></a>

            <h1>FootManager</h1>

        </div>
        <%-- 
      <div class="clear"></div>

     <nav>
            <ul>
                <li><a href="/PrviDomaci/soba">Club</a></li>
                <li><a href="/PrviDomaci/soba">Cards</a></li>
                <li><a href="/PrviDomaci">Sponsors</a></li>
                <li><a href="/events">News</a></li>
                <li><a href="/contact">Contact</a></li>
                <ul>
                    </nav--%>

        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">Barnsley</a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="/PrviDomaci">Home</a></li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Club
                            <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="/PrviDomaci/soba">About club</a></li>
                            <li><a href="#">Selection</a></li>
                            <li><a href="#">Menagemant</a></li> 
                        </ul>
                    </li>
                    <li><a href="#">News</a></li> 
                    <li><a href="#">Contact</a></li> 
                </ul>
            </div>
        </nav>
    </header>
    <section class="content">
