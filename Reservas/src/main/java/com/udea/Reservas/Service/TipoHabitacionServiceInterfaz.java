
package com.udea.Reservas.Service;


import com.udea.Reservas.modelo.TipoHabitacion;
import java.util.List;


public interface TipoHabitacionServiceInterfaz {
    List<TipoHabitacion> listar();

    TipoHabitacion buscarTipoH(String codigo);


}
