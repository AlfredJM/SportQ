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

import org.springframework.data.annotation.CreatedDate;

@Entity
@Table(name = "solicitud")
public class Solicitud implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id",nullable = true)
	private Long id;
	
	@Column(name = "tipo")
	private String tipo;
	@Column(name = "emisor")
	private Long emisor;
	@Column(name = "receptor")
	private Long receptor;
	@Column(name = "mensaje")
	private String mensaje;
	@Column(name="fechayhora", nullable = false, updatable = false)
	@Temporal(TemporalType.TIMESTAMP)
	@CreatedDate
	private Date fechayhora;
	@Column(name = "estatus")
	private boolean estatus;
	
	@ManyToMany(mappedBy = "solicitudes")
	private List<Usuario> usuarios;

	public Solicitud(String tipo, Long emisor, Long receptor, String mensaje, Date fechayhora, boolean estatus, List<Usuario> usuarios) {
		this.tipo = tipo;
		this.emisor = emisor;
		this.receptor = receptor;
		this.mensaje = mensaje;
		this.fechayhora = fechayhora;
		this.estatus = estatus;
		this.usuarios = usuarios;
	}

	public Solicitud() {}

	public Long getId() {
		return id;
	}

	public String getTipo() {
		return tipo;
	}

	public Long getEmisor() {
		return emisor;
	}

	public Long getReceptor() {
		return receptor;
	}

	public String getMensaje() {
		return mensaje;
	}

	public Date getFechayhora() {
		return fechayhora;
	}

	public boolean getEstatus() {
		return estatus;
	}

	public List<Usuario> getUsuarios() {
		return usuarios;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public void setEmisor(Long emisor) {
		this.emisor = emisor;
	}

	public void setReceptor(Long receptor) {
		this.receptor = receptor;
	}

	public void setMensaje(String mensaje) {
		this.mensaje = mensaje;
	}

	public void setFechayhora(Date fechayhora) {
		this.fechayhora = fechayhora;
	}

	public void setEstatus(boolean estatus) {
		this.estatus = estatus;
	}

	public void setUsuarios(List<Usuario> usuarios) {
		this.usuarios = usuarios;
	}
}
