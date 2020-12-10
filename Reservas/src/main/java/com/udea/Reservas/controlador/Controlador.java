package com.udea.Reservas.controlador;

import com.udea.Reservas.Service.ClienteServiceInterfaz;
import com.udea.Reservas.Service.HabitacionServiceInterfaz;
import com.udea.Reservas.modelo.TipoHabitacion;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.udea.Reservas.Service.TipoHabitacionServiceInterfaz;
import com.udea.Reservas.modelo.Cliente;
import com.udea.Reservas.modelo.Reserva;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import com.udea.Reservas.Service.ReservaServiceInterfaz;
import org.springframework.web.bind.annotation.DeleteMapping;

@CrossOrigin(origins = "http://localhost:4200", maxAge = 3600)
@RestController
@RequestMapping({"/tiposHabitaciones"})
public class Controlador {

    @Autowired
    TipoHabitacionServiceInterfaz tipoHabitacionService;
    @Autowired
    HabitacionServiceInterfaz habitacionService;
    @Autowired
    ClienteServiceInterfaz clientesSerive;
    @Autowired
    ReservaServiceInterfaz reservaService;

    @GetMapping()
    public List<TipoHabitacion> listar() {
        return tipoHabitacionService.listar();
    }

    @GetMapping("/buscar")
    public TipoHabitacion buscarTipoH(@RequestParam(name = "codigo") String codigo) {
        return tipoHabitacionService.buscarTipoH(codigo);
    }

    @GetMapping("/comprobar")
    public String ComprobarDisponibilidad(@RequestParam(name = "tipoHab") String tipoHab, @RequestParam(name = "fechaI") String fechaI, @RequestParam(name = "fechaS") String fechaS) {
        return habitacionService.comprobarDisponibilidad(tipoHab, fechaI, fechaS);
    }

    @PostMapping("/cliente")
    public Cliente registrarCliente(@RequestBody Cliente cliente) {
        System.out.println(cliente.toString());
        return clientesSerive.GuardarCliente(cliente);

    }

    @GetMapping("/reserva")
    public Reserva BuscarReserva(@RequestParam(name = "codigo") int codigo) {
        return reservaService.buscarReserva(codigo);

    }

    @PostMapping("/reserva")
    public Reserva RegistrarReserva(@RequestBody Reserva reservas) {
        return reservaService.guardarReserva(reservas);

    }

    @DeleteMapping("/reserva")
    public void eliminarReserva(@RequestParam(name = "codigo") int codigo) {
        reservaService.eliminarReserva(codigo);
    }

}
