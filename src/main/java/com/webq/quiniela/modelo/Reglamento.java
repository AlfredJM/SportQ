package com.webq.quiniela.modelo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "reglamento")
public class Reglamento {

	@Id
	@Column(name = "quiniela_id", unique = true)
	private Long id;
	@Column(name = "descripcion")
	private String descripcion;
	@Column(name = "puntaje_score")
	private int puntajeScore;
	@Column(name = "puntaje_ganador")
	private int puntajeGanador;
	@Column(name = "puntaje_empate")
	private int puntajeEmpate;
	
	public Reglamento(String descripcion, int puntajeScore, int puntajeGanador, int puntajeEmpate) {
		this.descripcion = descripcion;
		this.puntajeScore = puntajeScore;
		this.puntajeGanador = puntajeGanador;
		this.puntajeEmpate = puntajeEmpate;
	}

	public Reglamento() {}

	public Long getId() {
		return id;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public int getPuntajeScore() {
		return puntajeScore;
	}

	public int getPuntajeGanador() {
		return puntajeGanador;
	}

	public int getPuntajeEmpate() {
		return puntajeEmpate;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public void setPuntajeScore(int puntajeScore) {
		this.puntajeScore = puntajeScore;
	}

	public void setPuntajeGanador(int puntajeGanador) {
		this.puntajeGanador = puntajeGanador;
	}

	public void setPuntajeEmpate(int puntajeEmpate) {
		this.puntajeEmpate = puntajeEmpate;
	}
}
