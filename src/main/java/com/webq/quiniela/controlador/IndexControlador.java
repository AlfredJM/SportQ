package com.webq.quiniela.controlador;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexControlador {
	
	@GetMapping({"/","/index","/home"})
	public String inicio(Model model) {
		model.addAttribute("saludo","Hello!!");
		return "index";
	}
}