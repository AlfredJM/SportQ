package com.webq.quiniela.modelo;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;
import org.springframework.data.annotation.CreatedDate;

@Entity
@Table(name = "acceso")
public class Acceso implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id",nullable = true)	
	private Long id;
	
	@Column(name="fechayhora", nullable = false, updatable = false)
	@Temporal(TemporalType.TIMESTAMP)
	@CreatedDate
	private Date fechayhora;
	
	@ManyToOne(fetch = FetchType.EAGER)//Bidireccional
	@JoinColumn(name = "usuario_id")
	@OnDelete(action = OnDeleteAction.CASCADE)
	private Usuario usuario;

	public Acceso(Date fechayhora, Usuario usuario) {
		this.fechayhora = fechayhora;
		this.usuario = usuario;
	}

	public Acceso() {}

	public Long getId() {
		return id;
	}

	public Date getFechayhora() {
		return fechayhora;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void setFechayhora(Date fechayhora) {
		this.fechayhora = fechayhora;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
}
