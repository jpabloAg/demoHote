package com.udea.Reservas.Service;

import com.udea.Reservas.Repositorio.HabitacionRepositorio;
import com.udea.Reservas.modelo.Habitacion;
import com.udea.Reservas.modelo.Reserva;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HabitacionService implements HabitacionServiceInterfaz {

    @Autowired
    HabitacionRepositorio habitacionRepositorio;

    @Override
    public String comprobarDisponibilidad(String tipoHab, String fechaIV, String fechaSV) {
        Date fechaI=new Date(fechaIV);
        Date fechaS=new Date(fechaSV);
        System.out.println(fechaI);
        System.out.println(fechaS);
        List<Habitacion> habitacionese = habitacionRepositorio.buscarHabitaciones(tipoHab);
      
        for (Habitacion habitacion : habitacionese) {
            if (habitacion.getReservasCollection().isEmpty()) {
                return habitacion.getNumeroHabitacion();
            }
        }

        for (Habitacion habitacion : habitacionese) {
            for (Reserva reserva : habitacion.getReservasCollection()) {
                System.out.println(fechaI);
                System.out.println(fechaS);
                System.out.println(reserva.getFechaIngreso());
                System.out.println(reserva.getFechaSalida());
                if ((fechaI.before(reserva.getFechaIngreso()) && (fechaS.after(reserva.getFechaIngreso())))
                        || ((fechaI.before(reserva.getFechaSalida())) && (fechaS.after(reserva.getFechaSalida())))
                        ||(fechaI.equals(reserva.getFechaIngreso()))||(fechaS.equals(reserva.getFechaSalida()))) {
                    break;
                }
                return habitacion.getNumeroHabitacion();
            }
        }

        return "0";
    }

}
