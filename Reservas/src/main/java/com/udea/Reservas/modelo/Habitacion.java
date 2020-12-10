
package com.udea.Reservas.modelo;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;


@Entity
@Table(name = "habitaciones")
@XmlRootElement
public class Habitacion implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "numero_habitacion")
    private String numeroHabitacion;
    @Column(name = "codigo_hotel")
    private String codigoHotel;
    @Column(name = "tipo_habitacion")
    private String tipoHabitacion;
    @OneToMany(mappedBy = "numeroHabitacion", fetch=FetchType.LAZY)
    private Collection<Reserva> reservasCollection;

    public Habitacion() {
    }

    public Habitacion(String numeroHabitacion) {
        this.numeroHabitacion = numeroHabitacion;
    }

    public String getNumeroHabitacion() {
        return numeroHabitacion;
    }

    public void setNumeroHabitacion(String numeroHabitacion) {
        this.numeroHabitacion = numeroHabitacion;
    }

    public String getCodigoHotel() {
        return codigoHotel;
    }

    public void setCodigoHotel(String codigoHotel) {
        this.codigoHotel = codigoHotel;
    }


    public String getTipoHabitacion() {
        return tipoHabitacion;
    }

    public void setTipoHabitacion(String tipoHabitacion) {
        this.tipoHabitacion = tipoHabitacion;
    }

    @XmlTransient
    public Collection<Reserva> getReservasCollection() {
        return reservasCollection;
    }

    public void setReservasCollection(Collection<Reserva> reservasCollection) {
        this.reservasCollection = reservasCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (numeroHabitacion != null ? numeroHabitacion.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Habitacion)) {
            return false;
        }
        Habitacion other = (Habitacion) object;
        if ((this.numeroHabitacion == null && other.numeroHabitacion != null) || (this.numeroHabitacion != null && !this.numeroHabitacion.equals(other.numeroHabitacion))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.udea.modelo.Habitaciones[ numeroHabitacion=" + numeroHabitacion + codigoHotel+ tipoHabitacion+" ]";
    }
    
}
