<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.3.7/css/ " rel="stylesheet">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!DOCTYPE html>
<html>
<head>
    <title>Sistema de horas</title>
    <link href="<c:url value='/css/bootstrap.css'/>" rel="stylesheet"/>
    <link href="<c:url value='/css/site.css'/>" rel="stylesheet"/>
</head>
<body>
    <nav>
        <ul class="nav nav-tabs">
            <li><a href="${linkTo[IndexController].index()}">Home</a> </li>
            <li><a href="${linkTo[UsuarioController].lista()}">Usuarios</a></li>
            <li><a href="${linkTo[HoraLancadaController].relatorioDeHoras()}">Relatório de Horas</a></li>
            <c:if test="${usuarioLogado.logado}">
                <li><a href="${linkTo[LoginController].desloga()}"><span class="glyphicon glyphicon-off" aria-hidden="true"></span></a></li>
            </c:if>
            <c:if test="${!usuarioLogado.logado}">
                <li><a href="${linkTo[LoginController].form()}">Autenticar</a> </li>
            </c:if>
        </ul>
    </nav>


    <c:if test="${usuarioLogado.logado}">
    <div class="alert alert-success" role="alert">
    Usuario Logado: ${usuarioLogado.getNomeUsuarioLogado()}
    </c:if>
    </div>
    <div class="container">
        <main class="col-sm-8">
        <!-- Conteudo -->