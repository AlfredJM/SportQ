package com.webq.quiniela.controlador;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexControlador {
	
	@GetMapping({"/","/index","/home"})
	public String inicio(Model model, Authentication authentication) {
		
		//Para validar los botones login y logout
		if(authentication != null)
			model.addAttribute("autenticado", authentication.isAuthenticated());
		
		return "index";
	}
}