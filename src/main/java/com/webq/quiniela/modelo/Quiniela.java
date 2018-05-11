package com.webq.quiniela.modelo;

import java.security.Timestamp;


public class Quiniela {


		private int id;
		
		private String descripcion;
		private String reglamento;
		private String torneo;
		private int id_deporte;
		private String status;
		private int iduser;
		private Timestamp fechainicio;
		private Timestamp fechafinal;
	
		public Quiniela() {
			super();
		}


	 	public Quiniela(int id, String descripcion, String reglamento, String torneo, int id_deporte, String status,
			int iduser, Timestamp fechainicio, Timestamp fechafinal) {
		super();
		this.id = id;
		this.descripcion = descripcion;
		this.reglamento = reglamento;
		this.torneo = torneo;
		this.id_deporte = id_deporte;
		this.status = status;
		this.iduser = iduser;
		this.fechainicio = fechainicio;
		this.fechafinal = fechafinal;
	}
	 	
	 	public Quiniela(int id, String descripcion, String reglamento, String torneo) {
			super();
			this.id = id;
			this.descripcion = descripcion;
			this.reglamento = reglamento;
			this.torneo = torneo;
		}

		public int getIduser() {
			return iduser;
		}

		public void setIduser(int iduser) {
			this.iduser = iduser;
		}


		public Timestamp getFechainicio() {
			return fechainicio;
		}


		public void setFechainicio(Timestamp fechainicio) {
			this.fechainicio = fechainicio;
		}


		public Timestamp getFechafinal() {
			return fechafinal;
		}

		public void setFechafinal(Timestamp fechafinal) {
			this.fechafinal = fechafinal;
		}


		public String getStatus() {
			return status;
		}
		
		public void setStatus(String status) {
			this.status = status;
		}

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getTorneo() {
			return torneo;
		}

		public void setTorneo(String torneo) {
			this.torneo = torneo;
		}


		public int getId_deporte() {
			return id_deporte;
		}

		public void setId_deporte(int id_deporte) {
			this.id_deporte = id_deporte;
		}

		public String getDescripcion() {
			return descripcion;
		}

		public void setDescripcion(String descripcion) {
			this.descripcion = descripcion;
		}

		public String getReglamento() {
			return reglamento;
		}

		public void setReglamento(String reglamento) {
			this.reglamento = reglamento;
		}
		 
}
