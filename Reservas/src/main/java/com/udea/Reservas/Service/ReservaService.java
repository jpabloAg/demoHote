
package com.udea.Reservas.Service;

import com.udea.Reservas.Repositorio.ReservasRepositorio;
import com.udea.Reservas.modelo.Reserva;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReservaService implements ReservaServiceInterfaz{
    
    @Autowired
    ReservasRepositorio reservasRepositorio;

    @Override
    public Reserva buscarReserva(int codigo) {
        return  reservasRepositorio.findById(codigo).get();
    }

    @Override
    public Reserva guardarReserva(Reserva reserva) {
         return reservasRepositorio.save(reserva);
    }

    @Override
    public void eliminarReserva(int codigo) {
        reservasRepositorio.deleteById(codigo);
        
    }
    
}
