package com.webq.quiniela.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.webq.quiniela.dao.IUsuarioDAO;
import com.webq.quiniela.modelo.Usuario;

@Service
public class UsuarioServicioImpl implements IUsuarioServicio{

	@Autowired
	private IUsuarioDAO usuarioDao;
	
	@Override
	public Usuario getUser(String user) {
		// TODO Auto-generated method stub
		return null;
	}
	//Para listar todos los usuarios
	@Override
	@Transactional(readOnly = true)
	public List<Usuario> findAll() {
		return (List<Usuario>) usuarioDao.findAll(); 
	}
	//Para guardar un usuario
	@Override
	@Transactional
	public void save(Usuario usuario) {
		usuarioDao.save(usuario);
	}
	//Para encontrar un usuario por su ID
	@Override
	@Transactional(readOnly = true)
	public Usuario findOne(Long id) {
		return usuarioDao.findById(id).orElse(null);
	}
	//Para borrar un usuario por su ID
	@Override
	@Transactional
	public void delete(Long id) {
		usuarioDao.deleteById(id);
	}
}
