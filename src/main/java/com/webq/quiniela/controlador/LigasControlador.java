package com.webq.quiniela.controlador;

import java.util.ArrayList;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.webq.quiniela.modelo.Quiniela;

@Controller
public class LigasControlador {

	@GetMapping("/ligas")
		public String Mostrarquinielas(Model model, Authentication authentication) {
			if(authentication != null)
				model.addAttribute("autenticado", authentication.isAuthenticated());
			model.addAttribute("lista", this.lista());
			return "ligas";
		}
	
	@RequestMapping(value="/detalle")
	public String DetalleQuiniela(Model model, Authentication authentication) {
		if(authentication != null)
			model.addAttribute("autenticado", authentication.isAuthenticated());
		model.addAttribute("liga", this.lista());
		return "ligas";
	}

	public ArrayList<Quiniela> lista() {
		ArrayList<Quiniela> lista;
		lista = new ArrayList<>();

		return lista;
	}

}
