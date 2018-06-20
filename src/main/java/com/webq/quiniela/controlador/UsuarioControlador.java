package com.webq.quiniela.controlador;

import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.webq.quiniela.dao.IUsuarioDAO;
import com.webq.quiniela.modelo.Usuario;
import com.webq.quiniela.servicio.IUsuarioServicio;

@Controller
public class UsuarioControlador {
	
	@Autowired
	private IUsuarioServicio usuarioServicio;
	
	@Autowired
	private IUsuarioDAO usuarioDao;

	@GetMapping(value = "/listar")
	public String listar(Model model) {
		
		model.addAttribute("titulo", "Listado de usuarios");
		model.addAttribute("usuarios", usuarioServicio.findAll());
		return "listar";
	}
	
	@PostMapping(value = "/registrar")
	public String crear(Model model) {
		Usuario usuario = new Usuario();
		return "login";
	}
	
	@GetMapping(value = "/listar/{id}")
	public String modificar(@PathVariable(value = "id") Long id, Map<String, Object> model) {
		
		Usuario usuario = null;
		
		if(id > 0) {
			usuario = usuarioDao.findById(id).orElse(null);
		} else {
			return "redirect:/listar";
		}
		model.put("usuario", usuario);
		
		return "listar";
	}
	
	@PostMapping(value = "/")
	public String guardar(@Valid Usuario usuario, BindingResult result, Model model) {
		if(result.hasErrors()) {
			
		}
		return "/listar";
	}
}
