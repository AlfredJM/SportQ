package com.webq.quiniela.dao;

import org.springframework.data.repository.CrudRepository;

import com.webq.quiniela.modelo.Usuario;

public interface IUsuarioDAO extends CrudRepository<Usuario, Long>{

	//Para encontrar el usuario por su username
    public Usuario findByUsername(String username);
}
