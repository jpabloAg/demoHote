
package com.udea.Reservas.Service;

import com.udea.Reservas.Repositorio.TipoHabitacionRepositorio;
import com.udea.Reservas.modelo.TipoHabitacion;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TipoHabitacionService implements TipoHabitacionServiceInterfaz{

    @Autowired
    TipoHabitacionRepositorio tipoHabitacionRepositorio;

    
    @Override
    public List<TipoHabitacion> listar() {
        return (List<TipoHabitacion>) tipoHabitacionRepositorio.findAll();
       
    }

    @Override
    public TipoHabitacion buscarTipoH(String codigo) {
        return  tipoHabitacionRepositorio.findById(codigo).get();
    }

    
}
