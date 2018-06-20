package com.webq.quiniela.servicio;

import java.util.List;

import com.webq.quiniela.modelo.Acceso;

public interface IAccesoServicio {

	public List<Acceso> findAll();

	public void save(Acceso acceso);

	public Acceso findOne(Long id);

	public void delete(Long id);
}
