<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="alura" tagdir="/WEB-INF/tags"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:import url="/WEB-INF/jsp/header.jsp"/>

<form action="${linkTo[LoginController].autentica(null, null)}" method="post">
    <alura:validationMessage name="login_invalido"></alura:validationMessage>

    <label for="login">Login:</label>
    <input type="text" name="login" id="login" placeholder="Nome de usuário" class="form-control"/>

    <label for="senha">Senha:</label>
    <input type="password" name="senha" id="senha" placeholder="Senha" class="form-control"/>

    <input type="submit" value="Autenticar" class="btn"/>
</form>

<c:import url="/WEB-INF/jsp/footer.jsp"/>