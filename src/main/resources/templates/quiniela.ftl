<!DOCTYPE html>
<html>
<head>
<#include"../includes/header">
<title>SportQ | Crear Quiniela</title>
</head>
<body>
	<#include"/includes/navbar.ftl">
	<div class="container">
		<h1>Crear Quiniela</h1>
		<form id="quiniela" action="crearquiniela" method=get>
			<div class="card border-primary	text-center">
				<div class="card-header">Datos de la quiniela</div>
				<div class="card-body">
					<div class="form-group">
						<label for="nombrequiniela">Nombre de la quiniela</label> <input
							type="text" id="nombrequiniela" class="form-control"
							placeholder="Nombre" required>
					</div>
					<div class="form-group">
						<label for="descripcionquiniela">Descripci&oacute;n</label> <input
							type="text" id="descripcionequiniela" class="form-control"
							placeholder="Agregue una descripción y/o reglas básicas" required>
					</div>
					<div class="form-group">
						<label for="inicioquiniela">Fecha de inicio</label> <input
							type="date" id="inicioquiniela" class="form-control"
							 required>
					</div>
					<div class="form-group">
						<label for="finquiniela">Fecha final</label> <input
							type="date" id="finquiniela" class="form-control"
							 required>
					</div>
				</div>


			</div>
		</form>
	</div>
</body>
</html>