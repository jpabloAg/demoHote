package com.udea.Reservas.Service;

import com.udea.Reservas.modelo.Reserva;

public interface ReservaServiceInterfaz {

    Reserva buscarReserva(int codigo);

    Reserva guardarReserva(Reserva reserva);

    void eliminarReserva(int codigo);

}
