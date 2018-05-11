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

		String reglamento = "Puntuacion: 10 puntos por acertar el el resultado final, 5 puntos al acertar el score de un equipo ";
		lista.add(new Quiniela(1, "La Quiniela del Mundial", reglamento, "Futbol"));
		lista.add(new Quiniela(2, "Champions League", reglamento, "Futbol"));
		lista.add(new Quiniela(3, "NBA Action", reglamento, "Baloncesto"));

		return lista;
	}

}
