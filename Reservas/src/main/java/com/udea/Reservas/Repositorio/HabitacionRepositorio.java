
package com.udea.Reservas.Repositorio;

import com.udea.Reservas.modelo.Habitacion;
import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;


public interface HabitacionRepositorio extends CrudRepository<Habitacion, String>{
    
      @Query("FROM Habitacion WHERE tipoHabitacion = ?1")
     List<Habitacion> buscarHabitaciones(String codigoTipoHab);
    
}
