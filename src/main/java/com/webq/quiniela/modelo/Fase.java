package com.webq.quiniela.modelo;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.data.annotation.CreatedDate;

@Entity
@Table(name="fase")
public class Fase implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id",nullable = true)
	private Long id;
	
	@Column(name = "nombre")
	private String nombre;

	@ManyToMany//Bidireccional LAZY por defecto
	@JoinTable(name = "equipo_fase", joinColumns = @JoinColumn(name = "fase_id"), 
    inverseJoinColumns = @JoinColumn(name = "equipo_id"))
	private List<Equipo> equipos;

	@OneToMany(mappedBy = "fase")//Bidireccional LAZY por defecto
	private List<Juego> juegos;
	
	@Column(name="fechayhora", nullable = false, updatable = false)
	@Temporal(TemporalType.TIMESTAMP)
	@CreatedDate
	private Date fechayhora;

	public Fase(String nombre, List<Equipo> equipos, List<Juego> juegos, Date fechayhora) {
		this.nombre = nombre;
		this.equipos = equipos;
		this.juegos = juegos;
		this.fechayhora = fechayhora;
	}

	public Fase() {}

	public Long getId() {
		return id;
	}
	
	public String getNombre() {
		return nombre;
	}

	public List<Equipo> getEquipos() {
		return equipos;
	}

	public List<Juego> getJuegos() {
		return juegos;
	}

	public Date getFechayhora() {
		return fechayhora;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public void setEquipos(List<Equipo> equipos) {
		this.equipos = equipos;
	}

	public void setJuegos(List<Juego> juegos) {
		this.juegos = juegos;
	}

	public void setFechayhora(Date fechayhora) {
		this.fechayhora = fechayhora;
	}
}
