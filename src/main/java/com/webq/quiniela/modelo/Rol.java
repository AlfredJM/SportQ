package com.webq.quiniela.modelo;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name="rol", schema="public")
@PrimaryKeyJoinColumn(name="id")
public class Rol {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	@Column(name="id")
	private int id;
	@Column(name="nombre")
	private String nombre;
    @OneToMany(cascade= CascadeType.ALL, fetch=FetchType.EAGER)
    @JoinColumn(name="rol")
    private List<Usuario> usuarios;
	
	public Rol(String nombre) {
		super();
		this.nombre = nombre;
	}

	public Rol() {}

	public int getId() {
		return id;
	}

	public String getNombre() {
		return nombre;
	}

	public List<Usuario> getUsuarios() {
		return usuarios;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public void setUsuarios(List<Usuario> usuarios) {
		this.usuarios = usuarios;
	}
}
