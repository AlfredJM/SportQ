package com.webq.quiniela.modelo;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;

import org.springframework.data.annotation.CreatedDate;

@Entity
@Table(name="equipo", uniqueConstraints= {@UniqueConstraint(columnNames= {"id","nombre"})})
public class Equipo implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", nullable = true, unique = true)
	private Long id;
	@Column(name = "nombre")
	private String nombre;
	@Column(name="fechayhora", nullable = false, updatable = false)
	@Temporal(TemporalType.TIMESTAMP)
	@CreatedDate
	private Date fechayhora;
	@Column(name = "estatus")
	private boolean estatus; 
	
	@Column(name = "logo")
	private String logo;
	
	@ManyToMany(mappedBy = "equipos") //Bidireccional LAZY por defecto
	private List<Disciplina> disciplinas;
	
	@ManyToMany(mappedBy = "equipos") //LAZY por defecto
    private List<Fase> fases;

	public Equipo(String nombre, Date fechayhora, boolean estatus, String logo, List<Disciplina> disciplinas, List<Fase> fases) {
		this.nombre = nombre;
		this.fechayhora = fechayhora;
		this.estatus = estatus;
		this.logo = logo;
		this.disciplinas = disciplinas;
		this.fases = fases;
	}

	public Equipo() {}

	public Long getId() {
		return id;
	}

	public String getNombre() {
		return nombre;
	}

	public Date getFechayhora() {
		return fechayhora;
	}
	
	public boolean getEstatus() {
		return estatus;
	}

	public String getLogo() {
		return logo;
	}

	public List<Disciplina> getDisciplinas() {
		return disciplinas;
	}

	public List<Fase> getFases() {
		return fases;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public void setFechayhora(Date fechayhora) {
		this.fechayhora = fechayhora;
	}
	
	public void setEstatus(boolean estatus) {
		this.estatus = estatus;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public void setDisciplinas(List<Disciplina> disciplinas) {
		this.disciplinas = disciplinas;
	}

	public void setFases(List<Fase> fases) {
		this.fases = fases;
	}
}
