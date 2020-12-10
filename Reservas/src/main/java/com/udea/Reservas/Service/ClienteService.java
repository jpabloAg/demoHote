
package com.udea.Reservas.Service;

import com.udea.Reservas.Repositorio.ClienteRepositorio;
import com.udea.Reservas.modelo.Cliente;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ClienteService implements ClienteServiceInterfaz{
    @Autowired
    ClienteRepositorio clienteRepositorio;

    @Override
    public Cliente GuardarCliente(Cliente cliente) {
        return clienteRepositorio.save(cliente);
    }
    
}
