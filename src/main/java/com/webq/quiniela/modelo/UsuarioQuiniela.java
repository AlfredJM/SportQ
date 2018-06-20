package com.webq.quiniela.modelo;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="usuario_quiniela")
public class UsuarioQuiniela implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private Long id;
	
	@ManyToOne//Bidireccional EAGER por defecto
	@JoinColumn(name = "usuario_id")
	private Usuario usuario;
	@ManyToOne//Bidireccional EAGER por defecto
	@JoinColumn(name = "quiniela_id")
	private Quiniela quiniela;

	@OneToMany(mappedBy = "usuarioQuiniela")//Bidireccional LAZY por defecto
	private List<Pronostico> pronosticos;

	public UsuarioQuiniela(Usuario usuario, Quiniela quiniela, List<Pronostico> pronosticos) {
		this.usuario = usuario;
		this.quiniela = quiniela;
		this.pronosticos = pronosticos;
	}

	public UsuarioQuiniela() {}

	public Long getId() {
		return id;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public Quiniela getQuiniela() {
		return quiniela;
	}

	public List<Pronostico> getPronosticos() {
		return pronosticos;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public void setQuiniela(Quiniela quiniela) {
		this.quiniela = quiniela;
	}

	public void setPronosticos(List<Pronostico> pronosticos) {
		this.pronosticos = pronosticos;
	}
}
