package br.com.alura.horas.seguranca;

import br.com.alura.horas.modelos.Usuario;

import javax.enterprise.context.SessionScoped;
import javax.inject.Named;
import javax.validation.constraints.NotNull;
import java.io.Serializable;

@Named
@SessionScoped
public class UsuarioLogado implements Serializable {

    private Usuario usuario;

    public void fazLogin(Usuario usuario) {
        this.usuario = usuario;
    }

    public void desloga() {
        this.usuario = null;
    }

    public boolean isLogado() {
        return this.usuario != null;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public String getNomeUsuarioLogado() {
        return usuario == null ? null : usuario.getNome(); //Se usuario for igual a null ?(então) é null :(SENÃO) retorna usuario.getNome()
    }
}