package com.webq.quiniela.controlador;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class LoginControlador {

	@GetMapping("/signin")
	public String login(@RequestParam(value="error",required=false) String error,
			Model model, Principal principal, RedirectAttributes flash) {
		
		if(principal != null) {
			flash.addFlashAttribute("info", "Usted ya ha iniciado sesión");
			return "redirect:/";
		}
		if(error != null) {
			model.addAttribute("error", "Nombre de usuario o contraseña incorrecta");
		}
		return "signin";
	}
}
