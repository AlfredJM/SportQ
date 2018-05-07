package com.webq.quiniela.controlador;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class IndexControlador {
	
	@GetMapping("/")
	public String inicio(Model model) {
		model.addAttribute("saludo","Hello!!");
		return "index";
	}
	@GetMapping("/quiniela")
	public String quiniela(Model model) {
		return "crearquiniela";
	}
}