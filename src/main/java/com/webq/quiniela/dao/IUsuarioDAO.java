package com.webq.quiniela.dao;

import java.util.List;

import com.webq.quiniela.modelo.Usuario;

public interface IUsuarioDAO {
	
	public List<Usuario> findAll();
}
