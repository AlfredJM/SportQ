package com.webq.quiniela.controlador;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DashboardControlador {

	@GetMapping({"/dashboard","/dashboard/index"})
	public String inicio() {
		
		return "dashboard";
	}
	
	@GetMapping("/dashboard/solicitudes")
	public String solicitudes() {
		
		return "dashboard";
	}
	
	@GetMapping("/dashboard/partidos")
	public String partidos() {
		
		return "dashboard";
	}
	
	@GetMapping("/dashboard/usuarios")
	public String soicitudes() {
		
		return "dashboard";
	}

	@GetMapping("/dashboard/reportes")
	public String reportes() {
		
		return "dashboard";
	}

	@GetMapping("/dashboard/integraciones")
	public String integraciones() {
		
		return "dashboard";
	}
}
