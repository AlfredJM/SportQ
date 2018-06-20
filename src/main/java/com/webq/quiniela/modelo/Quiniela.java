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
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.data.annotation.CreatedDate;

@Entity
@Table(name = "quiniela")
public class Quiniela implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", nullable = true, unique = true)
	private Long id;
	@Column(name = "nombre")
	private String nombre;
	@Column(name="fecha_inicio")
	@Temporal(TemporalType.TIMESTAMP)
	private Date fechaInicio;
	@Column(name="fecha_final")
	@Temporal(TemporalType.TIMESTAMP)
	private Date fechaFinal;
	@Column(name = "administrador")
	private Long administrador;
	@Column(name = "estatus")
	private boolean estatus;
	@Column(name="fechayhora", nullable = false, updatable = false)
	@Temporal(TemporalType.TIMESTAMP)
	@CreatedDate
	private Date fechaYHora;
	@Column(name="esprivada")
	private boolean esPrivada;
	@OneToOne(cascade = CascadeType.ALL) //Unidireccional EAGER por defecto
	@JoinColumn(name = "quiniela_id")
	private Reglamento reglamento;
	@OneToMany(mappedBy = "quiniela")//Bidireccional LAZY por defecto
	private List<UsuarioQuiniela> usuarioQuinielas;
	
	public Quiniela(String nombre, Date fechaInicio, Date fechaFinal, Long administrador, boolean estatus, Date fechaYHora, boolean esPrivada, Reglamento reglamento, List<UsuarioQuiniela> usuarioQuinielas) {
		this.nombre = nombre;
		this.fechaInicio = fechaInicio;
		this.fechaFinal = fechaFinal;
		this.administrador = administrador;
		this.estatus = estatus;
		this.fechaYHora = fechaYHora;
		this.esPrivada = esPrivada;
		this.reglamento = reglamento;
		this.usuarioQuinielas = usuarioQuinielas;
	}

	public Quiniela() {}

	public Long getId() {
		return id;
	}

	public String getNombre() {
		return nombre;
	}

	public Date getFechaInicio() {
		return fechaInicio;
	}

	public Date getFechaFinal() {
		return fechaFinal;
	}

	public Long getAdministrador() {
		return administrador;
	}

	public boolean isEstatus() {
		return estatus;
	}

	public Date getFechaYHora() {
		return fechaYHora;
	}

	public boolean isEsPrivada() {
		return esPrivada;
	}

	public Reglamento getReglamento() {
		return reglamento;
	}

	public List<UsuarioQuiniela> getUsuarioQuinielas() {
		return usuarioQuinielas;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public void setFechaInicio(Date fechaInicio) {
		this.fechaInicio = fechaInicio;
	}

	public void setFechaFinal(Date fechaFinal) {
		this.fechaFinal = fechaFinal;
	}

	public void setAdministrador(Long administrador) {
		this.administrador = administrador;
	}

	public void setEstatus(boolean estatus) {
		this.estatus = estatus;
	}

	public void setFechaYHora(Date fechaYHora) {
		this.fechaYHora = fechaYHora;
	}

	public void setEsPrivada(boolean esPrivada) {
		this.esPrivada = esPrivada;
	}

	public void setReglamento(Reglamento reglamento) {
		this.reglamento = reglamento;
	}

	public void setUsuarioQuinielas(List<UsuarioQuiniela> usuarioQuinielas) {
		this.usuarioQuinielas = usuarioQuinielas;
	}
}
