package com.udea.Reservas.modelo;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

@Entity
@Table(name = "tipos_habitaciones")
@XmlRootElement
public class TipoHabitacion implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "codigo_tipo")
    private String codigoTipo;
    @Column(name = "nombre")
    private String nombre;
    @Column(name = "descripcion1")
    private String descripcion1;
    @Column(name = "descripcion2")
    private String descripcio2;
    @Column(name = "numero_ba\u00f1os")
    private Integer numeroBanos;
    @Column(name = "numero_personas")
    private Integer numeroPersonas;
    @Column(name = "numero_camas")
    private Integer numeroCamas;
    @Column(name = "precio")
    private Integer precio;
    @JoinTable(name = "tipos_habitaciones_servicios", joinColumns = {
        @JoinColumn(name = "codigo_tipo", referencedColumnName = "codigo_tipo")}, inverseJoinColumns = {
        @JoinColumn(name = "codigo_servicio", referencedColumnName = "codigo_servicio")})
    @ManyToMany
    private Collection<Servicio> serviciosCollection;
    @Column(name = "url_imagen")
    private String urlImagen;

    public TipoHabitacion() {
    }

    public TipoHabitacion(String codigoTipo) {
        this.codigoTipo = codigoTipo;
    }

    public String getCodigoTipo() {
        return codigoTipo;
    }

    public void setCodigoTipo(String codigoTipo) {
        this.codigoTipo = codigoTipo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion1() {
        return descripcion1;
    }

    public void setDescripcion1(String descripcion1) {
        this.descripcion1 = descripcion1;
    }

    public String getDescripcio2() {
        return descripcio2;
    }

    public void setDescripcio2(String descripcio2) {
        this.descripcio2 = descripcio2;
    }

    public Integer getNumeroBanos() {
        return numeroBanos;
    }

    public void setNumeroBanos(Integer numeroBanos) {
        this.numeroBanos = numeroBanos;
    }

    public Integer getNumeroPersonas() {
        return numeroPersonas;
    }

    public void setNumeroPersonas(Integer numeroPersonas) {
        this.numeroPersonas = numeroPersonas;
    }

    public Integer getNumeroCamas() {
        return numeroCamas;
    }

    public void setNumeroCamas(Integer numeroCamas) {
        this.numeroCamas = numeroCamas;
    }

    public Integer getPrecio() {
        return precio;
    }

    public void setPrecio(Integer precio) {
        this.precio = precio;
    }

    @XmlTransient
    public Collection<Servicio> getServiciosCollection() {
        return serviciosCollection;
    }

    public void setServiciosCollection(Collection<Servicio> serviciosCollection) {
        this.serviciosCollection = serviciosCollection;
    }

    public String getUrlImagen() {
        return urlImagen;
    }

    public void setUrlImagen(String urlImagen) {
        this.urlImagen = urlImagen;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (codigoTipo != null ? codigoTipo.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof TipoHabitacion)) {
            return false;
        }
        TipoHabitacion other = (TipoHabitacion) object;
        if ((this.codigoTipo == null && other.codigoTipo != null) || (this.codigoTipo != null && !this.codigoTipo.equals(other.codigoTipo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.udea.modelo.TiposHabitaciones[ codigoTipo=" + codigoTipo + " ]";
    }

}
