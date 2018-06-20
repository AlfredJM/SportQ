package com.webq.quiniela.modelo;

import java.io.Serializable;
import java.util.Date;
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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.data.annotation.CreatedDate;

@Entity
@Table(name="juego")
public class Juego implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private Long id;
	@Column(name="score_final_a",nullable = true)
	private int scoreFinalA;
	@Column(name="score_final_b",nullable = true)
	private int scoreFinalB;
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="fechayhorajuego")
	private Date fechayHoraJuego;
	@Column(name="fechayhora", nullable = false, updatable = false)
	@Temporal(TemporalType.TIMESTAMP)
	@CreatedDate
	private Date fechayHora;
	@ManyToOne//Bidireccional LAZY por defecto
	@JoinColumn(name = "fase_id")
	private Fase fase;
	@OneToMany(mappedBy = "juego")//Bidireccional LAZY por defecto
	private List<Pronostico> pronosticos;
	
	public Juego(int scoreFinalA, int scoreFinalB, Date fechayHoraJuego, Date fechayHora, Fase fase, List<Pronostico> pronosticos) {
		this.scoreFinalA = scoreFinalA;
		this.scoreFinalB = scoreFinalB;
		this.fechayHoraJuego = fechayHoraJuego;
		this.fechayHora = fechayHora;
		this.fase = fase;
		this.pronosticos = pronosticos;
	}
	
	public Juego() {}

	public Long getId() {
		return id;
	}

	public int getScoreFinalA() {
		return scoreFinalA;
	}

	public int getScoreFinalB() {
		return scoreFinalB;
	}

	public Date getFechayHoraJuego() {
		return fechayHoraJuego;
	}

	public Date getFechayHora() {
		return fechayHora;
	}

	public Fase getFase() {
		return fase;
	}

	public List<Pronostico> getPronosticos() {
		return pronosticos;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void setScoreFinalA(int scoreFinalA) {
		this.scoreFinalA = scoreFinalA;
	}

	public void setScoreFinalB(int scoreFinalB) {
		this.scoreFinalB = scoreFinalB;
	}

	public void setFechayHoraJuego(Date fechayHoraJuego) {
		this.fechayHoraJuego = fechayHoraJuego;
	}

	public void setFechayHora(Date fechayHora) {
		this.fechayHora = fechayHora;
	}

	public void setFase(Fase fase) {
		this.fase = fase;
	}

	public void setPronosticos(List<Pronostico> pronosticos) {
		this.pronosticos = pronosticos;
	}
}
