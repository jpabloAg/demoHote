/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.udea.Reservas.Repositorio;

import com.udea.Reservas.modelo.Reserva;
import org.springframework.data.repository.CrudRepository;


public interface ReservasRepositorio extends CrudRepository<Reserva, Integer>{
    
}
