package br.com.alura.horas.modelo;

import br.com.alura.horas.modelos.HoraLancada;
import org.junit.Assert;
import org.junit.Test;

public class HoraLancadaTest {

    @Test
    public void CalculaDuracaoQuandoHoraInicialMenorDoQueHoraFinal(){
        HoraLancada hora = new HoraLancada();

        hora.setHoraFinal("19:00");
        hora.setHoraInicial("09:00");

        Assert.assertEquals(10.0, hora.getDuracao(), 0.01);
    }
}
