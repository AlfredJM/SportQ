package com.webq.quiniela.modelo;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
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
import javax.persistence.UniqueConstraint;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;

@Entity
@Table(name="usuario", uniqueConstraints= {@UniqueConstraint(columnNames= {"username", "email"})})
public class Usuario implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private Long id;
	
	@Column(name="username")
	private String username;
	@Column(name="clave")
	private String clave;
	@Column(name="email")
	private String email;
	@Column(name="fecha_creacion", nullable = false, updatable = false)
	@Temporal(TemporalType.TIMESTAMP)
	@CreatedDate
	private Date fechaCreacion;
	@Column(name="ultimo_acceso")
	@Temporal(TemporalType.TIMESTAMP)
	@LastModifiedDate
	private Date ultimoAcceso;
	@Column(name="estatus")
	private boolean estatus;
	
	@OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL) //Unidireccional
	@JoinColumn(name = "usuario_id")
	private List<Rol> roles;
	
	@OneToMany(mappedBy = "usuario", cascade = CascadeType.ALL) //Bidireccional LAZY por defecto
	private List<Acceso> accesos;
	
	@OneToMany(mappedBy = "usuario", cascade = CascadeType.ALL)//Bidireccional LAZY por defecto
    private List<UsuarioQuiniela> usuarioQuinielas;
	
	@ManyToMany//Bidireccional LAZY por defecto
	@JoinTable(name = "solicitud_usuario", joinColumns = @JoinColumn(name = "usuario_id"), 
    inverseJoinColumns = @JoinColumn(name = "solicitud_id"))
	private List<Solicitud> solicitudes;

	public Usuario(String username, String clave, String email, Date fechaCreacion, Date ultimoAcceso,	boolean estatus, List<Rol> roles, List<Acceso> accesos, List<UsuarioQuiniela> usuarioQuinielas, List<Solicitud> solicitudes) {
		this.username = username;
		this.clave = clave;
		this.email = email;
		this.fechaCreacion = fechaCreacion;
		this.ultimoAcceso = ultimoAcceso;
		this.estatus = estatus;
		this.roles = roles;
		this.accesos = accesos;
		this.usuarioQuinielas = usuarioQuinielas;
		this.solicitudes = solicitudes;
	}

	public Usuario() {}

	public Long getId() {
		return id;
	}

	public String getUsername() {
		return username;
	}

	public String getClave() {
		return clave;
	}

	public String getEmail() {
		return email;
	}

	public Date getFechaCreacion() {
		return fechaCreacion;
	}

	public Date getUltimoAcceso() {
		return ultimoAcceso;
	}

	public boolean getEstatus() {
		return estatus;
	}

	public List<Rol> getRoles() {
		return roles;
	}

	public List<Acceso> getAccesos() {
		return accesos;
	}

	public List<UsuarioQuiniela> getUsuarioQuinielas() {
		return usuarioQuinielas;
	}

	public List<Solicitud> getSolicitudes() {
		return solicitudes;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public void setClave(String clave) {
		this.clave = clave;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setFechaCreacion(Date fechaCreacion) {
		this.fechaCreacion = fechaCreacion;
	}

	public void setUltimoAcceso(Date ultimoAcceso) {
		this.ultimoAcceso = ultimoAcceso;
	}

	public void setEstatus(boolean estatus) {
		this.estatus = estatus;
	}

	public void setRoles(List<Rol> roles) {
		this.roles = roles;
	}

	public void setAccesos(List<Acceso> accesos) {
		this.accesos = accesos;
	}

	public void setUsuarioQuinielas(List<UsuarioQuiniela> usuarioQuinielas) {
		this.usuarioQuinielas = usuarioQuinielas;
	}

	public void setSolicitudes(List<Solicitud> solicitudes) {
		this.solicitudes = solicitudes;
	}
}
