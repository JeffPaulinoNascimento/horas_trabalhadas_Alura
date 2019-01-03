package br.com.alura.horas.modelos;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

@Entity
public class HoraLancada {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @NotNull
    @Temporal(TemporalType.DATE)
    private Calendar data;

    private String horaInicial;

    private String horaFinal;

    @ManyToOne
    private Usuario usuario;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Calendar getData() {
        return data;
    }

    public void setData(Calendar data) {
        this.data = data;
    }

    public String getHoraInicial() {
        return horaInicial;
    }

    public void setHoraInicial(String horaInicial) {
        this.horaInicial = horaInicial;
    }

    public String getHoraFinal() {
        return horaFinal;
    }

    public void setHoraFinal(String horaFinal) {
        this.horaFinal = horaFinal;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public Double getDuracao(){
        SimpleDateFormat format = new SimpleDateFormat("HH:mm");
        try {
            Date fim = format.parse(horaFinal);
            Date inicio = format.parse(horaInicial);
            long millis = fim.getTime() - inicio.getTime();
            return((double)millis)/(60 * 60 * 1000);
        } catch (ParseException e) {
            return 0.0;
        }
    }

}