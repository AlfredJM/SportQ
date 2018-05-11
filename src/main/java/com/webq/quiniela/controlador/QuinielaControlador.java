package com.webq.quiniela.controlador;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class QuinielaControlador {

	@GetMapping("/crearquiniela")
	public String crearquiniela(Model model) {
		return "crearquiniela";
	}
}
