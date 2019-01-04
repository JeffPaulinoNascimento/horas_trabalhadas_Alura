<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="alura" tagdir="/WEB-INF/tags" %>
<c:import url="/WEB-INF/jsp/header.jsp"/>

<a href="${linkTo[HoraLancadaController].form()}">Cadastrar Hora</a>

<table class="table table-hover">
    <thead>
    <tr>
        <th>Data</th>
        <th>Horas Normais</th>
        <th>Horas Extras</th>
    </tr>
    <tbody>
        <c:forEach items="${relatorio.horasPorDia}" var = "h">
            <tr>
                <td>${h.data.time}</td>
                <td>${h.horasNormais}</td>
                <td>${h.horasExtras}</td>
            </tr>
        </c:forEach>
    </tbody>

    </thead>

</table>

<c:import url="/WEB-INF/jsp/footer.jsp"/>