package com.webq.quiniela.modelo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name="usuario", schema="public")
@PrimaryKeyJoinColumn(name="id")
public class Usuario implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	@Column(name="id")	
	private int id;
	@Column(name="user")
	private String user;
	@Column(name="password")
	private String password;
	@Column(name="email")
	private String email;
	@Column(name="fecha_creacion")
	private String fecha_creacion;
	@Column(name="ultimo_acceso")
	private String ultimo_acceso;
	@Column(name="estatus")
	private char estatus;
	@ManyToOne
	@JoinColumn(name="rol")
	private Rol rol;

	public Usuario(String user, String password, String email, String fecha_creacion, String ultimo_acceso, char estatus, Rol rol) {
		super();
		this.user = user;
		this.password = password;
		this.email = email;
		this.fecha_creacion = fecha_creacion;
		this.ultimo_acceso = ultimo_acceso;
		this.estatus = estatus;
		this.rol = rol;
	}

	public Usuario() {}
	
	public int getId() {
		return id;
	}

	public String getUser() {
		return user;
	}

	public String getPassword() {
		return password;
	}

	public String getEmail() {
		return email;
	}

	public String getFecha_creacion() {
		return fecha_creacion;
	}

	public String getUltimo_acceso() {
		return ultimo_acceso;
	}
	
	public char getEstatus() {
		return estatus;
	}

	public Rol getRol() {
		return rol;
	}
	
	public void setId(int id) {
		this.id = id;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setFecha_creacion(String fecha_creacion) {
		this.fecha_creacion = fecha_creacion;
	}

	public void setUltimo_acceso(String ultimo_acceso) {
		this.ultimo_acceso = ultimo_acceso;
	}
	
	public void setEstatus(char estatus) {
		this.estatus = estatus;
	}

	public void setRol(Rol rol) {
		this.rol = rol;
	}
}
