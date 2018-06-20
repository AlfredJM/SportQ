package com.webq.quiniela.modelo;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;

import org.springframework.data.annotation.CreatedDate;

@Entity
@Table(name = "disciplina", uniqueConstraints= {@UniqueConstraint(columnNames= {"id"})})
public class Disciplina implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id",nullable = true)
	private Long id;
	@Column(name = "nombre")
	private String nombre;
	@Column(name="estatus")
	private boolean estatus;
	@Column(name = "fechayhora", nullable = false, updatable = false)
	@Temporal(TemporalType.TIMESTAMP)
	@CreatedDate
	private Date fechayhora;
	
	@ManyToMany(cascade = CascadeType.ALL)//Bidireccional LAZY por defecto
	@JoinTable(name = "equipo_disciplina", joinColumns = @JoinColumn(name = "disciplina_id"), 
    inverseJoinColumns = @JoinColumn(name = "equipo_id"))
	private List<Equipo> equipos;
	
	public Disciplina(String nombre, boolean estatus, Date fechayhora, List<Equipo> equipos) {
		this.nombre = nombre;
		this.fechayhora = fechayhora;
		this.equipos = equipos;
		this.estatus = estatus;
	}

	public Disciplina() {}

	public Long getId() {
		return id;
	}

	public String getNombre() {
		return nombre;
	}
	
	public boolean getEstatus() {
		return estatus;
	}

	public Date getFechayhora() {
		return fechayhora;
	}

	public List<Equipo> getEquipos() {
		return equipos;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	public void setEstatus(boolean estatus) {
		this.estatus = estatus;
	}

	public void setFechayhora(Date fechayhora) {
		this.fechayhora = fechayhora;
	}

	public void setEquipos(List<Equipo> equipos) {
		this.equipos = equipos;
	}	
}