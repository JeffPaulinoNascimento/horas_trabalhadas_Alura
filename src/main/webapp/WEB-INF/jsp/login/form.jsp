<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="alura" tagdir="/WEB-INF/tags"%>

<c:import url="/WEB-INF/jsp/header.jsp"/>

<form action="${linkTo[LoginController].autentica(null, null)}" method="post">
    <alura:validationMessage name="login_invalido"></alura:validationMessage>
    <label for="login">Login:</label>
    <input type="text" name="login" id="login" class="form-control"/>

    <label for="senha">Senha:</label>
    <input type="password" name="senha" id="senha" class="form-control"/>

    <input type="submit" value="Autenticar" class="btn"/>
</form>

<c:import url="/WEB-INF/jsp/footer.jsp"/>