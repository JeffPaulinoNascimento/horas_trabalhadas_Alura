package br.com.alura.horas.controllers;

import br.com.alura.horas.dao.HoraLancadaDao;
import br.com.alura.horas.modelos.HoraLancada;
import br.com.alura.horas.modelos.RelatorioDeHoras;
import br.com.alura.horas.seguranca.UsuarioLogado;
import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.Validator;

import javax.inject.Inject;
import javax.validation.Valid;
import java.util.List;

@Controller
public class HoraLancadaController {

    private HoraLancadaDao dao;
    private Validator validator;
    private Result result;
    private UsuarioLogado usuarioLogado;

    @Inject
    public HoraLancadaController(HoraLancadaDao dao, Validator validator, Result result, UsuarioLogado usuarioLogado) {
        this.dao = dao;
        this.validator = validator;
        this.result = result;
        this.usuarioLogado = usuarioLogado;
    }

    public HoraLancadaController() {
    }

    public void form() {}

    public void adiciona(@Valid HoraLancada horaLancada) {
        validator.onErrorRedirectTo(this).form();
        horaLancada.setUsuario(usuarioLogado.getUsuario());
        dao.adiciona(horaLancada);
        result.redirectTo(this).lista();
    }

    public void lista() {
        result.include("horas", dao.lista());
    }

    public void relatorioDeHoras(){
        List<HoraLancada> horas = dao.horasDoUsuario(usuarioLogado.getUsuario());
        RelatorioDeHoras relatorioDeHoras = new RelatorioDeHoras(horas);
        result.include("relatorio", relatorioDeHoras);
    }
}
