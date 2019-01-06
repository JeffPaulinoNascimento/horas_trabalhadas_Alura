<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="alura" tagdir="/WEB-INF/tags"%>

<c:import url="/WEB-INF/jsp/header.jsp"/>

<form action="${linkTo[HoraLancadaController].adiciona(null)}" method="post">
    <label for="data">Data:</label>
    <input type="text" id="data" name="horaLancada.data" class="form-control" />
    <alura:validationMessage name="horaLancada.data"/>

    <label for="horaInicial">Hora Inicial:</label>
    <input type="text" id="horaInicial" name="horaLancada.horaInicial" class="form-control" value="${horaLancada.horaInicial}"/>
    <alura:validationMessage name="horaLancada.horaInicial"/>

    <label for="horaFinal">Hora Final:</label>
    <input type="text" id="horaFinal" name="horaLancada.horaFinal" class="form-control" value="${horaLancada.horaFinal}"/>
    <alura:validationMessage name="horaLancada.horaFinal"/>

    <input type="submit" value="Cadastrar">

</form>

<c:import url="/WEB-INF/jsp/footer.jsp"/>
