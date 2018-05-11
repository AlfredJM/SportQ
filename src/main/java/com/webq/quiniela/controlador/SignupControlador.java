package com.webq.quiniela.controlador;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class SignupControlador {

	@GetMapping("signup")
	public String inicio() {
		return "signup";
	}
	
	@PostMapping("registro")
	public String registrodeusuario(Model  model) {
		
		return "signup";
	}
}
