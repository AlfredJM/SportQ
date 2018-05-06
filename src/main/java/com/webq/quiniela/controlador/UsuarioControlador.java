package com.webq.quiniela.controlador;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.webq.quiniela.dao.IUsuarioDAO;

@Controller
public class UsuarioControlador {

	@Autowired
	@Qualifier("clienteDaoJPA")
	private IUsuarioDAO usuarioDao;
	
	@GetMapping("/listar")
	public String listar(Model model) {
		model.addAttribute("titulo","Listado de Usuarios");
		model.addAttribute("clientes", usuarioDao.findAll());
		return "listar";
	}
	
}
