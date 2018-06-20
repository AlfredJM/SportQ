package com.webq.quiniela.servicio;

import java.util.List;

import com.webq.quiniela.modelo.Usuario;

public interface IUsuarioServicio {
	
	public Usuario getUser(String user);

	
	public List<Usuario> findAll();

	public void save(Usuario usuario);

	public Usuario findOne(Long id);

	public void delete(Long id);
	
}