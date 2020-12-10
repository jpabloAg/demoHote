
package com.udea.Reservas.Repositorio;

import com.udea.Reservas.modelo.Cliente;
import org.springframework.data.repository.CrudRepository;


public interface ClienteRepositorio extends CrudRepository<Cliente, String>{
    
}
