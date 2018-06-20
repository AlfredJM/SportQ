package com.webq.quiniela.modelo;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.data.annotation.CreatedDate;

@Entity
@Table(name="pronostico")
public class Pronostico implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id",nullable = true)
	private Long id;
	
	//llave foranea desde usuario_quiniela
	@ManyToOne //EAGER por defecto
	@JoinColumn(name = "usuario_quiniela_id")
	private UsuarioQuiniela usuarioQuiniela;
	
	@Column(name = "pronostico_a")
	private int pronosticoA;
	@Column(name = "pronostico_b")
	private int pronosticoB;
	@Column(name = "ganador")
	private String ganador;
	@Column(name="fechayhora", nullable = false, updatable = false)
	@Temporal(TemporalType.TIMESTAMP)
	@CreatedDate
	private Date fechayHora;
	
	@ManyToOne //Bidireccional EAGER por defecto
	@JoinColumn(name = "juego_id")
	private Juego juego;

	public Pronostico(UsuarioQuiniela usuarioQuiniela, int pronosticoA, int pronosticoB, String ganador, Date fechayHora, Juego juego) {
		this.usuarioQuiniela = usuarioQuiniela;
		this.pronosticoA = pronosticoA;
		this.pronosticoB = pronosticoB;
		this.ganador = ganador;
		this.fechayHora = fechayHora;
		this.juego = juego;
	}

	public Pronostico() {}

	public Long getId() {
		return id;
	}

	public UsuarioQuiniela getUsuarioQuiniela() {
		return usuarioQuiniela;
	}

	public int getPronosticoA() {
		return pronosticoA;
	}

	public int getPronosticoB() {
		return pronosticoB;
	}

	public String getGanador() {
		return ganador;
	}

	public Date getFechayHora() {
		return fechayHora;
	}

	public Juego getJuego() {
		return juego;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void setUsuarioQuiniela(UsuarioQuiniela usuarioQuiniela) {
		this.usuarioQuiniela = usuarioQuiniela;
	}

	public void setPronosticoA(int pronosticoA) {
		this.pronosticoA = pronosticoA;
	}

	public void setPronosticoB(int pronosticoB) {
		this.pronosticoB = pronosticoB;
	}

	public void setGanador(String ganador) {
		this.ganador = ganador;
	}

	public void setFechayHora(Date fechayHora) {
		this.fechayHora = fechayHora;
	}

	public void setJuego(Juego juego) {
		this.juego = juego;
	}
}
